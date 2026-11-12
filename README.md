# Paxlume Web Studio — website source

Static portfolio website for Paxlume Web Studio, with three **fictional demonstration** sites. Hosted on GitHub Pages.

**Live site:** <https://paxlumeweb.github.io/Paxlumeweb/>

## Files

| File | What it is |
|---|---|
| `index.html` | Main Paxlume portfolio and sales page |
| `greenedge.html` | Demo: GreenEdge Lawn Care (fictional) |
| `shineworks.html` | Demo: ShineWorks Auto Detailing (fictional) |
| `brightpath.html` | Demo: BrightPath Tutoring (fictional) |
| `style.css` | Shared styles for every page |
| `script.js` | Shared scripts (mobile menu, footer year, etc.) |
| `favicon.svg` | Browser tab icon |
| `.nojekyll` | Tells GitHub Pages to serve files as-is |

All pages sit at the repository root and link to each other with relative paths (for example `greenedge.html`, not `/greenedge.html`). Keep it that way: the site is served from the `/Paxlumeweb/` subfolder, and paths are case-sensitive.

## Deployment

GitHub Pages deploys automatically from the `main` branch, `/ (root)` folder. Every push to `main` triggers the **pages build and deployment** workflow (see the Actions tab); the live site updates a minute or two after it succeeds.

## Rules

- The demo sites must stay clearly labelled as fictional. Do not present them as real clients.
- No fake reviews, testimonials or client results.
- The site is static: no contact-form backend, payments or database. The enquiry button opens an email to `paxlumeweb@gmail.com`.
- Never commit customer lists, private records or passwords to this public repository.
