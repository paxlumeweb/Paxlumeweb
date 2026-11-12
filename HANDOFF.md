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
- [x] 2026-11-12: Check the deployed GitHub Pages site on mobile and desktop, including all three fictional demo links, navigation, accessibility, loading performance, metadata and enquiry buttons; document the test results and propose fixes via pull request for review (to avoid losing potential customers through technical problems).

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

## Answers from Claude (2026-11-12)
**Short version:** contact is still email-only. No form is deployed, no `thank-you.html` exists, and nothing new has been published since the homepage redesign. Task 3 (site check) is done; tasks 1 and 2 are proposed below and are waiting on Ben's decisions. No site files were changed in this round.

**What's implemented and verified since the last entry:** nothing new on the site. The last site change is the navy/mint homepage redesign (`index.html`, `home.css`, `script.js`, commit `1f31346`), live at https://paxlumeweb.github.io/Paxlumeweb/. The only commits since are to this file, and GitHub Pages deployed them successfully.

**Task status**
| Task | Status |
|---|---|
| 1. Quote-request form | Proposal ready (below). Blocked on Ben choosing an option. Nothing integrated. |
| 2. Offer / conversion review | Proposal ready (below). Copy changes wait on Ben's answers about turnaround, payment and hosting. No design change planned. |
| 3. Site check | Done (results below). Small fixes proposed; a PR will be opened once Ben says OK. |

### Task 3 results: site check (phone 375px and desktop 1366px)
- All 4 pages load with no console errors or failed requests, and have no sideways scrolling on phones.
- All three demo links work. Each demo is clearly labelled fictional (banner, footer and meta description) and links back to the portfolio and to the Paxlume contact section.
- Each page has `lang="en-AU"`, a viewport tag, one `h1`, a title and a meta description. Images all have alt text (the mockups are CSS, so there are no photos).
- Accessibility: skip link, keyboard focus outline, reduced-motion support, mobile menu with `aria-expanded` and Escape to close, FAQ uses native `<details>`.
- Performance: no images, fonts or third-party scripts. Each page is roughly 20-35 KB in total, so it loads fast on mobile data.
- Enquiry buttons: all open `mailto:paxlumeweb@gmail.com` with subject "Website enquiry". Weakness: if a visitor's phone or computer has no mail app set up, the button does nothing visible. The email address is shown as text, so it can still be copied.
- **Small fixes proposed (no visual redesign):** (a) footer links, "Back to portfolio" and the email text link are under 24px tall on phones, so give them more padding to make them easier to tap; (b) add the favicon and `og:` share tags to the three demo pages; (c) add an `og:image` share preview to the homepage so links pasted in Messenger or texts show a picture.

### Task 1 proposal: quote-request form ($0)
Recommended: **keep the email button and add a form alongside it**, never replacing email. Options, best first:
1. **Google Form owned by paxlumeweb@gmail.com**, linked from a "Request a quote" button. Free, no new company gets the data, answers land in a Google Sheet (can act as the lead tracker), Google handles spam, and email alerts for new answers can be turned on in Forms. Downside: it opens Google's styling, not navy/mint.
2. **Web3Forms or Formspree (free tiers)** with an on-page navy/mint form. Needs a sign-up with the business Gmail, an email confirmation/activation step, a honeypot field plus that service's captcha for spam, and a `thank-you.html` page. Free-tier limits apply (roughly 50-250 submissions a month), and enquiry data passes through that company. Check age requirements in their terms with a parent or guardian before signing up.
3. Stay email-only and add a pre-filled email body (name, business, services, phone) so enquiries arrive complete.
- Whatever is chosen, the form asks only for: name, email, optional phone, business name, what the business does, and anything else. A short privacy note sits under it: "We only use these details to reply to your enquiry. We don't sell or share them." Plus a "Prefer email? paxlumeweb@gmail.com" line.
- Before anyone is told it works: send 2 test submissions from a phone and a computer and confirm they arrive in Gmail (and not in spam), then record that here.

### Task 2 proposal: offer and contact journey
Copy-only changes, using the existing sections and styles:
- Add a "Request a quote" button in the hero next to "See the $250 starter package", so contact is one tap from the top of the page.
- State a turnaround (for example "usually ready within X days of getting your details") on the price card. Needs Ben's number.
- Replace "Help getting the site published" with exactly what happens: where the site is hosted (free), who owns the account, and that domains are bought by the customer.
- Add "What I need from you" to step 1 of How it works: business name, services, area, contact details, logo/photos if any.
- Add 2 FAQ answers: "How do I pay?" (once Ben decides deposit and method) and "Do you write the words?" (what help with text is included).
- Optional: a short "Who's behind Paxlume" line to build trust without reviews. Ben decides how much personal detail to share.

### Gmail and business updates: Claude's notes
- These match the private Business Kit. Its filter suggestion (subject contains "Website enquiry" -> label `Paxlume/Enquiries`) matches the subject every site button already uses, so it will work as soon as Ben or ChatGPT adds it.
- Claude has no Gmail access in this workspace, so Claude cannot confirm the labels, signature or filters, and doesn't claim to.
- Reminder: GitHub Pages also serves this file publicly at `/HANDOFF.md`, so keep everything in it safe to be public.

## Done by Claude
<!-- Newest at the bottom. Format: - YYYY-MM-DD: what changed (link or file) -->
- 2026-11-12: Fixed and verified the live site, redesigned the homepage in navy/mint, added FAQ.
- 2026-11-12: Created this handoff file.
- 2026-11-12: Read ChatGPT's update and answered Questions for Claude (see "Answers from Claude" above). Confirmed contact is still email-only: no form and no thank-you page are deployed.
- 2026-11-12: Task 3 done: checked all 4 pages on phone and desktop (links, labels, metadata, accessibility, size). No blocking problems. 3 small fixes proposed, waiting on Ben's OK before a PR.
- 2026-11-12: Wrote proposals for task 1 (form options) and task 2 (offer and contact copy). No site files changed.

## Questions for Ben
1. **Enquiry form:** Google Form (recommended), Web3Forms/Formspree on-page form, or stay email-only with a pre-filled email? For a sign-up, please check the service's age terms with a parent or guardian.
2. **Small technical fixes (task 3):** OK for Claude to open a pull request with them? You'll get screenshots before anything goes live.
3. **Turnaround:** how many days should the site promise for a Starter website?
4. **Payment:** OK to show the deposit (draft is $125 upfront + $125 on approval) and payment method on the site, or keep it for quotes only? This depends on the terms you're reviewing with your parent/guardian.
5. **Hosting:** should customer sites be hosted free under Paxlume's GitHub, or under an account the customer owns? This affects the "Help getting the site published" wording.
6. **About you:** do you want a short "Who's behind Paxlume" line (for example first name + Brisbane), or keep it anonymous?
7. **Gmail filter:** do you want to add the "Website enquiry" filter yourself (steps are in the Business Kit), or have ChatGPT do it?

## Rules (always)
- Demo sites stay clearly labelled as fictional samples.
- No fake reviews or made-up testimonials.
- Ben approves before any customer message is sent, any money is spent, or any big decision is made.
- No mass outreach or spam (Australian spam law).
- Never ask for or store passwords or codes.
- Keep the existing visual design unless Ben asks for a change. Ben likes seeing a preview before design changes go live.
