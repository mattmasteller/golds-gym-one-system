> ⚠️ **INTERNAL — NOT FOR VENDOR DISTRIBUTION.**
> This worksheet drives the **🔧 [BUSINESS GROUP TO DEFINE]** callouts in the RFP (`2026-05-20-gg-mms-rfp.md` §5, §6, §8, §11, §14, §16) and the demonstration acceptance criteria (§14). Each functional group completes its section in a working session; the consolidated output is folded back into the RFP before vendor issue, and into the internal evaluation rubric (`2026-05-20-gg-mms-evaluation-rubric-internal.md`).

# MMS RFP — Business-Group Requirements & Demo Definition Worksheet (Internal)

**Reference:** GG-2026-MMS-001
**Prepared by:** StackHack Labs
**Date:** 2026-05-20
**Coordinator:** Rick [Gold's] — assigns sections to SMEs and consolidates input.

## How to Use This Worksheet

For each business group:
1. **Requirements** — for every seeded requirement, mark **Must-have** or **Nice-to-have**, add detail/notes, and name the SME owner. Add rows for anything missing.
2. **Demonstrations** — define what "good" looks like for the demo scenarios this group cares about: the specific scenario, the acceptance criteria (what the vendor must show to pass), the test data needed, and the SME who will judge it.

Status legend for the right-hand column: `M` = Must-have · `N` = Nice-to-have · `?` = needs discussion.

---

## 1. Member Management / Operations

**RFP sections owned:** §5.1 Member Lifecycle, §5.2 Plans & Pricing (with Finance), §5.5 Travel Pass (with Finance), §5.6 POS (with Finance), §5.10 Mobile App (with Marketing).

### Requirements

| Requirement (seed) | RFP ref | M / N / ? | Detail / notes | SME owner |
| --- | --- | --- | --- | --- |
| Online join with Gold's-hosted front-end form | §5.1 |  |  |  |
| Same-day online-join activation | §5.1 |  |  |  |
| In-club join flow | §5.1 |  |  |  |
| Freeze / cancel with retention triggers | §5.1 |  |  |  |
| Pause & reactivation | §5.1 |  |  |  |
| Win-back outreach hooks | §5.1 |  |  |  |
| Corporate plan templates applied locally | §5.2 |  |  |  |
| Bundled / family memberships | §5.2 |  |  |  |
| Travel-pass entitlement rules | §5.5 |  |  |  |
| Member-account linkage on all retail transactions | §5.6 |  |  |  |
| Member-app feature expectations | §5.10 |  |  |  |
| *(add rows as needed)* |  |  |  |  |

### Demonstrations

| Scenario | RFP ref | Acceptance criteria (what "good" looks like) | Test data needed | Judge |
| --- | --- | --- | --- | --- |
| Live join-online flow | §14.1 |  |  |  |
| Multi-location member check-in | §14.2 |  |  |  |
| POS transaction tied to member account | §14.6 |  |  |  |

---

## 2. Marketing & CRM

**RFP sections owned:** §5.8 Member Communications, §5.9 CRM, §5.10 Mobile App (with Member Mgmt).

### Requirements

| Requirement (seed) | RFP ref | M / N / ? | Detail / notes | SME owner |
| --- | --- | --- | --- | --- |
| Transactional message types (receipts, notices, confirmations, dunning) | §5.8 |  |  |  |
| Consent capture & revocation; propagation to marketing systems | §5.8 |  |  |  |
| Is CRM in scope for this procurement? | §5.9 |  |  |  |
| If CRM in scope: lead capture, pipeline, segmentation, campaigns | §5.9 |  |  |  |
| Ability to run third-party CRM (HubSpot) with no penalty | §5.9 |  |  |  |
| Member-app branding / experience requirements | §5.10 |  |  |  |
| *(add rows as needed)* |  |  |  |  |

### Demonstrations

| Scenario | RFP ref | Acceptance criteria (what "good" looks like) | Test data needed | Judge |
| --- | --- | --- | --- | --- |
| Branded dunning / communication sequence | §14.3 |  |  |  |
| *(add CRM/comms scenario if CRM in scope)* |  |  |  |  |

---

## 3. Analytics & Data / BI

**RFP sections owned:** §5.7 Reporting & Operational Analytics, §6.3 Analytics & Data Access.

### Requirements

| Requirement (seed) | RFP ref | M / N / ? | Detail / notes | SME owner |
| --- | --- | --- | --- | --- |
| Required scorecard metrics & KPI definitions (joins, churn, MRR, LTV) | §5.7 |  |  |  |
| Acceptable reporting refresh latency (real-time vs. near-real-time) | §5.7 |  |  |  |
| Data movement: push vs. feeds vs. unified-data-layer feed | §6.3 |  |  |  |
| Analytics baked-in vs. third-party (acceptable?) | §6.3 |  |  |  |
| Third-party viewer over Gold's-owned semantic model required? | §6.3 |  |  |  |
| Modular/replaceable analytics layer (start vendor → migrate to ours) | §6.3 |  |  |  |
| Target data warehouse assumption (Databricks / Snowflake / Fabric) | §6.3 |  |  |  |
| Required event schema & CDC/webhook delivery | §6.3 |  |  |  |
| *(add rows as needed)* |  |  |  |  |

### Demonstrations

| Scenario | RFP ref | Acceptance criteria (what "good" looks like) | Test data needed | Judge |
| --- | --- | --- | --- | --- |
| Franchisee scorecard drill-down + refresh latency | §14.4 |  |  |  |

---

## 4. Finance & Billing

**RFP sections owned:** §5.3 Billing & Collections, §11 Commercial Terms & Pricing; co-owns §5.2, §5.5, §5.6, §16.

### Requirements

| Requirement (seed) | RFP ref | M / N / ? | Detail / notes | SME owner |
| --- | --- | --- | --- | --- |
| ACH validation & card processing | §5.3 |  |  |  |
| Automatic retry & dunning cadence requirements | §5.3 |  |  |  |
| Chargeback & refund workflows | §5.3 |  |  |  |
| Settlement & reconciliation (location + corporate roll-up) | §5.3 |  |  |  |
| GL / accounting-system integration needs | §5.3 |  |  |  |
| Pricing-bound rules; franchisee-controlled levers | §5.2 |  |  |  |
| Inter-location travel-pass settlement model | §5.5 |  |  |  |
| Retail payment rails (card, ACH, member balance, gift card) | §5.6 |  |  |  |
| TCO assumptions & budget guardrails | §11 |  |  |  |
| Member tech-fee monetization targets | §11.5 |  |  |  |
| *(add rows as needed)* |  |  |  |  |

### Demonstrations

| Scenario | RFP ref | Acceptance criteria (what "good" looks like) | Test data needed | Judge |
| --- | --- | --- | --- | --- |
| ACH failure / dunning recovery | §14.3 |  |  |  |
| POS transaction in daily report + corporate roll-up | §14.6 |  |  |  |

---

## 5. Front-desk / Access & Facilities

**RFP sections owned:** §5.4 Check-in & Access Control; co-owns §14.2 (multi-location check-in).

### Requirements

| Requirement (seed) | RFP ref | M / N / ? | Detail / notes | SME owner |
| --- | --- | --- | --- | --- |
| Supported gate / turnstile / kiosk hardware lines | §5.4 |  |  |  |
| Multi-location access entitlement checks | §5.4 |  |  |  |
| Anomaly handling (expired, frozen, restricted) | §5.4 |  |  |  |
| Access audit logging | §5.4 |  |  |  |
| Access policies by membership type | §5.4 |  |  |  |
| *(add rows as needed)* |  |  |  |  |

### Demonstrations

| Scenario | RFP ref | Acceptance criteria (what "good" looks like) | Test data needed | Judge |
| --- | --- | --- | --- | --- |
| Multi-location check-in with travel pass | §14.2 |  |  |  |

---

## 6. IT / Security & Compliance

**RFP sections owned:** §8 Security & Compliance, §6.3/§6.4 (with Analytics), §16 Contract Terms (with Finance); co-owns §14.5, §14.7 (API/headless demos).

### Requirements

| Requirement (seed) | RFP ref | M / N / ? | Detail / notes | SME owner |
| --- | --- | --- | --- | --- |
| Required certifications (PCI-DSS, SOC 2, others) | §8.1 |  |  |  |
| State privacy / CCPA compliance & DSAR workflows | §8.2 |  |  |  |
| U.S. data residency; encryption; key management | §8.3 |  |  |  |
| RBAC, corporate/franchisee separation, access logging, SSO | §8.4 |  |  |  |
| Incident-response & breach-notification expectations | §8.5 |  |  |  |
| WCAG 2.1 AA on member-facing surfaces | §8.7 |  |  |  |
| API access protections / no unilateral degradation | §16.6 |  |  |  |
| Counsel-required contract clauses | §16 |  |  |  |
| *(add rows as needed)* |  |  |  |  |

### Demonstrations

| Scenario | RFP ref | Acceptance criteria (what "good" looks like) | Test data needed | Judge |
| --- | --- | --- | --- | --- |
| API & webhook real-time event consumption | §14.5 |  |  |  |
| Headless / Gold's-owned UX on vendor APIs | §14.7 |  |  |  |

---

*Consolidate completed sections back into the RFP §5/§6/§8/§11/§14/§16 callouts and align the internal evaluation rubric before vendor distribution.*
