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
- Cloudflare Pages: Git-connected staging deployment merged in PR #7 (see `CLOUDFLARE.md`). Waiting on Ben to connect Cloudflare to GitHub. Not the public site.
- Pages: `index.html` (homepage), `privacy.html`, `thank-you.html`, `terms.html`, `refunds.html`, `404.html`, plus three demo sites: `greenedge.html` (GreenEdge Lawn Care), `shineworks.html` (ShineWorks Auto Detailing), `brightpath.html` (BrightPath Tutoring). The demos are fictional and labelled as samples.
- Brand: navy `#101D2C`, mint `#65D6BA`, white.
- Done: site fixed and verified, homepage redesign + FAQ, GitHub workflow, business email set up, customer docs and lead tracker (kept privately, not in this repo).
- Payments: bank transfer, A$125 on accepted agreement + A$125 on final preview approval, private invoices only (owner approved 2026-11-12).
- Next priorities: Ben's answers in Questions for Ben, run the dry run, then the first-$1k plan.

## Tasks from ChatGPT
<!-- Add new tasks at the bottom. Format: - [ ] YYYY-MM-DD: what to do (why) -->
- [x] 2026-11-12 (complete, superseded by embedded-form delivery): Audited the contact process and implemented an accessible, no-cost enquiry form; see PR #3 and the verified Gmail tests (to let customers request a quote without an email application).
- [x] 2026-11-12 (done, merged in PR #2): Review the $250 Starter offer, FAQ, calls to action and contact journey; prepare a focused conversion-improvement proposal or preview covering clear inclusions, exclusions, hosting/domain responsibilities and next steps, without changing the approved navy/mint design until owner approval (to help win the first four paying customers).
- [x] 2026-11-12 (done, fixes merged in PR #2): Check the deployed GitHub Pages site on mobile and desktop, including all three fictional demo links, navigation, accessibility, loading performance, metadata and enquiry buttons; document the test results and propose fixes via pull request for review (to avoid losing potential customers through technical problems).

- [x] 2026-11-12 (done, merged in PR #3): Built the on-site navy/mint quote-request form with approved FormSubmit delivery, spam protection, thank-you and privacy pages; two Gmail tests passed and a live submission was accepted (to receive enquiries directly on the website).

- [x] 2026-11-12 (done, merged in PR #4): Create a reusable Starter website project template and a complete staging-to-handover checklist (to deliver each $250 website reliably without copying private customer data into public repos).
- [x] 2026-11-12 (done, kept privately; summary below): Research and document an age-eligible, customer-owned hosting workflow for commercial one-page websites, comparing Cloudflare Pages and Netlify using current official terms, free plan limits, client ownership, domains, HTTPS and handover steps; do not create accounts or migrate the current site (to make customer publishing safe and predictable).
- [x] 2026-11-12 (plan done, kept privately; dry run itself not yet run): Prepare a private-demo-only end-to-end test plan covering enquiry, quote, content intake, preview, revisions, final signoff, site launch and handover; flag any missing technical steps and provide recommendations for owner approval (to confirm Paxlume can serve its first customer).

- [x] 2026-11-12 (done, PR #6 merged with Ben's OK): Revise public refunds.html and matching terms/payment copy on a preview PR to replace automatic forfeiture of the full A$125 deposit after preview with clearly disclosed, fair and appropriately limited cancellation charges, preserving all Australian Consumer Law remedies; flag the policy for owner/guardian legal review before launch (to reduce unfair-term and customer-dispute risk).
- [x] 2026-11-12 (done, PR #6 merged with Ben's OK): Audit privacy.html and enquiry-form disclosures for accuracy about submitted data, hosting security logs, FormSubmit/Gmail processing, third-party cookies/anti-bot services, data retention and deletion handling; offer a precise accessible copy-only PR and verify no unapproved analytics are present (to make customer privacy promises match actual operations).
- [x] 2026-11-12 (done, kept privately as Claude's "First Customer Launch Checklist" doc): Prepare the final first-customer test-and-handover checklist, including real deployment through a client-owned approved host when authorised, two payment invoices, private preview, client signoff, fixes, domain ownership and access removal; note Google Search Console verification steps and do not create accounts or send messages without approval (to validate delivery end to end).

- [ ] 2026-11-12: Prepare a no-cost, safe GitHub → Cloudflare Pages automatic-deployment proposal and preview PR for the Paxlume portfolio site; use a NEW Git-integrated Pages project rather than converting the existing Direct Upload test, publish only website files, and show a verified staging deployment and rollback plan before requesting owner approval to switch hosting or change public addresses (to enable automatic updates without exposing project-management files or breaking enquiries/SEO).

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
- Bank transfer is the owner's approved preferred method and the owner reports their bank confirmed suitability. The owner also approved 50% on accepted agreement before work begins and 50% on final preview approval before launch/handover (A$125 + A$125 on the A$250 Starter package). Review contract/invoice wording and consumer rights with parent/guardian; no bank details in this public file.
- Approve an enquiry service after its age/terms/privacy review and activation requirements; confirm test email delivery.
- Agree on first-customer hosting provider and client-owned account setup.
- Approve all outbound customer communications and any actual publishing/change of public business promises.

## Owner payment decision — bank transfer (2026-11-12)
- **Owner preference:** accept payments for Paxlume Starter websites by ordinary Australian bank transfer into the owner's nominated bank account, **The owner reports their bank has confirmed the account is suitable for receiving these payments**. Owner/guardian should still review the account and contractual requirements applicable to their circumstances. No payment processor or card checkout needs to be installed at this stage.
- **PRIVACY / SECURITY:** The owner shared account details privately with ChatGPT. **Do not add, request, repeat, store, or commit any BSB, account number, account-holder identity or customer payment information to this public repository, `HANDOFF.md`, source HTML, JavaScript, screenshots, issues, pull requests, or public templates.** Account details belong only in a privately prepared invoice sent to an actual customer after the owner approves the invoice and independently verifies the payment instructions. Never request passwords, codes or banking login information.
- **Public-site wording proposed for owner approval:** `Payment by bank transfer; payment details are supplied privately on your invoice.` Do not imply the business is fully registered or that service terms have been finalised; these remain separate checks. **Do not publish or change website payment copy without an explicit preview and owner approval.**
- **Customer workflow:** agree in writing on scope, total amount (current Starter offer: A$250), invoice due date and cancellation/refund terms that comply with Australian Consumer Law. **Owner approved a 50% / 50% payment split: A$125 deposit after quote and agreement acceptance, before work begins, and A$125 balance after final preview approval and before agreed website launch/handover.** Both amounts are paid by bank transfer against privately supplied invoices; any different arrangement requires explicit owner approval. Use an accurate invoice template with seller details/ABN only when applicable, clearly identify GST correctly, and do not call an invoice a `tax invoice` unless GST-registered and the requirements are met.
- **Payment confirmation:** owner independently checks cleared funds through their own trusted banking interface, not a customer screenshot or emailed receipt, before marking an invoice as paid or carrying out a payment-dependent milestone. Track payment status privately and keep transaction records out of the repo. Do not initiate, approve, request or receive funds on the owner's behalf.
- **Claude next actions:** update the private-only quote/invoice and handover templates *conceptually* for bank transfer and invoice-based billing; provide any public-site wording as a PR preview, not a live edit. Document the remaining owner/guardian/bank decisions in `Questions for Ben`. Do not create checkout integrations or collect financial details through the website form.

### Approved payment milestones — update for Claude (2026-11-12)
- **Owner confirmation:** their bank confirmed their account can receive the intended business payments. Do not re-ask for bank details or publish them.
- **Approved split for A$250 Starter websites:** A$125 (50%) deposit **after the client accepts the written quote/agreement and before the work starts**, and A$125 (50%) final payment **after the client approves the final preview and before the agreed site launch or final handover**. Provide invoices privately for both milestones. For other project prices, use the same percentages only if the owner explicitly approves the quote.
- **Do not call deposits automatically non-refundable.** Clearly explain the cancellation/refund process in line with Australian Consumer Law, including obligations if work is cancelled, delayed or defective. Avoid promising an exact deliverable date until availability/content have been confirmed.
- **Claude action:** revise the private invoice template, quote template, service agreement draft and handover checklist to match these two milestones; include invoice numbering, due dates, payment references, and status tracking without any real account numbers. Do not publish account data or private docs in this public repo. If a payment FAQ change is useful, propose preview for owner approval, without revealing bank details.
- **Remaining approvals:** owner/guardian review of business registration, contracting/invoice wording and actual use of the payment process before first client. This handoff update is not authorisation to invoice or contact anyone.

## Claude update: bank transfer, templates and launch readiness (2026-11-12)
**Short version:** the private payment and delivery kit is done (workflow, quote, invoice, confirmation emails, revised agreement, handover checklist, hosting comparison, dry-run plan). PR #4 (payment wording + Starter template) was approved by Ben and merged. No bank details, customer records or private documents are in this repo; a scan of every file and the full git history found none.

**Private (not in this repo):** a "Payments and Delivery Kit" doc for Ben, linked from the private Business Kit, plus a printable invoice template file in Ben's private project files. They cover:
- **Workflow:** enquiry, quote (PAX-Q-YYYY-NNN, valid 30 days), written acceptance, deposit invoice A$125 (PAX-YYYY-NNN-D, due 7 days), work starts when cleared, preview, one round of changes, written approval, final invoice A$125 (PAX-YYYY-NNN-F, due 7 days), launch when cleared, handover, access removed, records kept privately for 5 years.
- **Invoice:** titled "Invoice", not "Tax invoice" (not GST-registered), "GST: not charged" line, bank details as `[BSB]` / `[Account number]` placeholders filled only on a real invoice, payment reference like PAX001D, and a scam warning that Paxlume never emails changed bank details.
- **Payment confirmation:** Ben checks cleared funds in his own banking app (never a customer screenshot or receipt), records it in the private tracker, then sends a "Payment received" email. One reminder after the due date; pause the job if still unpaid.
- **Agreement review:** the old draft's "deposit not refunded once a preview is sent" wording could read as a blanket no-refund rule. Version 2 ties refunds to work done, gives a full refund if Paxlume can't finish, keeps Australian Consumer Law rights, and adds payment method, due dates, reference, timing (10-14 business days, matching the site), client-owned hosting and seller identity.
- **Hosting (research only, no sign-ups):** recommend **Cloudflare Pages** in an account the client creates, with Netlify as fallback. Cloudflare free: 500 builds a month, 100 custom domains per project, 20,000 files, no credit meter, no minimum age found in its agreement. Netlify free: 300 credits a month (15 per production deploy, 20 per GB bandwidth), and every site in the account pauses when credits run out; minimum age 13; commercial use and third-party sites allowed. Handover: client opens the account and invites Paxlume as a member, Paxlume uploads, client removes Paxlume's access. Paxlume never holds client passwords.
- **Dry-run plan:** 12-stage fake job ("Test Co", job 000) from form to handover with pass checks. Not run yet; step 10 needs a test Cloudflare account, which needs Ben's and a parent/guardian's OK.

**Public (PR #4, merged and live 2026-11-12 with Ben's OK):** https://github.com/paxlumeweb/Paxlumeweb/pull/4
- Price card fine print adds: "Paid by bank transfer in two parts; payment details are supplied privately on your invoice."
- New FAQ "How do I pay?" explaining $125 + $125, bank details only on the private invoice, nothing paid through the website.
- `starter-template/` folder: reusable one-page client template (placeholders only, noindex, labelled as a template) with build and pre-preview checklists in its README.

**Gaps found:** private preview links need the client's hosting account first (until then, preview by screenshots); client build folders need a private home (Ben's computer plus business Google Drive); client sites are uploaded by hand, never through this public repo.

## Claude update: design clean-up, launch checklist and legal pages (2026-11-12, PR #5, merged)
Ben sent three lists. Everything below was in one pull request. Ben said merge on 2026-11-12 and it is live.

### List 1: generic "AI look" removed
| Pattern | Found? | What changed |
|---|---|---|
| Gradient hero text | No (headline uses solid mint) | Also removed the mint glow gradients behind the hero and contact box |
| Emojis in headings | Demos only (emoji "photos" in galleries, ✦ in ticker strips) | Replaced with plain "Photo placeholder" blocks and plain text |
| Inter font | Not on the site, but the social share image used it | Share image redrawn in the site's own fonts (DM Sans and Outfit, kept) |
| Coloured border cards | Only the amber pill tags | Tags are now plain text |
| Glassmorphism | Yes, blurred see-through header | Solid navy header |
| Low-contrast dark mode | No dark mode; a few low-contrast spots | Fixed: form borders and placeholders, demo accent colours, small mockup text |
| 3 icon boxes in a row | Yes, "Why Paxlume" section | Now a plain list next to the heading, no icons |
| Badge above headlines | Yes, hero pill plus small labels above every heading | Hero line is plain text; repeated labels removed |
| Lucide-style icons | Yes, the 3 icons in "Why Paxlume" | Removed |
| Untouched shadcn/ui | No (plain HTML/CSS) | Nothing to change |
| Fade in on scroll | Yes | Removed; content shows straight away |
| Cursor-following beam | No | Nothing to change |
| Button fade on hover | Yes (fade, lift and glow) | Instant colour change, no glow |
| Inconsistent spacing | Yes (30/32/34px, 56/60/70px gaps) | 8px-based spacing throughout |
| Em dashes | Demos only | Removed |
| Buzzword copy | Yes ("clean, modern", "bold, premium", "Simple services. Great results.") | Plain, factual copy |
| Serif italic accents | No | Nothing to change |
| Space Grotesk / Instrument Serif | No | Nothing to change |
| Grain texture | No | Nothing to change |
Also removed: floating animation on the hero mockups and the "Looks great on phones" floating tag.

### Lists 2 and 3: launch and legal checklist
- Already there and checked: privacy page, meta titles and descriptions on every page, favicon, social preview image, form validation, honeypot spam field, mobile layout, keyboard navigation (skip link, visible focus, menu and FAQ work by keyboard), no fake reviews, demos labelled fictional, business details (name, Brisbane QLD, email).
- Added: Terms of service page (`terms.html`), Refund policy page (`refunds.html`, no "no refunds" wording, keeps Australian Consumer Law rights), custom 404 page, `sitemap.xml`, `robots.txt`, canonical links, footer links to Privacy, Terms and Refunds, a 3-second anti-bot check on the form.
- Privacy page now covers: GitHub Pages hosting logs, a Cookies section (the site sets no cookies, so no banner is needed), a clear "Delete my details" email option, a children's note (site is for businesses), and a safety note about bank details.
- Fonts: now stored on the site instead of Google Fonts, so no visitor data goes to Google. Both fonts are SIL Open Font License (licence files in `fonts/`). All images and illustrations are Paxlume's own.
- Secrets: none in the front end. The FormSubmit form address is a public alias, which is how FormSubmit is meant to be used.
- HTTPS: GitHub Pages always enforces HTTPS on github.io addresses. All links use https.
- Broken links: none found.
- Speed (Lighthouse, mobile, local test): 100 performance, 100 accessibility, 100 best practices, 100 SEO on every public page. Homepage is 116 KB in total and shows its main content in 1.7 s on a simulated slow phone.
- Images: share image compressed from 100 KB to 19 KB. There are no other images.
- Not added, and why: cookie banner (nothing sets cookies), analytics (needs Ben's choice first), age gate (the site is for businesses; privacy page says under-18s need a parent or guardian), unsubscribe link (the site sends no marketing emails).
- Needs Ben and a parent or guardian before merging: the Terms and Refund pages are plain-English drafts based on agreement v2, not legal advice. They mention 7-day invoices and 30-day quotes (Questions for Ben #3) and the A$60 cap (#2).
- `robots.txt` only works at the root of a domain, so it takes effect once Paxlume has its own domain. Until then, submit `sitemap.xml` in Google Search Console.

## Claude update: ChatGPT's review of PR #5 (2026-11-12, PR #6, merged and live)
PR #6: https://github.com/paxlumeweb/Paxlumeweb/pull/6. This PR changes wording only, with no design changes. It is not legal advice.
- **Finding 1, refund policy:** removed the automatic loss of the $125 deposit after a preview. If the client changes their mind, the charge covers only work actually done, is explained in writing, is capped at the deposit, and the rest is refunded. Before a preview the cap stays at $60. Cancelling because of a fault or mismatch with the quote is not a change of mind: Paxlume fixes it free first, then refunds under the ACL with no charge. **The cap amounts need Ben and a parent/guardian to agree.**
- **Finding 2, terms:** added that neither the quote nor the terms can limit ACL rights. "No other fees" now separates Paxlume's fees from third-party domain and hosting costs. The cancellation summary now matches the refund policy. 7-day invoices and 30-day quotes are unchanged until Ben confirms them. ABN/GST wording is still waiting on the registration decision.
- **Finding 3, privacy:** now separates what the form collects from technical logs kept by GitHub, FormSubmit and Google. Added that with JavaScript off, FormSubmit's page may show a Google reCAPTCHA check. Legally required records (invoices and payments, about 5 years) are kept. Deletion now covers only Paxlume's own copies, plus how to contact the other services.
  - The cookie claim was tested: across all 9 pages and the form submission there were no cookies, no localStorage, no external requests (fonts are self-hosted) and no analytics.
- **Finding 4, 3-second check:** it used to block every press within 3 seconds of page load. It now shows the message once and always lets the second press through. Tested with a mocked endpoint.
  - The no-JS path goes to FormSubmit's own page (with reCAPTCHA) and then `thank-you.html`.
  - `robots.txt` only works at a domain root (already noted). Submit the sitemap directly in Search Console.
- **Task 3, first-customer checklist:** kept privately as a Claude Doc, "First Customer Launch Checklist". It covers approvals before the first quote, the 12-step job (quote, two invoices, build, client-owned Cloudflare preview, sign-off, launch), handover (client-owned domain, files, access removal, 5-year records) and Search Console steps (HTML-tag method; Ben sends Claude only the meta tag line). Nothing was created or sent.

## Claude update: Cloudflare Pages automatic deployment (2026-11-12, PR #7, merged)
PR #7 prepares a **staging** Cloudflare Pages deployment from GitHub. The public site, its canonical URLs, form, sitemap and GitHub Pages are unchanged. Full steps, limits and rollback: `CLOUDFLARE.md`.
- **Build (ChatGPT finding 3):** `bash scripts/build-site.sh` copies an allowlist of 9 pages plus CSS, JS, fonts, images, robots and sitemap into `dist/`; Cloudflare serves only `dist/`. `HANDOFF.md`, `README.md`, `CLOUDFLARE.md`, `starter-template/` and `scripts/` are never served. The build fails if an internal file reaches `dist/`, a local link or asset is broken, or a new root page isn't on the allowlist. No framework or dependencies.
- **Paths (finding 4):** the build rewrites `404.html`'s `/Paxlumeweb/` links to `/` in `dist/` only, so the source still works on GitHub Pages. Tested: 404 page renders with styles and fonts at the site root, no failed requests on any page (desktop and phone).
- **SEO (finding 5):** every Cloudflare response gets `X-Robots-Tag: noindex` (Cloudflare adds this to previews itself; the build adds it to the production `pages.dev` address too). Canonicals still point to GitHub Pages. One canonical, one sitemap, one Search Console property until Ben approves a switch. Two optional variables, `PAXLUME_INDEXABLE` and `PAXLUME_SITE_URL`, exist for switch time; leave them unset.
- **Form:** previews switch the quote form off (email fallback shows), so previews never send enquiries or trigger FormSubmit activation emails. On `main` the form stays on and the no-JS thank-you redirect stays on the Cloudflare host. FormSubmit approves each website address separately, so the Cloudflare address will need one activation click by Ben (step 3 in `CLOUDFLARE.md`).
- **Finding:** GitHub Pages serves every file in the repo, so `HANDOFF.md`, `README.md` and `starter-template/` can be opened on the github.io site today. Nothing private is in them (the repo is public), and the Cloudflare build fixes it once Cloudflare becomes the public host.
- **Cost:** Cloudflare Pages Free plan, A$0, 500 builds a month. Excluding `HANDOFF.md` with build watch paths keeps handoff commits from using builds.
- **Not done (needs Ben):** connecting Cloudflare to GitHub, merging, the FormSubmit test, and any switch of the public address.

### Steps needing Ben's approval, in order
1. ~~Review PR #7~~ Done: Ben said merge on 2026-11-12.
2. With a parent or guardian, connect Cloudflare to GitHub: `CLOUDFLARE.md` step 1 (new project, **only** the Paxlumeweb repository, build command `bash scripts/build-site.sh`, output `dist`). Leave `paxlume-hosting-test` alone. Tell Claude the `pages.dev` address; never share tokens or passwords.
3. Claude checks the preview build. Ben looks at the preview on phone and computer and says merge.
4. Form test on the Cloudflare address: one activation click in Gmail, then a test enquiry (step 3).
5. Later and separately: whether and when to switch the public site, and to which address (step 5). A custom domain would cost money.

## Tasks for ChatGPT
<!-- Non-code jobs Claude can't do (Claude has no Gmail access). Nothing private here. -->
- [ ] 2026-11-12: Review every policy page with Ben and a parent or guardian (plain-English drafts, not legal advice). Note any wording to change under "Questions for Claude" and Claude will update the pages. Read them live (each file is in the repo root):
  - Terms of service: https://paxlumeweb.github.io/Paxlumeweb/terms.html (`terms.html`). Check: legal name and ABN wording, 7-day invoice due dates and 30-day quote validity (Questions for Ben #3), payment split, ownership and hosting, timeline wording.
  - Refund policy: https://paxlumeweb.github.io/Paxlumeweb/refunds.html (`refunds.html`). Check: the A$60 cap before a first preview (Questions for Ben #2), deposit kept after a preview, 10-business-day refund time, and that Australian Consumer Law rights are kept.
  - Privacy notice, including the Cookies, delete-my-details and children sections: https://paxlumeweb.github.io/Paxlumeweb/privacy.html (`privacy.html`). Check: that it matches how Ben really handles enquiries in Gmail, how long enquiries are kept (Questions for Ben #7), and that "no cookies, no analytics" is still true.
  - Quote form privacy line and the payment FAQ on the homepage: https://paxlumeweb.github.io/Paxlumeweb/#contact and #faq (`index.html`). Check: they agree with the pages above.
  - The 404 and thank-you pages (`404.html`, `thank-you.html`) have no policy wording, so they don't need legal review.
- [ ] 2026-11-12: Help Ben choose analytics. Claude recommends Cloudflare Web Analytics (free, no cookies, no banner needed, and Cloudflare is already the plan for client hosting). Don't sign up until Ben and a parent or guardian agree to Cloudflare's terms; then tell Claude the site token so it can be added and the privacy page updated.
- [ ] 2026-11-12: Help Ben set up Google Search Console for the site and submit `sitemap.xml` after PR #5 is merged (so Google finds the pages).
- [ ] 2026-11-12: Any future outreach or follow-up email templates must include Paxlume's name, the business email and a clear way to opt out (Spam Act 2003). Add this to the email templates you keep in Gmail.
- [ ] 2026-11-12: Set up a Gmail label or filter for "Delete my details" requests and a short reply template confirming deletion (the privacy page now offers this).
- [ ] 2026-11-12: Follow up the open ABN and legal-name questions (Questions for Ben #1 and #4); the terms page says the legal name and any ABN appear on quotes and invoices.

## ChatGPT independent review of PR #5 and launch readiness (2026-11-12)
**Scope verified:** GitHub source files `index.html`, `terms.html`, `refunds.html`, `privacy.html`, `thank-you.html`, `404.html`, `script.js`, `robots.txt`, `sitemap.xml` and `starter-template/README.md`; PR #5 changed-file list and latest `HANDOFF.md`. The live GitHub Pages site was not fetchable from ChatGPT's web reader, so **do not treat this as an independent live-browser, mobile screenshot, Lighthouse or real-form-delivery test**. Claude reports successful deploy/tests, but those claims were not independently reproduced in this review.
### Findings requiring Claude action
1. **High priority: refund policy.** `refunds.html` says the complete A$125 deposit 'isn't refunded' automatically after any preview, without considering work actually performed or circumstances. Even though it includes a statutory rights savings sentence, the fixed automatic forfeiture may be an unfair contractual term or misleading in some circumstances. Revise after owner and parent/guardian review to distinguish change-of-mind cancellations, reasonable documented work/costs, and statutory service-failure remedies; do not introduce a blanket 'non-refundable' rule. The separate A$60 maximum for pre-preview cancellation is more favourable to customers but should still be checked against real work/costs and agreement wording. Sources: https://www.accc.gov.au/consumers/buying-products-and-services/contracts and https://www.accc.gov.au/business/problem-with-a-product-or-service-you-sold/repair-replace-refund-cancel
2. **Medium priority: legal terms consistency.** `terms.html` correctly has the A$250 total, A$125 + A$125 invoices, 7-day due date, 30-day quote life, a 10–14-business-day estimate, one revision round, fictional demo disclaimer and customer-owned hosting. The sentence 'if quote and these terms disagree, the quote applies' should clarify that neither can override mandatory legal rights. 'There are no other fees' should be qualified to distinguish Paxlume's scope from optional third-party domains/hosting paid directly by the client. Verify seller identity/ABN and GST statements once the owner's registration position is resolved.
3. **Medium priority: privacy accuracy.** `privacy.html` says 'I don't collect anything else through this website', while it also acknowledges GitHub may log technical metadata; clarify direct form collection versus service-provider processing. It says 'This website doesn't set any cookies'; Claude should validate that statement across submission/anti-bot flows and update it before adding analytics. Clarify account-level deletion: business can act on its Gmail copies, but cannot promise to remove independent processor records without a supported request process. Keep retention promises enforceable and distinguish legally-required financial records.
4. **Technical UX:** `script.js` validates required form fields and uses a FormSubmit AJAX endpoint, but the 3-second anti-bot check could inconvenience fast legitimate visitors. Test the effect, including keyboard/mobile and disabled-JavaScript paths. Source review is not a replacement for live end-to-end testing. `robots.txt` at the project subdirectory is not the origin root's robots exclusion file; sitemap can still be submitted directly in Search Console.
5. **Existing wins:** `index.html` contains a form, alternative email, appropriate fictional labels, and the approved pricing; `404.html` uses absolute project-base asset links, `thank-you.html` is noindex, and the Starter template is clearly a placeholder. PR #5 changed self-hosted fonts, legal pages, and SEO files. Continue protecting all account numbers, customer information and tokens from public commits.

### ChatGPT-completed non-code tasks
- Created Gmail label `Paxlume/Privacy & Deletion Requests` (confirmed through Gmail connector). Gmail's connected actions here do **not** expose creation of automatic filtering rules; owner can create a Gmail filter for subject 'Delete my details' manually in Settings > See all settings > Filters and Blocked Addresses. No customer messages were sent, deleted or archived.
- Reviewed official Australian sources: ACCC contract fairness and consumer remedies; business.gov.au and ASIC on ABNs/sole traders/business-name registration; ACMA on consent-first marketing; OAIC on privacy duties; Google Search Console on URL-prefix ownership verification. No registration, website ownership verification, analytics signup or external messages were performed.
- **Deletion acknowledgement draft (only after actually processing a verified request):** 'Subject: Your privacy request — Paxlume Web Studio\nThanks for contacting Paxlume. I have completed the action I can take on the records held by Paxlume as described in my reply. If any information must be retained for a legal obligation, I will explain that separately. Please reply if you have any questions.' Verify the sender's identity and actual deletion before saying it is completed; don't imply third-party deletion without confirmation.
- **Search Console owner steps:** in `https://search.google.com/search-console`, select a URL-prefix property `https://paxlumeweb.github.io/Paxlumeweb/`, use HTML-tag ownership verification and give Claude only the non-secret verification meta tag for a reviewed PR (or independently insert it), verify ownership, then submit `https://paxlumeweb.github.io/Paxlumeweb/sitemap.xml`. Do not publish a token/password or claim this is already done. Reference: https://support.google.com/webmasters/answer/34592 and https://support.google.com/webmasters/answer/9008080
- **Analytics recommendation:** defer Cloudflare Web Analytics until first customer-readiness and legal/host setup are complete. It is not required for initial outreach; adding any analytics requires owner approval, age/terms review and privacy notice verification. Prioritise Search Console first.
- **Consent-based outreach:** prepare responses to incoming enquiries and personal introductions only; do not bulk-contact scraped leads. Commercial marketing emails/SMS generally need consent, accurate identification and a workable unsubscribe mechanism. Reference: https://www.acma.gov.au/avoid-sending-spam

### Questions remaining for owner and suitable adult before first deposit
1. Review ABN entitlement and registration of 'Paxlume Web Studio' business name, plus seller legal identity on invoices. No ABN or business-name registration is confirmed.
2. Review and authorise fair cancellation/refund terms; decide whether to keep 7-day invoices and 30-day quotes as currently published (these were never explicitly answered).
3. Approve an appropriate hosting-service account and a no-real-customer-data dry run. Do not register or deploy until then.
4. Confirm the practical process for storing/deleting enquiries, including accurate privacy statements, and do not make an unfulfilled 2-day reply promise.
5. Approve the updated Terms, Refund and Privacy copy after reviewing proposed PR; send no invoices or marketing until the legal/payment framework is settled.

## ChatGPT review — live verification and Cloudflare GitHub auto-deployment (2026-11-12)
**Owner request:** The owner has deployed a free fictional practice site using Cloudflare's Direct Upload in their Cloudflare account, and says it works. They want a proposal for connecting the real `paxlumeweb/Paxlumeweb` GitHub repository to Cloudflare so approved GitHub changes automatically deploy, while improving discoverability, and want Claude's latest work independently reviewed. This is approval to *research/prepare* a proposal and PR, **not** permission to move the public website, install an app, connect accounts, register a domain or publish a new canonical URL.

### Independent checks completed by ChatGPT
- Connected GitHub current `main` file content and `HANDOFF.md` reviewed, including PR #6 changes to `refunds.html`, `terms.html`, `privacy.html` and `script.js`. Compared the public live pages using an independent public-page retrieval (not Claude's report).
- **Live:** `https://paxlumeweb.github.io/Paxlumeweb/` loads with the expected site title, fictional demo disclaimers, A$250 Starter offer, bank-transfer two-part payment FAQ and correct GitHub Pages canonical. External static-page retrieval confirmed links and metadata; **no independent Lighthouse, visual mobile screenshot, anti-spam or live form submission test was run**.
- **Live:** `https://paxlumeweb.github.io/Paxlumeweb/refunds.html` contains PR #6's more balanced wording: actual work, written explanation, A$60 cap before preview, up to A$125 after preview, ACL remedies preserved. These caps and legal wording **still require owner/guardian review**, and private agreement v2 needs alignment.
- **Live:** `https://paxlume-hosting-test.pages.dev/` loads with title 'Paxlume Hosting Test — Fictional Demo', `noindex,nofollow`, nonfunctional fictional contact buttons and no customer details. This matches the owner's screenshot of a successful production deployment. **This Direct Upload project is a practice/test deployment, not the real Paxlume portfolio site and not an auto-deploy pipeline.**
- **Reviewed source:** PR #6 JavaScript changed the anti-bot 3-second check to permit a second submit attempt. Code and public content were reviewed, not empirically retested on every browser.

### Critical hosting findings — consult current official Cloudflare docs
1. Cloudflare Pages' **native Git integration creates a NEW Pages project**. An existing Direct Upload project like `paxlume-hosting-test` cannot be converted to Git integration (https://developers.cloudflare.com/pages/get-started/direct-upload/). Leave that working test project untouched for practice.
2. A new Git-linked Pages project connected to `paxlumeweb/Paxlumeweb` can auto-deploy commits to `main`, create preview links for PR branches, and report checks to GitHub (https://developers.cloudflare.com/pages/configuration/git-integration/ and https://developers.cloudflare.com/pages/configuration/git-integration/github-integration/). Account owner must authorise the Cloudflare Workers & Pages GitHub App, ideally with **only this repository** selected, and review age/account terms with parent/guardian. Do not ask for access tokens or passwords in chat or public GitHub.
3. **The whole repo must not be published as the site.** It contains `HANDOFF.md`, `starter-template/`, documentation and other source artifacts. Even though the repo itself is public, do not automatically serve internal coordination files as website pages. Claude should propose a minimal, reproducible site-only build output (for example a staged `dist/` or `public/` folder produced from an allowlist of approved website files) and configure Cloudflare's build/output settings accordingly. Keep the existing GitHub Pages deployment working. Audit allowlist exclusions (handoff, README, starter template, notes, test data, any hidden secrets).
4. **GitHub Pages versus Cloudflare root paths:** existing `404.html` links/assets use `/Paxlumeweb/` root-absolute paths; they will break on `*.pages.dev` unless adapted. Some form redirects (hidden `_next`), sitemap, canonical links, Open Graph URLs, metadata and preview-link logic explicitly target `https://paxlumeweb.github.io/Paxlumeweb/`. Review and propose host-neutral links or environment-dependent output without creating wrong SEO duplicates; test that FormSubmit accepts submissions from the NEW origin/host (activation may need confirmation) and preserves accessibility/spam/error paths.
5. **Discoverability is distinct from hosting.** A second `pages.dev` URL does not automatically improve search visibility. Keep one selected canonical URL and one sitemap/Search Console property; consider a custom domain later only after owner decision and possible cost. Do not switch canonical, form URL, sitemap, domain, or DNS without explicit owner approval and successful tests. Do not redirect the working GitHub URL prematurely.
6. **Safe delivery requirements:** draft a deployment architecture/proposal; create a branch and PR with the proposed site-only build, steps/permissions, branch control and preview staging (not automatic public migration). Owner reviews screenshots and before/after links. Test on an independently named **NEW** Git-integrated Cloudflare Pages staging project only after owner approval. Confirm every public page, fictional demo, FAQ, privacy/terms/refund pages, form (including real test delivery to Gmail), 404, fonts, metadata, mobile and staging robots noindex before considering production switch. Record rollback steps. Keep bank data, customer data, secrets and account credentials out of source and build logs.
7. **Do not attach an unrelated customer's site to this Paxlume business GitHub repository.** Customer sites should remain isolated and hosted on customer-owned accounts with permissions reviewed individually.

### Latest review / next task for Claude
- Prepare the **first safe GitHub-to-Cloudflare automatic-deployment proposal and preview PR**, not a live migration. Explain chosen build system and output directory for pure static HTML/CSS/JS, precise Cloudflare Pages Git setup click-path, required permissions, GitHub branch/PR preview workflow, cost/limits, how to prevent `HANDOFF.md` from publishing, path/SEO/form fixes, a checklist for owner review and rollback.
- For the policy review, acknowledge PR #6 is verifiably published and **do not repeat already fixed PR #5 findings**. Main remaining policy blockers: parent/guardian approval of proposed cancellation caps and private agreement alignment; invoice seven-day/quote thirty-day confirmation; ABN/business name/legal identity. No legal terms approvals were given by ChatGPT.
- **Owner action:** create/authorise a new Cloudflare Git integration only after reviewing the proposal; the existing Cloudflare practice site already works and need not be deleted. Set up Search Console for the primary canonical site when ready.

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
- 2026-11-12: Bank transfer: wrote the private payment workflow, quote, invoice (plus printable template), payment confirmation and reminder emails, revised service agreement (v2) and handover checklist for the approved A$125 + A$125 split. Scanned the repo and history for bank or customer data: none.
- 2026-11-12: Opened draft PR #4: payment wording preview (price card + "How do I pay?" FAQ) and the reusable `starter-template/`. Screenshots kept in Ben's private project files. Not merged.
- 2026-11-12: Ben approved; PR #4 merged.
- 2026-11-12: Hosting research done (Cloudflare Pages recommended, Netlify fallback) and end-to-end dry-run plan written. No accounts created.
- 2026-11-12: Opened PR #5: removed generic AI design patterns, added terms, refund, 404, sitemap and robots pages, self-hosted fonts, cookie and data-deletion sections in the privacy notice, contrast fixes and a new share image. Lighthouse 100 across the board. Full list in the "Claude update: design clean-up" section.
- 2026-11-12: Ben said merge; PR #5 merged and live. The Terms and Refund pages are live drafts: ChatGPT task 1 (review with a parent or guardian) still applies.
- 2026-11-12: Acted on ChatGPT's PR #5 review: PR #6 (refund, terms and privacy wording, plus a 3-second check fix) with screenshots, not merged. First Customer Launch Checklist written privately.
- 2026-11-12: Ben said merge. PR #6 merged; refund, terms and privacy changes confirmed live.
- 2026-11-12: Prepared the Cloudflare Pages automatic deployment (PR #7, staging only): allowlist build into `dist/`, internal files excluded, noindex on Cloudflare, previews with the form off, `CLOUDFLARE.md` with Ben's setup steps, form test and rollback. Public site unchanged.
- 2026-11-12: Ben said merge; PR #7 merged. Next: Ben connects Cloudflare (CLOUDFLARE.md step 1). Because the build script is now on `main`, the first Cloudflare build should succeed straight away.

## Questions for Ben
_Updated 2026-11-12 by Claude. Details are in Ben's private Payments and Delivery Kit and First Customer Launch Checklist._
1. **ABN (with parent/guardian):** without an ABN, a business client may withhold 47% of a payment unless an ATO exception applies and you give them a signed supplier statement (which includes your address). Recommendation: apply for a free ABN before the first business client.
2. **Refund wording (with parent/guardian):** PR #6 replaces "deposit kept after a preview" with a charge for work actually done, explained in writing. Approve the caps: up to A$60 before a preview and up to the A$125 deposit after one (or pick lower amounts). There is no charge if the cancellation is because of a fault. If approved, the private agreement v2 needs the same change.
3. **Due dates and quote validity:** invoices due 7 days after issue, quotes valid 30 days. OK?
4. **Legal name on invoices:** invoices say "[your legal name] trading as Paxlume Web Studio". A business name other than your own name legally needs registering (A$47 a year). Decide with a parent/guardian.
5. **Dry run:** OK (with parent/guardian) to create one free test Cloudflare account to practise the client handover, then delete it?
6. **Reply promise** (still open): promise a reply time, such as 2 business days?
7. **Keeping enquiries** (still open): delete enquiries that don't go ahead after a set time, such as 12 months?
8. **Cloudflare connection (with parent/guardian):** OK to connect a new Cloudflare Pages project to the Paxlumeweb repository (only that repository) as a staging copy? Steps in `CLOUDFLARE.md`. Free, and the public site doesn't move.
9. **Analytics:** OK to use Cloudflare Web Analytics (free, no cookies)? It needs a Cloudflare account, so a parent or guardian should agree to the terms.

## Rules (always)
- Demo sites stay clearly labelled as fictional samples.
- No fake reviews or made-up testimonials.
- Ben approves before any customer message is sent, any money is spent, or any big decision is made.
- No mass outreach or spam (Australian spam law).
- Never ask for or store passwords or codes.
- Keep the existing visual design unless Ben asks for a change. Ben likes seeing a preview before design changes go live.
