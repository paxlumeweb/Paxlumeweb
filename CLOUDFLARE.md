# Cloudflare deployment

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
- Never served: `HANDOFF.md`, `README.md`, `CLOUDFLARE.md`, `starter-template/`, `scripts/`, `.git`, `_config.yml`, `.gitignore`, and anything else not on the list.
- The build **fails** if an internal file ends up in `dist/`, if a local link or asset is broken, or if a new page/asset is added to the repo root without being added to the allowlist. A failed build never replaces a working deployment.

**What the build changes in `dist/` only** (the source files stay exactly as GitHub Pages needs them):

1. `404.html`: `/Paxlumeweb/...` links become `/...`, because on Cloudflare the site sits at the domain root.
2. Search engines: every response gets `X-Robots-Tag: noindex` (via a generated `_headers` file) unless the `PAXLUME_INDEXABLE=yes` build variable is set on a `main` build. That variable is the launch switch and stays unset until Ben approves. Previews and the `workers.dev` address are always noindex.
3. Quote form on **previews**: switched off (`data-form-active="false"`). Visitors see the "please email" fallback. This stops previews sending enquiries and stops every new preview address triggering a FormSubmit activation email.
4. Quote form on **main**: left on. The no-JavaScript thank-you redirect (`_next`) points at `https://paxlume.net/thank-you`.

