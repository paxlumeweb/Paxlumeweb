#!/usr/bin/env bash
# Builds the public website into dist/ for Cloudflare Pages.
#
# Only files on the allowlist below are copied, so internal files in this repo
# (HANDOFF.md, README.md, CLOUDFLARE.md, starter-template/, scripts/, .git...)
# are never served by Cloudflare. GitHub Pages is NOT affected by this script:
# it still serves the repo root as before.
#
# Run locally:   bash scripts/build-site.sh     (then open dist/index.html)
#
# Settings (Cloudflare dashboard > project > Settings > Variables, all optional):
#   PAXLUME_INDEXABLE=yes   Let search engines index the Cloudflare copy.
#                           Default: every response gets "X-Robots-Tag: noindex",
#                           so the Cloudflare copy can't compete with GitHub Pages.
#                           Only set this when Ben approves the switch.
#   PAXLUME_SITE_URL=...    Final public address, e.g. https://paxlumeweb.pages.dev/
#                           Rewrites canonical, Open Graph, sitemap and robots URLs
#                           from the GitHub Pages address to this one. Only set it
#                           at switch time (see CLOUDFLARE.md, step 5).
# Cloudflare sets these itself during a build:
#   CF_PAGES_BRANCH         Branch being built. Anything other than "main" is a
#                           preview: the quote form is switched off there (visitors
#                           see the email fallback) so previews never send enquiries
#                           or trigger FormSubmit activation emails.
#   CF_PAGES_URL            This deployment's own address, used for the no-JavaScript
#                           form's thank-you redirect on main builds.
set -euo pipefail

cd "$(dirname "$0")/.."
OUT=dist
GH_URL="https://paxlumeweb.github.io/Paxlumeweb/"

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
if [ "$BRANCH" = "main" ]; then
  # Keep no-JavaScript form visitors on the same host after sending.
  if [ -n "${CF_PAGES_URL:-}" ] && [ -z "${PAXLUME_SITE_URL:-}" ]; then
    sed -i "s#name=\"_next\" value=\"${GH_URL}thank-you.html\"#name=\"_next\" value=\"${CF_PAGES_URL%/}/thank-you.html\"#" "$OUT/index.html"
  fi
else
  # Preview (or local) build: switch the quote form off.
  sed -i 's#data-form-active="true"#data-form-active="false"#' "$OUT/index.html"
  echo "Preview build ($BRANCH): quote form switched off, visitors see the email fallback."
fi

if [ -n "${PAXLUME_SITE_URL:-}" ]; then
  SITE="${PAXLUME_SITE_URL%/}/"
  case "$SITE" in https://*) ;; *) fail "PAXLUME_SITE_URL must start with https://" ;; esac
  grep -rl "$GH_URL" "$OUT" --include=*.html --include=*.xml --include=*.txt | xargs -r sed -i "s#${GH_URL}#${SITE}#g"
  echo "Public URLs rewritten to $SITE"
fi

# ---- 3. Cloudflare _headers ----------------------------------------------------
# Cloudflare already adds noindex to preview URLs. This also covers the
# production *.pages.dev address until Ben approves the switch.
if [ "${PAXLUME_INDEXABLE:-}" = "yes" ]; then
  echo "Indexable build: search engines may index this deployment."
else
  printf '/*\n  X-Robots-Tag: noindex\n' > "$OUT/_headers"
  echo "Staging build: every page is sent with X-Robots-Tag: noindex."
fi

# ---- 3b. Security headers (every Cloudflare build) -----------------------------
# The site is static: its own CSS/JS/fonts/images, plus the quote form, which
# posts to FormSubmit (fetch for JS visitors, a normal POST without JS).
# 'unsafe-inline' for styles only: the three demo pages use a <style> block.
# No inline scripts exist, so scripts stay 'self' only. If you add a third-party
# script, font, image host or form service, add it here or it will be blocked.
CSP="default-src 'self'; script-src 'self'; style-src 'self' 'unsafe-inline'; img-src 'self' data:; font-src 'self'; connect-src 'self' https://formsubmit.co; form-action 'self' https://formsubmit.co; frame-ancestors 'none'; base-uri 'self'; object-src 'none'; upgrade-insecure-requests"
{
  printf '/*\n'
  printf '  Content-Security-Policy: %s\n' "$CSP"
  printf '  X-Content-Type-Options: nosniff\n'
  printf '  X-Frame-Options: DENY\n'
  printf '  Referrer-Policy: strict-origin-when-cross-origin\n'
  printf '  Permissions-Policy: camera=(), microphone=(), geolocation=(), payment=(), usb=()\n'
  printf '  Strict-Transport-Security: max-age=15552000\n'
} >> "$OUT/_headers"
echo "Security headers added to _headers."

# ---- 4. Safety checks ----------------------------------------------------------
for bad in HANDOFF.md README.md CLOUDFLARE.md starter-template scripts .git .nojekyll _config.yml; do
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
