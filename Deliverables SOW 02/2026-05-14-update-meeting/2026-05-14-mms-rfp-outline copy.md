# Member Management System — RFP Outline

**RFP Designation (draft):** GG-2026-MMS-001
**Prepared for:** Gold's Gym Technology Decision Council
**Prepared by:** StackHack Labs (Phase 1/2 project team)
**Document version:** v0.1 — Outline for internal review
**Issue date:** 2026-05-14
**Status:** Internal draft. Not for vendor distribution until approved by the Decision Council.

---

## About This Document

This is an **annotated outline** of the Member Management System (MMS) RFP. It is the first artifact in a two-stage drafting process:

1. **Stage 1 (this document)** — Section-by-section structure with intent statements, source citations, and what each section will ask of vendors. Designed to be scanned in 10 minutes by the Decision Council to align on scope, weighting, and gaps before drafting begins.
2. **Stage 2 (follow-up)** — Vendor-ready prose expansion, dates inserted, integration inventory finalized, appendices populated, contract language reviewed by counsel.

**Why this outline first.** The MMS is the largest application in the Gold's Gym technology stack and the gating dependency for unifying app, website, billing, and franchise reporting. Issuing a precise, well-structured RFP is itself a signal to vendors that Gold's is a serious, well-prepared buyer with rigorous governance. That signal acts as a filter: vendors who cannot meet the non-negotiables self-deselect before consuming evaluation cycles, and vendors who can respond well differentiate themselves clearly.

**This outline builds directly on Gold's existing project materials:**

- The Member Management vendor non-negotiables, evaluation rubric, and standardized vendor questions captured in the Member Management one-pager (`Deliverables SOW 02/convention-deck/member-mgmt-one-pager.html`).
- The vendor short-list and Phase 1/2 execution plan in the convention deck (`Deliverables SOW 02/convention-deck/execution.html`).
- The Assemble-strategy framing and current-state findings from the Phase 0 final report (`Deliverables SOW 01/final-report/`).
- The data-platform options summarized in the data-platform appendix (`Deliverables SOW 02/convention-deck/data-platform-appendix.html`).

**How to read each section below.** Heading → 2–5 sentences explaining what the section will contain, what vendors must answer, and the source the requirement comes from. Critical-vs-Desired requirement distinctions are flagged but not enumerated at the line-item level (that is Stage 2 work).

---

## Proposed Table of Contents

0. Document Control
1. Strategic Context & Introduction
2. Purpose & Scope of This RFP
3. Current Environment
4. Strategic Principles & Non-Negotiables (Hard Stops)
5. Functional Requirements (Module-Based)
6. Technical & Integration Requirements
7. Franchise & Multi-Tenant Architecture
8. Security, Compliance & Data Privacy
9. Service Levels (SLA)
10. Implementation, Migration & Change Management
11. Commercial Terms & Pricing
12. Vendor Qualifications & References
13. Evaluation Criteria & Scoring Methodology
14. Proof-of-Capability Demonstrations
15. Submission Process
16. Contract Terms (Reference)
17. Appendices A–F

---

## 0. Document Control

