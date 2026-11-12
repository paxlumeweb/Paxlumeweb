# Paxlume Web Studio — website source

Static portfolio website for Paxlume Web Studio, with three **fictional demonstration** sites. Hosted on GitHub Pages.

**Live site:** <https://paxlume.net/> (Cloudflare). The old address <https://paxlumeweb.github.io/Paxlumeweb/> still works during the move.

## Files

| File | What it is |
|---|---|
| `index.html` | Main Paxlume portfolio and sales page |
| `greenedge.html` | Demo: GreenEdge Lawn Care (fictional) |
| `shineworks.html` | Demo: ShineWorks Auto Detailing (fictional) |
| `brightpath.html` | Demo: BrightPath Tutoring (fictional) |
| `style.css` | Shared styles for every page |
| `script.js` | Shared scripts (footer year, demo contact forms) |
| `favicon.svg` | Browser tab icon |
| `_config.yml` | GitHub Pages settings: keeps internal files (HANDOFF, READMEs, scripts, starter template) off the published site |
| `CLOUDFLARE.md` | Cloudflare Pages staging deployment: setup steps, previews, form test, switch and rollback (not served) |
| `scripts/build-site.sh` | Builds the public site into `dist/` for Cloudflare from an allowlist of files |
| `starter-template/` | Reusable one-page template for client Starter sites (placeholders only, never client data). See its README |

All pages sit at the repository root and link to each other with relative paths (for example `greenedge.html`, not `/greenedge.html`). Keep it that way: the site is served from the `/Paxlumeweb/` subfolder, and paths are case-sensitive.

## Deployment

GitHub Pages deploys automatically from the `main` branch, `/ (root)` folder. Every push to `main` triggers the **pages build and deployment** workflow (see the Actions tab); the live site updates a minute or two after it succeeds.

**Cloudflare (main host):** the `paxlumeweb` Cloudflare Worker builds the site with `bash scripts/build-site.sh` (output `dist/`, see `wrangler.jsonc`). Pushes to `main` update https://paxlume.net; other branches get noindex preview links. See [CLOUDFLARE.md](CLOUDFLARE.md). When you add a new page or asset, add it to the allowlist in `scripts/build-site.sh` too.

## Rules

- The demo sites must stay clearly labelled as fictional. Do not present them as real clients.
- No fake reviews, testimonials or client results.
- The site is static: no payments or database. The quote form posts to FormSubmit, which emails `paxlumeweb@gmail.com`.
- Never commit customer lists, private records or passwords to this public repository.
- Internal planning and coordination notes are kept in a private repository, not here. Don't add handoff or planning notes to this repo.
