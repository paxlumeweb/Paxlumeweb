# Cloudflare Pages deployment (staging)

This is how the Paxlume website deploys to Cloudflare Pages automatically from GitHub.
It runs **alongside** GitHub Pages. Nothing here changes the public site at
<https://paxlumeweb.github.io/Paxlumeweb/>, its canonical URLs, its form or its sitemap.
Switching the public address to Cloudflare is a separate step that needs Ben's approval (step 5).

This file is not part of the website: the build never copies it.

## How it works

| What happens | Result |
|---|---|
| A commit lands on `main` | Cloudflare builds and updates the **production** address, `https://<project>.pages.dev` (staging until the switch) |
| A commit is pushed to any other branch, or a PR is opened | Cloudflare builds a **preview** at `https://<branch>.<project>.pages.dev` and posts a check on the commit/PR |
| A build fails | The last good deployment stays live. Nothing breaks |

**Build:** no framework, no dependencies. `bash scripts/build-site.sh` copies an
**allowlist** of public files into `dist/`, and Cloudflare serves only `dist/`.

- Served: the 9 pages (`index`, the 3 fictional demos, `privacy`, `terms`, `refunds`, `thank-you`, `404`), `style.css`, `home.css`, `script.js`, `favicon.svg`, `og-image.png`, `robots.txt`, `sitemap.xml`, `fonts/`.
- Never served: `HANDOFF.md`, `README.md`, `CLOUDFLARE.md`, `starter-template/`, `scripts/`, `.git`, `.nojekyll`, `.gitignore`, and anything else not on the list.
- The build **fails** if an internal file ends up in `dist/`, if a local link or asset is broken, or if a new page/asset is added to the repo root without being added to the allowlist. A failed build never replaces a working deployment.

**What the build changes in `dist/` only** (the source files stay exactly as GitHub Pages needs them):

1. `404.html`: `/Paxlumeweb/...` links become `/...`, because on Cloudflare the site sits at the domain root.
2. Search engines: every response gets `X-Robots-Tag: noindex` (via a generated `_headers` file). Cloudflare already does this for previews; this also covers the production `pages.dev` address so it can't compete with GitHub Pages. Canonical tags still point to GitHub Pages as a second safeguard.
3. Quote form on **previews**: switched off (`data-form-active="false"`). Visitors see the "please email" fallback. This stops previews sending enquiries and stops every new preview address triggering a FormSubmit activation email.
4. Quote form on **main**: left on. The no-JavaScript thank-you redirect (`_next`) points at the Cloudflare deployment instead of GitHub Pages.

Optional settings (Cloudflare project > Settings > Variables and Secrets). **Leave both unset until the switch:**

| Variable | Effect |
|---|---|
| `PAXLUME_INDEXABLE=yes` | Removes the noindex header |
| `PAXLUME_SITE_URL=https://...` | Rewrites canonical, Open Graph, sitemap, robots and form redirect URLs to this address |

Run it yourself: `bash scripts/build-site.sh`, then open `dist/index.html`. A local build behaves like a preview (form off).

## Cost and limits

Cloudflare Pages Free plan: A$0, no payment details needed. If Cloudflare ever asks for a card, stop and ask.
Limits (developers.cloudflare.com/pages/platform/limits, checked 2026-11-12): 500 builds a month, 1 build at a time,
20,000 files, 25 MiB per file, 20-minute build timeout, unlimited previews. This site builds in seconds with 21 files.

## Step 1. Ben connects Cloudflare to GitHub (needs Ben's hands, about 5 minutes)

Do this with a parent or guardian, since it accepts Cloudflare's and GitHub's terms. Never paste a password, code or token into chat or GitHub. Leave the practice project `paxlume-hosting-test` as it is: a Direct Upload project can't be converted, so this creates a new one.

1. Sign in at <https://dash.cloudflare.com>. In the left menu choose **Workers & Pages** (under Compute).
2. Choose **Create application**, then the **Pages** tab, then **Connect to Git** (it may say **Import an existing Git repository**).
3. Choose **GitHub**, then **Add account**. GitHub opens and asks where to install **Cloudflare Workers and Pages**.
   - Pick the **paxlumeweb** account.
   - Choose **Only select repositories** and select **paxlumeweb/Paxlumeweb** only. Do not choose "All repositories".
   - Choose **Install & Authorize**. You're sent back to Cloudflare.