RFP number, version, issue date, primary contact (designated Gold's Gym procurement lead), confidentiality notice, revision history. Frames the RFP as a formal procurement instrument, not an informal vendor inquiry, and gives vendors a single channel for all questions.

---

## 1. Strategic Context & Introduction

### 1.1 About Gold's Gym

Brand footprint (~400 US locations), franchise and corporate ownership model, asset-light operating philosophy, scale of the member base (specific numbers to be confirmed by Finance before vendor distribution). Frames who the buyer is and the network the vendor will be serving.

### 1.2 The Transformation in Motion

One-paragraph summary of the Phase 0 audit finding: a fragmented stack of 20+ applications across 6–7 vendors with no central ownership, leading Gold's to adopt the "Assemble" strategy — Gold's owns the data layer and consumer experience, and best-in-class vendors plug into a Gold's-controlled integration layer. Tells the vendor exactly what world they are entering and what role they are being asked to play.

### 1.3 Why This RFP, Why Now

MMS is the lead procurement in the Assemble execution. Indicative timeline: RFP release late May 2026, written responses due in early July, finalist demonstrations through July, selection in August, implementation kickoff September 1, 2026. Conveys urgency without rushing the buyer; specific dates inserted in Stage 2.

### 1.4 What Gold's Believes (Operating Principles)

Direct quotes of the Assemble principles, set in the body of the RFP so vendors cannot miss them:

- "We assemble the platform — we do not rent it."
- "All member data belongs to Gold's, not the vendor."
- "Vendors operate within our system, not outside of it."

This establishes the negotiating posture upfront. Vendors whose commercial or technical model conflicts with these principles know it immediately.

---

## 2. Purpose & Scope of This RFP

### 2.1 In Scope

Core MMS plus tightly-coupled retail POS:

- Member lifecycle (join, onboarding, freeze, cancel, win-back)
- Membership plans and pricing configuration
- Billing and collections (ACH, card, dunning, chargebacks, settlement)
- Check-in and gate/kiosk integration
- Travel pass / multi-location usage tracking
- Retail POS with member-account linkage
- Operational reporting and franchisee scorecards
- Transactional member communications (receipts, billing notices, freeze confirmations)

### 2.2 Out of Scope (Adjacent Procurements)

Listed explicitly so vendors do not bundle these into their proposal or pricing:

- CRM (Gold's incumbent: HubSpot; future state TBD)
- Member-facing mobile app (Gold's incumbent: Motion Vibe)
- Unified data platform (Databricks / Snowflake / Microsoft Fabric — selection in flight)
- Marketing automation and campaign management

### 2.3 Integration Dependencies

The MMS vendor must integrate cleanly with — but not own — the systems above plus the payment processor, gate-control hardware, and Gold's data warehouse. Full integration inventory in Appendix D.

---

## 3. Current Environment

### 3.1 Network Profile

Location count (~400), corporate vs. franchisee split, peak concurrent load expectations during prime gym hours, member base size, transaction volumes. Placeholders to be filled by Finance and Operations before vendor distribution.

### 3.2 Incumbent MMS

ABC / Motionsoft is the current MMS, under evaluation for replacement. Framed externally as "modernization driven by strategic transformation" rather than as an indictment of the incumbent — this preserves a constructive negotiating posture and keeps ABC's upgraded path as a live candidate in the field. Internal scoring is not disclosed externally.

### 3.3 Adjacent Systems Today

Motion Vibe (member app, retained), HubSpot (CRM, corporate only, retained near term), Demotu (PT and training), current gate-control hardware, current payment rails. Vendors should plan to integrate with these on day one.

### 3.4 Known Gaps the Vendor Must Help Close

Pulled from the Phase 0 pain-point inventory so vendors can see exactly what "better" looks like:

- 48-hour latency between MMS and CRM (target: real-time)
- Paper travel passes with no digital tracking (target: digital, multi-location, settlement-ready)
- 3-week manual join-online setup (target: same-day activation)
- No real-time franchisee-level reporting from corporate
- No centralized member view across locations

---

## 4. Strategic Principles & Non-Negotiables (Hard Stops)

These come directly from `member-mgmt-one-pager.html` and are reproduced **verbatim** in the RFP body. They are placed early so vendors who cannot meet them self-deselect before investing in a full response. The one-pager language is unambiguous: "If a vendor cannot meet these requirements, they do not advance past initial evaluation. No exceptions."

- 4.1 **Full data ownership** — Gold's owns all member data, schema, derived data, and outputs. Vendor has usage rights for service delivery only. Contractual, not promissory.
- 4.2 **Real-time API access** — REST APIs and webhooks supporting event-driven, real-time sync. Batch-only architectures do not meet the bar.
- 4.3 **Multi-location franchise architecture** — Built for franchise from the ground up. Single-club products with multi-location bolted on do not meet the bar.
- 4.4 **Documented data export and migration commitment** — Standard formats (CSV, JSON, Parquet), full historical export, and contractual cooperation with any future migration.
- 4.5 **U.S. market support** — Coverage, compliance familiarity, support hours aligned to U.S. operations.
- 4.6 **POS / retail capability** — Integrated into or tightly coupled with the MMS. Members and retail transactions must share one account of truth.
- 4.7 **Open ecosystem and Assemble-model compatibility** — The vendor operates as an open platform, not a closed suite. APIs are first-class and primary, not afterthoughts. The vendor-supplied UI is optional rather than mandatory. Gold's can freely integrate third-party CRM, app, marketing, analytics, and PT tools without commercial penalty, support degradation, or roadmap deprioritization. Closed-ecosystem vendors who require customers to adopt their full suite of adjacent products to get full value do not meet this bar — even if their feature set is rich. The most efficient way to think about the bar: the vendor should be comfortable being the headless system of record while Gold's owns workflows and member experience on top.

Each non-negotiable becomes a self-attestation line in Appendix E. A "no" on any line ends the evaluation.

---

## 5. Functional Requirements (Module-Based)

Each subsection is organized as **Critical vs. Desired** requirements. Critical means the vendor must confirm full support. Desired requirements are scored on capability depth and elegance. Line-item enumeration is deferred to Stage 2.

### 5.1 Member Lifecycle

Join online with same-day activation and optional Gold's-owned front-end UX, in-club join, onboarding flows, freeze and cancel with retention triggers, pause and reactivation, win-back outreach hooks. The join flow specifically must support Gold's hosting the customer-facing form while the vendor handles activation downstream.

### 5.2 Membership Plans & Pricing

Corporate-defined templates that franchisees apply locally; franchisee control over local pricing within corporate-set bounds; bundled plans; family memberships; promotional pricing windows. Configuration hierarchy is part of Section 7 (franchise architecture).

### 5.3 Billing & Collections

ACH validation, card processing, automatic retry on failure, dunning workflows with branded communications, chargeback handling, refund workflows, settlement and reconciliation reporting at location and corporate roll-up. ACH and dunning are explicitly called out because the incumbent's weakness here is a known driver of net-collections loss.

### 5.4 Check-in & Access Control

Integration with gate, turnstile, and kiosk hardware; multi-location access entitlement checks; anomaly handling (expired card, frozen membership, restricted location); audit logging for security incidents. Vendor must specify which hardware lines are supported out of the box.

### 5.5 Travel Pass / Multi-Location Usage

Digital tracking of cross-location visits, reporting to home and visited locations, support for any settlement or revenue-share arrangement between locations. Replaces paper-based pass system entirely.

### 5.6 POS / Retail

Member-account linkage on every retail transaction, retail reporting tied to member profile (spending patterns, product mix, attach rate), unified payment rails (card, ACH, member account balance, gift card), and inventory hooks for vendors that offer retail inventory natively. Tight coupling — not a separate POS vendor with a fragile bridge — is the bar.

### 5.7 Reporting & Analytics

Franchisee scorecard, corporate roll-ups, real-time KPIs (joins, churn, MRR, LTV), financial reporting by location, cohort retention views, leaderboards. Real-time data, not overnight batch. Operational reporting lives inside the MMS; deeper analytics flows into the Unified Data Layer (Section 6.3).

### 5.8 Member Communications (Transactional Only)

Receipts, billing notices, freeze and cancel confirmations, dunning messages. Consent management lives here even though marketing automation is out of scope — consent is captured at the MMS layer and propagated to downstream marketing systems.

---

## 6. Technical & Integration Requirements

### 6.1 API Architecture

REST baseline, webhooks for event-driven sync, GraphQL acceptable but not required, transparent rate-limit documentation, versioning policy, sandbox / staging environment available to Gold's for integration testing throughout the contract. Vendors describe their API surface in detail with example payloads.

### 6.2 Data Ownership & Portability

Contractual ownership of all member data by Gold's; export in CSV, JSON, and Parquet on demand; full historical export including custom attributes; vendor commitment to assist with migration to a successor system at termination, with terms specified in the contract. The contractual language is sketched in Section 16.

### 6.3 Unified Data Layer Feed

Real-time event stream into Gold's central warehouse (Databricks / Snowflake / Microsoft Fabric — platform selection pending; see `data-platform-appendix.html`). Schema documentation, change-data-capture or webhook-driven feed, no overnight batch dependency for analytics-grade data.

### 6.4 Required Integration Inventory

A table of every system the MMS must integrate with on day one: HubSpot CRM, Motion Vibe member app, gate-control hardware, payment processor, email and SMS providers, the Unified Data Layer. Direction of data flow, integration type (API, webhook, file), and frequency specified. Full table in Appendix D.

### 6.5 Performance Targets

Sub-second API response for join and check-in flows; concurrent load expectations during peak gym hours; mobile API latency targets for the member app integration. Vendor must commit to numerical thresholds, not adjectives.

### 6.6 Ecosystem Posture (Open vs. Closed)

This subsection is designed to tease out a defining characteristic of the vendor: whether they operate as an **open platform** that Gold's builds on top of, or as a **closed ecosystem** that tries to capture data, workflows, and UI inside their walls. Both can be feature-rich. Only the open posture fits the Assemble model. Vendors who soften, dodge, or marketing-speak their way around these questions are signaling a closed posture regardless of what their sales narrative says. Vendor must answer each in writing with specific numbers, lists, or named examples — not adjectives.

- **API as primary interface.** What percentage of platform functionality is exposed via public API? List the modules that have full API coverage and the modules that are admin-UI-only. Where is the gap, and what is the timeline to close it?
- **Headless / system-of-record mode.** Can Gold's host the entire member-facing UI (join flow, account portal, freeze and cancel screens, payment management) and use the platform purely as a transaction engine and system of record? If yes, describe what is required, and name customers operating this way today. If no, explain specifically why.
- **API pricing and metering.** Are APIs included in the base subscription, or metered/billed separately? Provide per-call cost at scale, rate-limit tiers, and whether higher API throughput requires a different commercial tier. Is the API a profit center for the vendor, or a cost of doing business?
- **Webhook and event coverage.** Provide the full catalog of webhook events the platform fires today: member events, billing events, transaction events, access events, plan-change events, communication events. Mark which require polling instead. Latency target per event type.
- **Third-party integration policy.** Describe your integrations marketplace and approval model. Which categories of third-party integration are self-service, which require vendor partnership/approval, and which are blocked or actively discouraged? Provide examples of customers who run with non-vendor CRM, app, marketing automation, and analytics tools.
- **Adjacent-module pricing pressure.** Does pricing, support tier, SLA, or roadmap prioritization change if Gold's chooses third-party tools in adjacent categories (CRM, member app, marketing, PT, analytics)? List every commercial or operational delta. Bundle discounts that meaningfully change economics when customers adopt additional vendor modules count as deltas.
- **Customer customization without professional services.** Can Gold's admin users create custom fields, custom workflows, custom reports, and custom integrations without engaging vendor professional services? List capabilities, limits, and any premium-tier gating.
- **Data co-mingling and vendor use of customer data.** Does customer data ever flow into shared analytics layers, vendor-internal benchmarking, AI/ML training pipelines, or product-development data sets? Under what terms? Can the customer opt out completely?
- **UI replaceability.** For each major member-facing surface (join, account, billing, freeze, cancel, check-in confirmation), can the vendor's UI be fully replaced by a Gold's-built UI calling the vendor's APIs? Where it cannot, explain the constraint.
- **Exit posture.** Walk through what a Gold's exit from your platform looks like in operational practice — data formats provided, timeline to extract, vendor cooperation during transition, what customer-owned customizations and integrations stay vs. leave. Has any customer of comparable scale exited in the last 24 months? Describe.

---

## 7. Franchise & Multi-Tenant Architecture

This section reflects the central operating constraint of the Gold's network: corporate cannot dictate to franchisees, but the network only works if data and standards stay coherent across the franchise. It is one of the highest-leverage sections of the RFP for filtering vendors whose multi-tenant models are immature or single-club at heart.

### 7.1 Centralized Data, Decentralized Execution

Corporate sees the full network; each franchisee sees and controls their own locations. No direct vendor-to-franchisee apps; every consumer experience flows through Gold's-controlled surfaces. Vendor's data model must support this hierarchy natively.

### 7.2 Configuration Hierarchy

Corporate-enforced templates (brand standards, required disclosures, payment terms) vs. franchisee-local overrides (pricing, promotions, hours, local marketing). The system must support both, and the boundary between them must be configurable.

### 7.3 Scale & Onboarding

Playbook for onboarding ~400 locations in waves. Vendor's largest comparable deployment, with named references. Implementation team capacity to support concurrent onboardings.

### 7.4 Brand Standard Enforcement

How the platform supports brand-standard adherence without removing franchisee autonomy. This is the franchise-tension question; the vendor's answer reveals how mature their multi-tenant model actually is.

---

## 8. Security, Compliance & Data Privacy

### 8.1 Required Certifications

PCI-DSS, SOC 2 Type II, current attestations and recent audit reports available on request. State certifications relevant to operating jurisdictions.

### 8.2 Privacy & State Regulations

CCPA, evolving state privacy regimes, member data subject access request workflows, consent capture and revocation. Vendor describes their state-by-state compliance posture.

### 8.3 Data Residency & Encryption

U.S. data residency, encryption at rest and in transit, documented key management, customer-managed keys where supported.

### 8.4 Access Controls

Role-based access, corporate vs. franchisee separation, member-data access logging, support for SSO into vendor admin consoles.

### 8.5 Incident Response

Breach notification SLA, communication protocol, remediation expectations, prior-incident disclosure if any in the last 24 months.

### 8.6 Audit Rights

Gold's right to audit vendor controls annually and after any security incident. Vendor agrees to reasonable cooperation.

### 8.7 Accessibility (WCAG / ADA)

Member-facing surfaces must meet WCAG 2.1 AA. Accessibility is a legal requirement for commercial fitness operators, not optional.

---

## 9. Service Levels (SLA)

Adapted to franchise-criticality: check-in and billing cannot be down during peak gym hours. The vendor commits to numerical SLA thresholds, not adjectives.

### 9.1 Uptime Commitment

Target 99.5%–99.9% (final floor set by the Decision Council; recommendation is 99.9% given that gate access and billing are revenue-critical and member-facing).

### 9.2 Response & Resolution Times by Severity

- Critical (system down, billing or check-in unavailable): response < 1 hour
- High (significant functionality impaired): response < 4 hours
- Medium (non-critical feature issue): response < 1 business day
- Low (cosmetic or enhancement): handled in next planned release

### 9.3 Maintenance Windows

Off-peak only, advance notice required, no maintenance during defined peak gym hours.

### 9.4 Disaster Recovery

RTO and RPO commitments stated numerically; backup frequency; geographic redundancy; tested recovery procedures with last-test date disclosed.

### 9.5 Credits & Penalties

Service credit structure if SLA missed, escalating with severity and duration.

---

## 10. Implementation, Migration & Change Management

### 10.1 Phased Rollout Expectation

Pilot location(s) → regional wave → full network. ABC/Motionsoft runs in parallel until each wave is verified stable. No hard cutover. Vendor proposes a wave structure and timeline; Gold's approves.

### 10.2 Vendor-Led Data Migration

Vendor is responsible for migrating member master, transaction history, payment tokens, freezes and pauses, custom attributes, and historical reporting data from the incumbent system. Gold's validates correctness; vendor executes. Migration plan, validation plan, and rollback plan required as part of the response.

### 10.3 Training & Change Management

Materials, train-the-trainer model, franchisee enablement collateral, role-specific training tracks (front-desk, PT staff, manager, franchisee owner, corporate analyst).

### 10.4 Franchisee Adoption Playbook

This is a key Gold's-specific section. Roughly 90% of franchisees are on non-standard surfaces today, which means adoption must be earned rather than mandated. Vendor describes their role in supporting Gold's-led change management — case studies from similar multi-location, independent-operator networks are especially valuable.

### 10.5 Project Staffing & RACI

Named vendor team members with credentials and tenure, commitment to project manager continuity through go-live, defined escalation path, RACI between vendor, Gold's, and StackHack project team.

---

## 11. Commercial Terms & Pricing

### 11.1 Pricing Model Disclosure

Vendor discloses all components: per-location fees, per-member fees, per-transaction fees, implementation fees, integration fees, support tier fees. No hidden line items. Vendor states which components are negotiable and which are not.

### 11.2 Five-Year Total Cost of Ownership

Line-item TCO over five years at projected network scale, including realistic assumptions for member growth and transaction volume. Gives the Decision Council a comparable basis across vendors with different pricing models.

### 11.3 Implementation & Migration Fees

One-time fees broken out from recurring. Migration assistance fees disclosed even if discounted to zero — Gold's wants to see the full economic picture.

### 11.4 Volume Incentives

Scale discounts triggered as Gold's onboards the full network. Vendor proposes the curve.

### 11.5 Tech-Fee Revenue Share

Gold's intends to introduce a member technology fee. Competitors in the space charge $3–5 per join plus monthly platform fees, while Gold's currently captures no tech-fee revenue. The vendor's willingness to support, white-label, or revenue-share on this monetization is a meaningful signal of long-term partnership orientation and a real differentiator in evaluation.

### 11.6 Price Lock & Annual Escalators

Caps on year-over-year price increases, currency and benchmark used (CPI, fixed percentage, etc.), renewal-price mechanics.

### 11.7 API and Integration Economics

API access pricing model disclosed in full: included-in-base vs. metered, per-call fees at projected scale, rate-limit tiers and the commercial tier required to move between them, integration-marketplace fees, partner-integration certification fees, premium webhook/event-stream fees. Vendors whose primary business model is to monetize the API layer rather than the platform layer should disclose that upfront — it is material to total cost and to ecosystem openness. Vendors who include APIs in the base subscription should also state that explicitly; silence is read as the former.

---

## 12. Vendor Qualifications & References

### 12.1 Company Background

Years in business, ownership structure, financial stability evidence (audited statements or equivalent for private companies), customer count and segmentation.

### 12.2 Comparable Deployments

Multi-location franchise fitness operations or comparable industries (multi-unit retail, multi-site healthcare, multi-location hospitality) at Gold's scale or larger.

### 12.3 Customer References

Minimum three vendor-supplied references. At least one comparable in network scale (~400+ locations) or in franchise model. Gold's panel reserves the right to contact references directly.

### 12.4 Implementation Team Credentials

Named team members assigned to Gold's, tenure with vendor, relevant prior projects, commitment to continuity through go-live.

### 12.5 Product Roadmap

12-month roadmap disclosed under NDA if necessary, how customer feedback influences prioritization, current and planned AI / ML capabilities, mobile-first investments. **Vendor explicitly addresses ecosystem strategy: are you building a platform that customers extend with their own tools and UIs, or a suite that customers adopt end-to-end?** Either is a legitimate strategy; only the former fits Gold's. The roadmap question is light-weighted in the rubric (5%) but the answer to the platform-vs-suite question is one of the strongest tells on open-vs-closed posture and is read alongside Section 6.6.

---

## 13. Evaluation Criteria & Scoring Methodology

Carried **verbatim** from `member-mgmt-one-pager.html` to maintain perfect consistency with the rubric already in use across ongoing vendor meetings. Disclosed to vendors in the RFP so they understand priorities.

| Weight | Category |
|--------|----------|
| 25% | API & Integration |
| 20% | Data Ownership & Portability |
| 15% | Franchise Architecture |
| 15% | Core Features |
| 10% | Commercial Terms |
| 10% | Reliability & SLA |
| 5% | Innovation & Roadmap |

The weighting deliberately favors integration and data over feature breadth — fit into Gold's architecture matters more than the size of the vendor's feature checklist. **Combined, API & Integration (25%) and Data Ownership & Portability (20%) account for 45% of the total score — a deliberate signal that Gold's is evaluating ecosystem openness as a first-class criterion, not a checkbox.** Vendors whose value proposition depends on ecosystem lock-in will score low here regardless of how rich their feature set is.

Proof-of-capability demonstrations (Section 14) and reference checks (Section 12.3) feed evidence into the existing categories rather than carrying separate weights. The Section 6.6 ecosystem-posture questions and the Section 14.7 headless demo carry disproportionate weight within the API & Integration category.

---

## 14. Proof-of-Capability Demonstrations

**Gold's provides standardized test scenarios; vendors demonstrate against those, not a generic pitch deck.** Finalist demonstrations are scheduled and time-boxed. Scenarios:

- 14.1 **Live join-online flow** — Web form → active member in under 5 minutes, on a sandbox tenant Gold's can poke at after the demo.
- 14.2 **Multi-location member check-in** — Travel pass scenario; one member, two locations, verified entitlement on both.
- 14.3 **ACH failure / dunning sequence** — A member's ACH payment fails. Show the retry cadence, the branded communication sequence, and the recovery.
- 14.4 **Franchisee scorecard** — Corporate dashboard view; drill into one franchisee; drill into one location; explain the data refresh latency.
- 14.5 **API and webhook demonstration** — Trigger a real-time event (member joins, freezes, or checks in) and consume it in a sandbox external system in real time.
- 14.6 **POS transaction tied to member account** — Retail purchase against a member's account; show it in the member profile, the location's daily report, and the corporate roll-up.
- 14.7 **Headless / Gold's-owned UX on vendor APIs** — Execute a full member journey (join → check-in → freeze → cancel) entirely through your APIs, with no use of the vendor-supplied UI. This is the open-ecosystem test: it demonstrates in seconds whether the platform can truly serve as a system of record while Gold's owns the member experience on top, or whether the vendor's value depends on Gold's adopting their UI.

Each scenario is scored against the same rubric category it primarily exercises. Scenario 14.7 in particular maps to the API & Integration (25%) and Data Ownership & Portability (20%) categories and is one of the highest-signal scenarios in the set.

---

## 15. Submission Process

### 15.1 Timeline

Specific dates inserted at Stage 2. The skeleton:

- RFP release
- Mandatory intent-to-respond
- Written Q&A window opens
- Written Q&A window closes
- Written responses due
- Finalist notification
- Finalist demonstrations (Section 14 scenarios)
- Reference checks
- Selection notification
- Contract negotiation begins
- Implementation kickoff

### 15.2 Response Format

Section-by-section response matching this document's structure; vendor confirms or qualifies each Critical requirement; numbered question responses; commercial proposal as a separate document.

### 15.3 Q&A Protocol

Written questions only. All questions and answers redistributed to all responding vendors. No side conversations, no sales outreach to Gold's stakeholders outside the process.

### 15.4 Submission Method

Secure portal or designated email (Stage 2 decision). Format: PDF for narrative response plus editable response matrix.

### 15.5 Single Point of Contact

A designated Gold's Gym procurement lead serves as the sole channel for RFP-related communications during the response window. Direct contact with any other Gold's stakeholder outside of this channel disqualifies the vendor.

---

## 16. Contract Terms (Reference, Not Final)

Indicative language vendors should expect to negotiate against. Final contract drafted with Gold's counsel.

### 16.1 Data Ownership Clause

Gold's owns all member data, schema, derived data, and outputs. Vendor has usage rights for service delivery only. No vendor use of Gold's data for vendor's own product development, model training, or aggregated benchmarking without explicit written consent.

### 16.2 Termination & Data Return

On termination for any reason, vendor returns all data in agreed formats within a defined window and cooperates with the successor system at agreed rates. Migration cooperation is contractual, not goodwill.

### 16.3 IP & Confidentiality

Standard mutual confidentiality. Gold's brand, franchise-network composition, and member-level data treated as Gold's confidential information regardless of how the vendor accesses it.

### 16.4 Indemnification & Liability

Standard commercial terms. Security-breach indemnification carve-out from any general liability cap.

### 16.5 Renewal & Pricing

Renewal mechanics, escalator caps (per Section 11.6), and Gold's right to re-bid at end of term without penalty.

### 16.6 API and Integration Access Protections

API access pricing, rate limits, webhook coverage, and integration-marketplace policies cannot be unilaterally degraded during the contract term. Material changes to the API surface or pricing require advance notice and mutual agreement. This protects Gold's from the open-platform bait-and-switch pattern where a vendor positions as open during sales then closes the platform after the customer is committed.

---

## Appendices

- **A. Acronyms & Glossary** — MMS, MRR, LTV, RTO, RPO, ACH, PCI-DSS, SOC 2, CCPA, WCAG, etc.
- **B. Current Technology Stack Diagram** — Vendor-distribution version of `environment-bubbles.png`; sensitive labels redacted.
- **C. Sample Data Dictionary** — Member master schema, transactional event schema, required custom attribute set.
- **D. Required Integration Inventory** — Full table of integrations the MMS must support on day one, with system owners, integration type, data direction, and frequency.
- **E. Non-Negotiables Checklist** — Section 4 reformatted as a vendor self-attestation form. A "no" on any line ends the evaluation.
- **F. Standardized Vendor Questions** — The full question set from `member-mgmt-one-pager.html` (Architecture & Integration; Franchise Model; Data & Commercial; Product & Roadmap). Vendors answer each in writing.

---

*End of outline. Stage 2 expansion (vendor-ready prose, dates, populated appendices, counsel-reviewed contract terms) commences after Decision Council approval of this structure.*
