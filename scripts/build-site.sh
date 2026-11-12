#!/usr/bin/env bash
# Builds the public website into dist/ for Cloudflare (Workers or Pages).
#
# Only files on the allowlist below are copied, so internal files in this repo
# (HANDOFF.md, README.md, CLOUDFLARE.md, starter-template/, scripts/, .git...)
# are never served by Cloudflare. GitHub Pages is NOT affected by this script:
# it still serves the repo root.
#
# Run locally:   bash scripts/build-site.sh     (then open dist/index.html)
#
# Branches (Cloudflare sets CF_PAGES_BRANCH or WORKERS_CI_BRANCH during a build):
#   main        Production (https://paxlume.net). Indexable, quote form on.
#   any other   Preview. Every page gets "X-Robots-Tag: noindex" and the quote
#               form is switched off (visitors see the email fallback), so previews
#               never compete in search, send enquiries or trigger FormSubmit
#               activation emails.
# Optional setting (Cloudflare > Worker > Settings > Build > Variables):
#   PAXLUME_INDEXABLE=no    Emergency switch: noindex production too.
set -euo pipefail

cd "$(dirname "$0")/.."
OUT=dist

# ---- 1. The allowlist: everything the public site needs, nothing else --------
PAGES="index.html greenedge.html shineworks.html brightpath.html privacy.html terms.html refunds.html thank-you.html 404.html"
ASSETS="style.css home.css script.js favicon.svg og-image.png robots.txt sitemap.xml"
DIRS="fonts"

fail() { echo "BUILD FAILED: $*" >&2; exit 1; }

# Catch a new page or asset that someone forgot to add to the allowlist.
for f in *.html *.css *.js *.png *.jpg *.jpeg *.webp *.svg *.ico *.txt *.xml; do
  [ -e "$f" ] || continue
  case " $PAGES $ASSETS " in *" $f "*) ;; *) fail "'$f' is in the repo root but not on the allowlist in scripts/build-site.sh. Add it to PAGES or ASSETS (if it should be public) and rebuild." ;; esac
done

rm -rf "$OUT"
mkdir -p "$OUT"
for f in $PAGES $ASSETS; do
  [ -f "$f" ] || fail "allowlisted file '$f' is missing"
  cp "$f" "$OUT/"
done
for d in $DIRS; do
  [ -d "$d" ] || fail "allowlisted folder '$d' is missing"
  cp -R "$d" "$OUT/"
done

# ---- 2. Host fixes for Cloudflare (source files stay as GitHub Pages needs) -
# 404.html uses /Paxlumeweb/ paths for GitHub Pages; on Cloudflare the site is
# at the domain root, so point them at /.
sed -i 's#="/Paxlumeweb/#="/#g' "$OUT/404.html"

# Pages sets CF_PAGES_BRANCH; Workers Builds sets WORKERS_CI_BRANCH.
BRANCH="${CF_PAGES_BRANCH:-${WORKERS_CI_BRANCH:-local}}"
if [ "$BRANCH" != "main" ]; then
  sed -i 's#data-form-active="true"#data-form-active="false"#' "$OUT/index.html"
  echo "Preview build ($BRANCH): quote form switched off, visitors see the email fallback."
fi

# ---- 3. Cloudflare _headers ----------------------------------------------------
if [ "$BRANCH" = "main" ] && [ "${PAXLUME_INDEXABLE:-}" != "no" ]; then
  echo "Production build: search engines may index this deployment."
else
  printf '/*\n  X-Robots-Tag: noindex\n' > "$OUT/_headers"
  echo "Preview/noindex build: every page is sent with X-Robots-Tag: noindex."
fi

# ---- 4. Safety checks ----------------------------------------------------------
for bad in HANDOFF.md README.md CLOUDFLARE.md starter-template scripts .git .nojekyll; do
  [ ! -e "$OUT/$bad" ] || fail "internal file '$bad' ended up in $OUT"
done
if find "$OUT" -name '*.md' | grep -q .; then fail "a Markdown file ended up in $OUT"; fi

# Every local href/src/url() in the built pages must point at a built file.
missing=0
for page in "$OUT"/*.html "$OUT"/*.css; do
  while IFS= read -r ref; do
    case "$ref" in http*|mailto:*|tel:*|data:*|\#*|"") continue ;; esac
    path="${ref%%#*}"; path="${path%%\?*}"
    [ -n "$path" ] || continue
    case "$path" in /*) target="$OUT$path" ;; *) target="$OUT/$path" ;; esac
    case "$target" in */) target="${target}index.html" ;; esac
    if [ ! -e "$target" ]; then echo "  broken link in ${page#$OUT/}: $ref" >&2; missing=1; fi
  done < <(grep -oE '(href|src)="[^"]*"|url\([^)]*\)' "$page" | sed -E 's/^(href|src)="//; s/"$//; s/^url\(//; s/\)$//; s/^["'\'']//; s/["'\'']$//' || true)
done
[ "$missing" = 0 ] || fail "broken local links (listed above)"

echo "Built $(find "$OUT" -type f | wc -l | tr -d ' ') files into $OUT/ (branch: $BRANCH)"
