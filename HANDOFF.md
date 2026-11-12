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
- [ ] 2026-11-12 (superseded by the new embedded-form brief below): Audit and implement a mobile-friendly, accessible, $0 website enquiry form with spam safeguards and accurate privacy information, subject to owner approval and successful end-to-end tests (so prospective customers can request a quote without configuring an email app).
- [x] 2026-11-12 (done, merged in PR #2): Review the $250 Starter offer, FAQ, calls to action and contact journey; prepare a focused conversion-improvement proposal or preview covering clear inclusions, exclusions, hosting/domain responsibilities and next steps, without changing the approved navy/mint design until owner approval (to help win the first four paying customers).
- [x] 2026-11-12 (done, fixes merged in PR #2): Check the deployed GitHub Pages site on mobile and desktop, including all three fictional demo links, navigation, accessibility, loading performance, metadata and enquiry buttons; document the test results and propose fixes via pull request for review (to avoid losing potential customers through technical problems).

- [ ] 2026-11-12: Build a native-looking navy/mint quote-request form directly on the Paxlume homepage (not Google Forms), using a suitable no-cost form delivery service only after owner/guardian approval, and submit a preview pull request with a test plan and any activation steps (to collect enquiries through the website without exposing customer details).

- [ ] 2026-11-12: Create a reusable Starter website project template and a complete staging-to-handover checklist (to deliver each $250 website reliably without copying private customer data into public repos).
- [ ] 2026-11-12: Research and document an age-eligible, customer-owned hosting workflow for commercial one-page websites, comparing Cloudflare Pages and Netlify using current official terms, free plan limits, client ownership, domains, HTTPS and handover steps; do not create accounts or migrate the current site (to make customer publishing safe and predictable).
- [ ] 2026-11-12: Prepare a private-demo-only end-to-end test plan covering enquiry, quote, content intake, preview, revisions, final signoff, site launch and handover; flag any missing technical steps and provide recommendations for owner approval (to confirm Paxlume can serve its first customer).

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

## Ben's decisions (2026-11-12)
1. **Enquiry form:** Google Forms under paxlumeweb@gmail.com. No Google account needed to submit, email notifications on, keep the email option, and include a short privacy notice. Ben sees the form before it's linked on the site.
2. **Technical fixes:** approved for a pull request. Screenshots before merge, no unnecessary design changes.
3. **Turnaround:** advertise "typically 10–14 business days" after all content is received and scope agreed. Larger projects may take longer, and there's no guaranteed date before Ben checks his availability.
4. **Payments:** keep the price at $250 AUD. Don't publish the deposit or payment method yet; they get finalised with adult help and clear terms first.
5. **Hosting:** customers own their websites and hosting accounts wherever possible, using free hosting that allows commercial sites. Paxlume helps with setup, and customers pay directly for domains or paid hosting. Check GitHub Pages' terms. Don't migrate anything without approval.
6. **About line:** "Paxlume Web Studio is an independent Brisbane-based web design studio focused on creating modern, affordable websites for small businesses." No full name, age, school or personal info. Ben approves the wording before publishing.
7. **Gmail filter:** Ben sets it up with ChatGPT's guidance. Claude doesn't change any Gmail settings.

### What's unblocked and where it's at
- **Quote form (task 1):** Claude can't sign in to Ben's Google account, so the form is designed in a private build guide (questions, privacy notice, settings, test checklist) that Ben builds from. Once Ben sends the form link and two test enquiries arrive in Gmail, Claude adds a "Request a quote" button next to the email button, on a branch with screenshots.
- **Technical fixes (task 3) and Starter wording (task 2):** done in PR #2 (https://github.com/paxlumeweb/Paxlumeweb/pull/2), not merged. It adds bigger tap areas, a share image (`og-image.png`), demo-page favicon and share tags, turnaround wording, a "You own your website" note, FAQ answers for "How long does it take?" and "Who owns the website?", and the about line. The design is unchanged and the deposit is not mentioned. Waiting on Ben's OK.
- **GitHub Pages terms:** GitHub's Pages terms say Pages is "not intended for or allowed to be used as a free web hosting service to run your online business, e-commerce site, or any other website that is primarily directed at either facilitating commercial transactions", and is meant mainly "as a showcase for personal and organizational projects". Paxlume's own portfolio site has no payments or shop, so it reads as an allowed showcase and can stay. **Customer business sites are a grey area, so don't host them on GitHub Pages.** Recommended for customer sites: Cloudflare Pages or Netlify free plans, in an account the customer owns. Both offer free custom domains and HTTPS. Their terms on commercial use and minimum age still need checking (by Claude and a parent/guardian) before the first customer site. Nothing has been migrated.
- **Gmail tip for Ben and ChatGPT:** Google Forms notification emails don't use the "Website enquiry" subject. The filter needs a second rule on the Forms sender (check the address on the first test email).

## Latest owner instruction — replace Google Forms with an on-site quote form (2026-11-12)
**This instruction supersedes the earlier Google Forms choice, Google Forms build guide and form-link dependency.** Google sign-in through the third-party browser was unsuccessful. The owner does not want to run a script, create a Google Form manually or share Google credentials. Instead, Claude should implement the form inside the existing Paxlume website. Claude is responsible for website code and presentation; the owner still must approve any third-party service, terms, spending and major publication changes.

### Claude's required build brief
1. **Preserve the approved website.** Keep the existing homepage structure, responsiveness, branding (navy `#101D2C`, mint `#65D6BA`, white), typography, FAQ, copy, three fictional labelled demos, and deployed changes from PR #2. Put a styled enquiry form within or near the existing `#contact` section with a clear `Request a free quote` CTA; keep `paxlumeweb@gmail.com` visibly available as the alternative. Do not redesign unrelated pages.
2. **Form fields.** Required: customer name, reply-to email, service requested (e.g., $250 Starter website / another website project / not sure), business/service description, and project details or goals. Optional: business name, telephone number, current website URL. Use understandable labels, sensible input types and accessible validation. Avoid requesting sensitive personal information, passwords, payment/card details, or unnecessary addresses. If collecting any consent acknowledgement, make it truthful and understandable rather than prechecked.
3. **Static hosting / email delivery.** GitHub Pages has no server-side form processor. Research a *legitimate, currently available, no-cost* form-to-email service such as FormSubmit, Web3Forms or Formspree (examples, **not yet approved**). Verify its terms including minimum account age/guardian consent, free submission limits, commercial usage, abuse protection, privacy/data handling and activation process. Recommend the simplest compliant option, with a fallback if unsuitable. **Get the owner and, where required, parent/guardian approval before any new account, service activation or data-sharing integration.** Do not ask for or use login credentials or verification codes in chat or in the public repo. Do not pretend a static HTML form can email Gmail without a working backend/service. Do not add a paid service or expose any private API keys/tokens; any public client key must be explicitly safe to disclose.
4. **Email and confirmation flow.** Send genuine enquiries to `paxlumeweb@gmail.com` once activated. Set a clear subject such as `Paxlume website enquiry`; make the respondent's email easy to reply to without spoofing the site's sender address. Include a branded, accessible confirmation/success page or inline confirmation if supported; handle failed submissions visibly, with the fallback email link. Never make success claims before the provider confirms acceptance.
5. **Spam, accessibility, privacy.** Implement a honeypot and provider-supported CAPTCHA/anti-abuse measures if available, without unnecessarily blocking legitimate visitors. Use responsive inputs, labels, keyboard navigation, focus states, clear error messages and normal form submission without JS when possible. Show an accurate, short privacy notice explaining that details are used to respond to enquiries and may be processed by the chosen form provider. Do **not** claim there is no third-party sharing. Link to a reviewed privacy notice where needed. Keep all real customer responses and any testing with identifiable customer information out of GitHub and `HANDOFF.md`. Avoid unsolicited follow-up or marketing consent by default.
6. **Delivery sequence (do as much as possible autonomously).** First implement the form on a separate GitHub branch and open a pull request; provide screenshots of desktop/mobile designs and list any unavoidable owner steps to activate the selected provider. If service selection/activation is not yet authorised, leave the current live contact option functional and clearly mark the form as untested/draft in PR; don't merge a nonworking customer-facing form. Ask for explicit owner approval before deploying the integration or changing services.
7. **Acceptance tests.** After service activation with approval, run at least two real test enquiries (desktop and mobile) using **non-personal test data**; verify they actually arrive in business Gmail including spam check, that recipient, subject/reply-to and thank-you/error states work, that validation and anti-spam work without breaking access, and that the email fallback remains functional. Get owner confirmation of email receipt before calling the feature live; don't publish the live form until tests pass. Log only non-sensitive test outcomes and file/PR links in `Done by Claude`.
8. **Report back.** Explain which delivery service you recommend and why, what you built, the PR link, screenshots, exact activation/approval steps (ideally just a confirmation email or one account-authorised step), what is blocked, and whether it is deployed. Update `Questions for Ben` with only necessary decisions; ask about any promises (e.g. 2-business-day reply time or 12-month deletion) rather than silently assuming them. Do not contact customers, spend money or publish large design changes without the owner's approval.

### Claude's progress on the on-site quote form (2026-11-12)
- **Status: LIVE** (PR #3 merged 2026-11-12 with Ben's OK). To switch the form off quickly, set `data-form-active="false"` in `index.html`; visitors then see the email fallback.
- **Recommended service: FormSubmit (formsubmit.co).** It needs no account or password: activation is one confirmation email to paxlumeweb@gmail.com. It has no API key, is free with no stated submission cap, supports a JSON (AJAX) response, a honeypot, reCAPTCHA and a reply-to field, and says it keeps submissions for 30 days.
  - Caveats: it has no separate terms of service page (only a 2019 privacy/terms PDF), and its minimum age and commercial-use position couldn't be verified.
- **Fallback: Web3Forms.** You get a free access key by email (safe to put in public HTML) and 250 submissions a month. Caveats: its terms pages couldn't be loaded, and it keeps submissions for up to 3 years by default (can be shortened to 7 days in its dashboard).
- Formspree was not chosen: it needs an account and allows only 50 submissions a month on the free plan.
- **Owner steps to go live:**
  1. Approve FormSubmit, and have a parent/guardian check its privacy/terms PDF (https://formsubmit.co/privacy.pdf).
  2. Claude sends one activation submission using non-personal test data.
  3. Ben clicks "Activate Form" in the email FormSubmit sends to paxlumeweb@gmail.com (check Spam). Ben replies with the random alias address shown in that email, which is not a secret.
  4. Claude switches the form on and runs 2 test enquiries (desktop and phone).
  5. Ben confirms both arrived.
  6. Ben says merge.

## ChatGPT launch-readiness research and delivery plan (2026-11-12)
**Goal:** prepare to win and reliably deliver 4 x $250 Starter websites (A$1,000 gross revenue, before costs and taxes). Keep the existing navy/mint design and publicly labelled fictional examples. Prioritise the outstanding embedded enquiry form, followed by the three new Claude tasks above. This is a coordination brief, **not approval for publishing, third-party signups or customer outreach**.

### Verified Australian business checkpoints (business planning — ChatGPT/owner)
- Australia's government advises young people may operate as sole traders, but there are state-specific work conditions and practical account/contract issues. The owner should review these with a parent/guardian. Source: https://business.gov.au/planning/new-businesses/start-a-business-when-youre-under-18
- A business name different from a sole trader's personal legal name generally needs registration. The current government guide lists ASIC business-name fees of **$47 for 1 year or $108 for 3 years**, so a strict '$0 startup' is not a safe assumption if registration is required. Check availability and any relevant trademarks, then only the owner/guardian can authorise and pay. Sources: https://business.gov.au/registrations/register-your-business-name and https://register.business.gov.au/
- An ABN can be applied for through official Australian registration services when eligible. Do **not** claim an ABN has been granted, a name registered, or GST registration completed. The ATO GST-registration threshold is generally **$75,000 annual GST turnover**, though registration may be voluntary or mandatory for other reasons. Sources: https://www.abr.gov.au/business-super-funds-charities/applying-abn/abn-entitlement/sole-trader and https://www.ato.gov.au/businesses-and-organisations/gst-excise-and-indirect-taxes/gst/registering-for-gst
- Written quotes should include exact scope, pricing, timelines, payment terms and client acceptance. Website services still carry Australian Consumer Law obligations including due care/skill and remedies; do not write 'no refunds under any circumstances'. Sources: https://business.gov.au/people/contractors/prepare-quotes and https://www.accc.gov.au/business/selling-products-and-services/consumer-rights-and-guarantees
- Commercial email/SMS marketing requires appropriate consent, accurate sender identification and unsubscribe handling. Publicly posted email addresses are not blanket permission to send promotions, and a one-off enquiry does not automatically authorise newsletter marketing. Prefer introductions with consent and voluntarily submitted enquiries. Sources: https://www.acma.gov.au/avoid-sending-spam and https://www.acma.gov.au/publications/2026-10/report/action-scams-spam-and-telemarketing-april-june-2026
- Check the actual privacy obligations, chosen form processor, data minimisation, retention and secure access; don't put contact details or financial info in this public handoff. Source: https://www.oaic.gov.au/privacy/privacy-guidance-for-organisations-and-government-agencies/organisations/small-business
- No payment processor, bank account, business name, ABN, hosting account or form-delivery service has been created or paid for by ChatGPT. Payment account eligibility and any guardian role must be settled by the owner; never ask for passwords or verification codes.

### Default $250 Starter scope for owner review (not new live promises)
One responsive web page with up to five agreed content sections, clear contact CTA, basic metadata/accessibility checks, two consolidated revision rounds and a customer-owned handover. Excludes ecommerce, advanced bookings/login systems, paid hosting, domain purchases, unlimited revisions and ongoing maintenance unless separately quoted. Typical **10–14 business days** after scope/content agreement, subject to availability. Payment/deposit method is intentionally **not decided**: settle legal/account requirements and written terms first. Keep the three demo businesses honestly described as fictional.

### Claude responsibilities
1. **Finish the embedded-form task already specified above**. Seek approval for a legitimate form processor and age/terms/privacy conditions; keep the functional email fallback until two test submissions reach business Gmail. The owner is not going to manually build a Google Form or share sign-in credentials.
2. **Starter template:** create a reusable, visually polished but lightweight one-page website starter in a branch/private or demo-only area, with configurable sections, reusable copy placeholders, mobile accessibility, SEO metadata, and no copied client data. Include build/run/deploy instructions. Do not replace the Paxlume main site or present the template as a real client.
3. **Hosting and handover:** compare Cloudflare Pages vs Netlify using official current terms, commercial eligibility, age/account restrictions, free-tier limitations and account ownership. Recommend an owner/customer-approved option. Draft the click-by-click handover and access-removal process; no sign-ups or migrations without owner permission.
4. **Dry-run QA:** document a fictional dry run of lead -> quote -> client content -> preview -> two revision rounds -> final checks -> client-owned deployment and backup. Identify anything the owner must approve, including forms, privacy, payment terms and any new costs.
5. **Keep status clear:** make PRs/previews for code; give links, screenshots, test outcomes and blockers; maintain **Done by Claude** and **Questions for Ben**. Never publish customer names/details, financial information or secrets to GitHub; do not contact prospects without permission.

### Operational materials prepared privately by ChatGPT (not uploaded to GitHub)
A launch kit containing a startup checklist, $250 offer/quote draft, service agreement draft, customer workflow, consent-based acquisition plan, privacy copy draft, invoice template, and a start-here guide. The owner receives a local download. Claude may create technical checklists and reusable website code, but should not invent legal/account approvals or publish the private records.

### Open decisions for owner and suitable adult
- Confirm sole-trader/ABN/business-name eligibility and any required registration; authorise any associated fee (currently $47 for 1 year if required).
- Decide approved way to receive customer payments and any guardian role, then review the quote/agreement/invoice and statutory rights.
- Approve an enquiry service after its age/terms/privacy review and activation requirements; confirm test email delivery.
- Agree on first-customer hosting provider and client-owned account setup.
- Approve all outbound customer communications and any actual publishing/change of public business promises.

## Done by Claude
<!-- Newest at the bottom. Format: - YYYY-MM-DD: what changed (link or file) -->
- 2026-11-12: Fixed and verified the live site, redesigned the homepage in navy/mint, added FAQ.
- 2026-11-12: Created this handoff file.
- 2026-11-12: Read ChatGPT's update and answered Questions for Claude (see "Answers from Claude" above). Confirmed contact is still email-only: no form and no thank-you page are deployed.
- 2026-11-12: Task 3 done: checked all 4 pages on phone and desktop (links, labels, metadata, accessibility, size). No blocking problems. 3 small fixes proposed, waiting on Ben's OK before a PR.
- 2026-11-12: Wrote proposals for task 1 (form options) and task 2 (offer and contact copy). No site files changed.
- 2026-11-12: Recorded Ben's 7 decisions. Opened PR #2 with the approved tap-target, share-image and demo metadata fixes plus the Starter wording (turnaround, ownership, FAQ, about line), with before/after screenshots. Not merged.
- 2026-11-12: Ben approved PR #2; merged to main and live.
- 2026-11-12: Designed the Google Forms quote form for Ben to build (private build guide). Checked GitHub Pages terms: fine for Paxlume's portfolio, not recommended for customer sites.
- 2026-11-12: Built the on-site quote form (fields, validation, honeypot, FormSubmit delivery, thank-you and privacy pages) as draft PR #3, switched off until activation and tests. The Google Forms plan was dropped per the owner instruction. Screenshots are kept privately in the project files.
- 2026-11-12: Ben approved FormSubmit. Sent the activation test, and Ben activated the form for paxlumeweb.github.io. PR #3 now uses FormSubmit's alias address and the form is switched on (still not merged). Two test enquiries with non-personal data (desktop and phone labels) arrived in the business Gmail with the right subject and fields; Ben confirmed by screenshot. The error message was also checked with a real refused submission. Note: FormSubmit's free emails include a small sponsor ad. Remaining: Ben's merge OK, then one final submission from the live site.
- 2026-11-12: Ben said merge. PR #3 merged and deployed. The live page shows "Request a free quote", and the thank-you and privacy pages load. A final test with non-personal data was accepted by FormSubmit after going live.

## Questions for Ben
_Earlier questions answered on 2026-11-12. The Google Forms question is replaced by the on-site form._
1. **Reply promise:** the form and thank-you page only say "I'll reply by email", with no time limit. Do you want to promise a time, such as 2 business days?
2. **Keeping enquiries:** the privacy page says enquiry emails are kept "only as long as needed". Do you want a fixed period instead, such as deleting enquiries that don't go ahead after 12 months?
3. **Customer hosting:** OK for Claude to compare Cloudflare Pages and Netlify terms before the first paying customer? (Research only, no sign-ups.)

## Rules (always)
- Demo sites stay clearly labelled as fictional samples.
- No fake reviews or made-up testimonials.
- Ben approves before any customer message is sent, any money is spent, or any big decision is made.
- No mass outreach or spam (Australian spam law).
- Never ask for or store passwords or codes.
- Keep the existing visual design unless Ben asks for a change. Ben likes seeing a preview before design changes go live.
