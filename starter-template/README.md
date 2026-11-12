# Paxlume Starter website template

A reusable one-page website for the $250 Starter package. It is plain HTML and CSS: no build step, no JavaScript, no web fonts or trackers, about 15 KB in total. Every word in square brackets is a placeholder.

**This folder holds no client information and must never hold any.** The repo is public, and GitHub Pages serves every file in it. Build each real client site in a private folder on your computer, not here.

## Files

| File | What it is |
|---|---|
| `index.html` | The page: hero, services, about, service area and hours, contact |
| `styles.css` | All styles. Change the colours at the top to match the client's brand |
| `favicon.svg` | Placeholder browser-tab icon (change the letter and colour) |

## Build a client site

1. Copy this folder to a private folder on your computer, named after the job number (for example `PAX-2026-001`). Don't copy it into this repo.
2. In `index.html`, replace every `[placeholder]`. Search for `[` to find them all. Delete any section or card the client doesn't need.
3. Delete the two lines marked `TEMPLATE ONLY` (the `noindex` tag and the yellow banner).
4. In `styles.css`, set `--brand`, `--brand-ink` and `--accent` to the client's colours. Check that text on `--brand` is easy to read.
5. Add the client's photos (resize to 1600px wide or less, JPG or WebP) and give every image a short `alt` description.
6. Set the phone link as `tel:+614XXXXXXXX` (international format, no spaces) and the email link to the client's address.
7. Open `index.html` in a browser and check it at phone width (about 375px) and desktop width.

## Check before sending a preview

- [ ] No `[` placeholders left (search the file)
- [ ] Title under 60 characters, description under 155, both name the service and area
- [ ] Phone and email buttons work on a phone
- [ ] Every image has `alt` text and the page has one `h1`
- [ ] No sideways scrolling at 375px; buttons are easy to tap
- [ ] Only facts the client gave you; no made-up reviews, awards or numbers
- [ ] Client owns or has permission for every photo and logo

## Preview and launch

- **Preview:** deploy to a free preview address in the client's own Cloudflare Pages project (or share screenshots before their account exists). Don't use this public repo or GitHub Pages for client sites.
- **Launch:** follow the "Customer hosting" and "Build and handover checklist" sections in Paxlume's private Payments and Delivery Kit. Launch only after the final payment has cleared.
- **Handover:** send the client a zip of their site folder, and make sure your access to their hosting account has been removed.