5. Security headers on every page: a Content-Security-Policy (only the site's own files, plus FormSubmit for the form; no inline code allowed), `X-Frame-Options: DENY`, `nosniff`, a referrer policy, a permissions policy and HSTS. The `workers.dev` address always gets `noindex`, even after launch. The build fails if a page gains an inline `<style>`, `style="..."`, inline `<script>` or `on...=""` handler, because the CSP would block it. GitHub Pages can't send these headers.

Build variable (Worker > Settings > Build > Variables and secrets). **Leave unset until launch is approved:**

| Variable | Effect |
|---|---|
| `PAXLUME_INDEXABLE=yes` | Production (`main`) pages on paxlume.net may be indexed. Remove it and redeploy to go back to noindex |

Run it yourself: `bash scripts/build-site.sh`, then open `dist/index.html`. A local build behaves like a preview (form off).

## Cost and limits

Cloudflare Pages Free plan: A$0, no payment details needed. If Cloudflare ever asks for a card, stop and ask.
Limits (developers.cloudflare.com/pages/platform/limits, checked 2026-11-12): 500 builds a month, 1 build at a time,
20,000 files, 25 MiB per file, 20-minute build timeout, unlimited previews. This site builds in seconds with 21 files.

## Step 1. Ben connects Cloudflare to GitHub (needs Ben's hands, about 5 minutes)

Do this with a parent or guardian, since it accepts Cloudflare's and GitHub's terms. Never paste a password, code or token into chat or GitHub. Leave the practice project `paxlume-hosting-test` as it is: a Direct Upload project can't be converted, so this creates a new one.

1. Sign in at <https://dash.cloudflare.com>. In the left menu choose **Workers & Pages** (under Compute).
2. Choose **Create application**. Cloudflare shows **Workers** first: don't use that. Choose the **Pages** tab, or the small **Looking to deploy Pages? Get started** link at the bottom, then **Connect to Git** (it may say **Import an existing Git repository**).
   - How to tell you're in the right place: the setup asks for a **Build output directory**, and the finished address ends in **`.pages.dev`**. If it asks for a **Deploy command** (`npx wrangler deploy`) or the address ends in `.workers.dev`, that's a Worker. A Worker serves the whole repo (including HANDOFF.md) and skips the build script.
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
7. Tell Claude "Cloudflare is connected" and the project's `pages.dev` address. Nothing else is needed: no tokens, no screenshots of settings pages.

### If Cloudflare only offers a Worker (also fine)
Cloudflare now pushes new projects towards **Workers**. The repo supports that too: `wrangler.jsonc` tells the Worker to serve only `dist/`, use `404.html` for missing pages, and the build script reads Workers' branch name (`WORKERS_CI_BRANCH`), so previews still have the form off and every page still gets noindex. Tested locally with `wrangler dev`: `/HANDOFF.md`, `/README.md`, `/starter-template/` return 404, missing pages show the Paxlume 404 page, `X-Robots-Tag: noindex` is sent.

In the Worker (**Workers & Pages** > `paxlumeweb` > **Settings** > **Build** > **Build configuration** > edit):
- **Build command:** `bash scripts/build-site.sh`
- **Deploy command:** `npx wrangler deploy`
- **Non-production branch deploy command:** `npx wrangler versions upload` (gives each branch/PR a preview link)
- **Root directory:** leave as `/`
- Save. Then **Settings > Build > Branch control**: production branch `main`, and turn on builds for non-production branches.
- Once a build of `main` succeeds, turn the `workers.dev` switch back on under **Domains**.

The address is `<worker name>.<account subdomain>.workers.dev`, so it always has two parts and can't be just `paxlumeweb.workers.dev`. Your account subdomain is shown (and can be changed, for every Worker at once) on the **Workers & Pages** overview page, right-hand side, under **Subdomain**. A Worker's free plan is A$0: static files are free and unlimited, and builds are included.

Don't test the quote form until Claude has checked the Worker after this setup. FormSubmit approves each address once.

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

## Step 5. Launching on paxlume.net (every step marked APPROVAL needs Ben's OK)

`paxlume.net` was registered at Cloudflare Registrar on 2026-11-12 and uses Cloudflare's nameservers, so no DNS records need copying. GitHub Pages keeps working the whole time, so enquiries never stop.

**Before you start:** security PR merged, its headers checked on the workers.dev address, and 2-step verification on Gmail, GitHub and Cloudflare.

1. **APPROVAL: connect the domain.** Worker `paxlumeweb` > **Settings** > **Domains & Routes** > **Add** > **Custom domain** > `paxlume.net`. Cloudflare creates the DNS record and HTTPS certificate (a few minutes). The site is now reachable at paxlume.net but still noindex, unlinked, and its canonicals point to GitHub Pages.
2. **www to root.** DNS > add a **proxied** `A` record, name `www`, IPv4 `192.0.2.0` (a placeholder Cloudflare uses for redirect-only hostnames). Then **Rules** > **Create rule** > **Redirect Rules** > template **Redirect from WWW to Root** > Deploy. Check `https://www.paxlume.net/privacy` lands on `https://paxlume.net/privacy`.
3. **Claude checks paxlume.net** (or Ben with securityheaders.com): HTTPS padlock, all 9 pages, 404 page, `/HANDOFF.md` 404, security headers, `X-Robots-Tag: noindex`.
4. **APPROVAL: form test on paxlume.net.** Open `https://paxlume.net/#contact`, send one dummy enquiry ("Domain test" / "Test only"). If FormSubmit emails an activation request, click **Activate** (FormSubmit holds submissions until activation). Send a second test and check both reach Gmail. Don't continue until this works; GitHub Pages' form keeps working meanwhile.
5. **APPROVAL: merge the domain PR.** Canonicals, Open Graph, sitemap, robots and the form's `_next` move to `https://paxlume.net/`, and the privacy notice names Cloudflare. GitHub Pages serves the same pages with canonicals pointing to paxlume.net. Production stays noindex.
6. **Claude re-checks** canonicals, sitemap, robots, form `_next` and headers on paxlume.net.
7. **APPROVAL: turn on indexing.** Worker > Settings > Build > Variables and secrets > add `PAXLUME_INDEXABLE` = `yes` > Save, then **Deployments** > retry the latest build (or merge any small PR). Check `X-Robots-Tag` is gone on paxlume.net but still present on workers.dev.
8. **Search Console:** add a **Domain** property for `paxlume.net` (Cloudflare can add the verification record when asked), submit `https://paxlume.net/sitemap.xml`.
9. **Optional:** Worker > **Settings** > **Domains & Routes**: turn off the `workers.dev` address (it's noindex either way).
10. **About 2 weeks later (separate PR):** redirect pages for GitHub Pages, then Ben switches Pages to them. After that the repo can be made private (a free GitHub plan can't serve Pages from a private repo).

## Rollback

- **Domain problem (steps 1 to 4):** remove the custom domain (Worker > Settings > Domains & Routes > ⋯ > Remove). The site was never promoted, and GitHub Pages is unchanged.
- **Indexing turned on too early (step 7):** delete `PAXLUME_INDEXABLE` and redeploy. noindex is back within minutes.
- **Domain PR problem (step 5):** revert the PR on GitHub (**Revert** button on the merged PR), then merge the revert. Both hosts go back to the GitHub Pages canonicals.
- **Bad Worker deploy:** Worker > **Deployments** > pick the last good version > **Rollback**.

- **Bad Cloudflare deploy:** Cloudflare project > **Deployments** > pick the last good one > **⋯ > Rollback to this deployment**. Takes seconds. GitHub Pages is unaffected either way.
- **Pause:** Settings > Build > Branch control: turn off automatic production deployments, and set preview branches to None.
- **Remove completely:** delete the Cloudflare project (Settings > General > Delete project) and uninstall the GitHub app at <https://github.com/settings/installations> (or the paxlumeweb account's installations page). The public site keeps working on GitHub Pages because it never moved.
