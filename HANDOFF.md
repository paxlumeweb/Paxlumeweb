# Paxlume Handoff Log

Shared notes between **ChatGPT** (planning, tasks, reviews), **Claude** (website code and fixes) and **Ben** (owner, approves everything).
This file is not linked from the website. Note: this repo is public, so never put passwords, tokens, customer details or prices you want private in here.

## How this works
1. ChatGPT (or Ben) adds a task under **Tasks from ChatGPT**.
2. Ben tells Claude "check HANDOFF.md" (or pastes the task in).
3. Claude does the work, ticks the task, and adds a line under **Done by Claude**.
4. ChatGPT reads this file to see what changed and plans the next steps.

## Current status (updated 2026-11-12)
- Business: Paxlume Web Studio, a small Brisbane web design business. Slogan "Websites made simple."
- Goal right now: first $1,000 AUD (4 x $250 Starter websites) with a $0 budget.
- Website is live: https://paxlumeweb.github.io/Paxlumeweb/ (deploys automatically from the `main` branch).
- Pages: `index.html` (homepage), plus three demo sites: `greenedge.html` (GreenEdge Lawn Care), `shineworks.html` (ShineWorks Auto Detailing), `brightpath.html` (BrightPath Tutoring). The demos are fictional and labelled as samples.
- Brand: navy `#101D2C`, mint `#65D6BA`, white.
- Done: site fixed and verified, homepage redesign + FAQ, GitHub workflow, business email set up, customer docs and lead tracker (kept privately, not in this repo).
- Next priorities: first-$1k plan, then growth.

## Tasks from ChatGPT
<!-- Add new tasks at the bottom. Format: - [ ] YYYY-MM-DD: what to do (why) -->
- [ ] 2026-11-12: Audit the current email-only enquiry process and propose a mobile-friendly, accessible, $0 quote-request form with spam safeguards and a privacy notice; explain email delivery and activation requirements, and get owner approval before integrating any third-party service (to make customer enquiries easier without losing messages or exposing customer data).
- [ ] 2026-11-12: Review the $250 Starter offer, FAQ, calls to action and contact journey; prepare a focused conversion-improvement proposal or preview covering clear inclusions, exclusions, hosting/domain responsibilities and next steps, without changing the approved navy/mint design until owner approval (to help win the first four paying customers).
- [ ] 2026-11-12: Check the deployed GitHub Pages site on mobile and desktop, including all three fictional demo links, navigation, accessibility, loading performance, metadata and enquiry buttons; document the test results and propose fixes via pull request for review (to avoid losing potential customers through technical problems).

## Updates from ChatGPT — Gmail and business workflow (2026-11-12)
- Business Gmail `paxlumeweb@gmail.com` was created by the owner and successfully verified through ChatGPT's Gmail connector.
- ChatGPT created a parent label `Paxlume` and four nested labels: `Paxlume/Enquiries`, `Paxlume/Active Projects`, `Paxlume/Invoices & Payments`, and `Paxlume/Follow-ups`.
- The owner confirmed adding a professional Paxlume Web Studio signature in Gmail, including business identity and contact details. ChatGPT could not set Gmail's signature directly.
- Automated Gmail categorisation/filters have **not** been set up. No customer emails were sent, archived or deleted during this work; existing setup/security notifications were left untouched.
- ChatGPT previously prepared an optional free third-party enquiry form package for review, **but it was not confirmed deployed**. The current `index.html` still has a `mailto:` enquiry button and no embedded form; no `thank-you.html` was found. Do not claim form submissions reach Gmail until the full live flow is tested and any third-party activation completed.
- Separate customer docs and lead tracker exist off-repo. Keep them and any customer names, addresses, contact details, payment records, credentials and verification information out of this **public** repository.
- ChatGPT owns the business outreach strategy and draft customer messages. The owner approves all external outreach, purchases, and significant site changes.

## Questions for Claude (from ChatGPT, 2026-11-12)
- What have you implemented and verified since your last `Done by Claude` entry? Include relevant files and live URLs.
- Which of the three tasks above are already complete, partially complete or blocked? In particular, is there a deployed enquiry form or is contact still email-only?
- What decisions, approvals or access do you need from the owner to proceed? Please record answers in `Done by Claude` and `Questions for Ben`; propose changes before publishing, and preserve the current visual design.

## Done by Claude
<!-- Newest at the bottom. Format: - YYYY-MM-DD: what changed (link or file) -->
- 2026-11-12: Fixed and verified the live site, redesigned the homepage in navy/mint, added FAQ.
- 2026-11-12: Created this handoff file.

## Questions for Ben
- _(none yet)_

## Rules (always)
- Demo sites stay clearly labelled as fictional samples.
- No fake reviews or made-up testimonials.
- Ben approves before any customer message is sent, any money is spent, or any big decision is made.
- No mass outreach or spam (Australian spam law).
- Never ask for or store passwords or codes.
- Keep the existing visual design unless Ben asks for a change. Ben likes seeing a preview before design changes go live.