4. Select **Paxlumeweb** and choose **Begin setup**.
5. Fill in:
   - **Project name:** `paxlumeweb` (gives `paxlumeweb.pages.dev`; if taken, use `paxlume-web-studio`)
   - **Production branch:** `main`
   - **Framework preset:** `None`
   - **Build command:** `bash scripts/build-site.sh`
   - **Build output directory:** `dist`
   - **Root directory:** leave blank. **Environment variables:** add none.
6. Choose **Save and Deploy**.
   - If this PR isn't merged yet, this first build of `main` **fails** because `main` doesn't have the build script. That is expected and harmless: nothing is published and GitHub Pages is untouched.
7. Tell Claude "Cloudflare is connected" and the project's `pages.dev` address. Nothing else is needed: no tokens, no screenshots of settings pages.

## Step 2. Preview review (Claude, then Ben)

1. Claude pushes a commit to the PR branch. Cloudflare builds it and adds a preview link to the PR's checks.
2. Claude checks the preview: all 9 pages, the 3 fictional labels, fonts, 404 on a made-up address, noindex header, `/HANDOFF.md`, `/README.md` and `/starter-template/` returning 404, the form showing the email fallback.
3. Ben opens the preview link on a phone and a computer.

## Step 3. Merge, then test the form on the Cloudflare address (Ben)

1. Ben says merge. `main` builds and `https://<project>.pages.dev` goes live (still noindex, still not the public address).
2. Ben opens **`https://<project>.pages.dev/#contact`** (this exact address, not a long `xxxx.<project>.pages.dev` one, so FormSubmit only has to approve one address) and sends a test with non-personal details (name "Cloudflare test", message "Test only").
3. FormSubmit approves each website address separately. Expect an email from FormSubmit asking to **activate** the form for the new address: open it in Gmail and click **Activate**. If no email arrives within 10 minutes, tell Claude.
4. Send a second test. Check it arrives in Gmail with the subject "Paxlume website enquiry". Tell Claude it arrived.
5. Recommended after merge: Cloudflare project > **Settings > Build > Build watch paths**, Exclude paths: `HANDOFF.md`, `README.md`, `CLOUDFLARE.md`, `starter-template/*`. Then handoff-only commits don't use builds.

## Step 4. Day-to-day after setup

- Claude opens PRs as now. Each PR gets a Cloudflare preview link to check before merging.
- Merging to `main` updates both GitHub Pages and the Cloudflare staging address.
- A new page must be added to the allowlist in `scripts/build-site.sh` (the build fails and says so if it's forgotten).

## Step 5. Switching the public site (later, separate approval needed)

Not part of this PR. Do none of this without Ben's go-ahead:

1. Decide the address: `<project>.pages.dev` (free) or a custom domain (costs money; Ben + guardian decide).
2. A PR that changes canonical, Open Graph, sitemap, robots and `_next` URLs in the source to the new address, updates `privacy.html` to name Cloudflare as the host instead of GitHub, and updates README. (`PAXLUME_SITE_URL` can preview this on staging first.)
3. Set `PAXLUME_INDEXABLE=yes` in Cloudflare and redeploy.
4. Search Console: add the new address as a property, submit its `sitemap.xml`.
5. GitHub Pages: keep it running for a few weeks with canonicals pointing to the new address, then replace it with redirect pages or switch it off. Don't do this first.

## Rollback

- **Bad Cloudflare deploy:** Cloudflare project > **Deployments** > pick the last good one > **⋯ > Rollback to this deployment**. Takes seconds. GitHub Pages is unaffected either way.
- **Pause:** Settings > Build > Branch control: turn off automatic production deployments, and set preview branches to None.
- **Remove completely:** delete the Cloudflare project (Settings > General > Delete project) and uninstall the GitHub app at <https://github.com/settings/installations> (or the paxlumeweb account's installations page). The public site keeps working on GitHub Pages because it never moved.
