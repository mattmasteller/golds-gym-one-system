> ⚠️ **INTERNAL — NOT FOR VENDOR DISTRIBUTION.**
> This rubric holds the **weighted scoring percentages** for evaluating responses to the MMS solicitation (GG-2026-MMS-001). The vendor-facing RFP (`2026-05-20-gg-mms-rfp.md`, §13) discloses the evaluation **factors qualitatively but not the weights** — the weights live only here. Delivered separately to the Decision Council and SME evaluation teams.

# MMS Vendor Evaluation Rubric (Internal)

**Reference:** GG-2026-MMS-001
**Prepared by:** StackHack Labs
**Date:** 2026-05-20
**Companion to:** `2026-05-20-gg-mms-rfp.md` (RFP §13, factors only) and `2026-05-20-gg-mms-requirements-and-demos-worksheet-internal.md` (per-group must-have/nice-to-have detail). The factor names below match RFP §13. Note: an earlier RFI draft (`2026-05-20-gg-mms-rfi.md`) also exists; the RFP is the primary vendor document.

---

## 1. Weighted Scoring Categories

Scores reflect fit with Gold's "Assemble" architecture. The weighting deliberately favors integration and data control over feature breadth — fit into Gold's architecture matters more than the size of a vendor's feature checklist.

| Weight | Category | What it measures |
|---|---|---|
| **25%** | API & Integration | API maturity & coverage, webhooks/event coverage, real-time sync, sandbox, documentation, **ecosystem openness (headless / system-of-record)** |
| **20%** | Data Ownership & Portability | Contractual data ownership, export formats, migration tooling/commitment, vendor-lock-in risk, data co-mingling / AI-training terms |
| **15%** | Franchise Architecture | Native multi-tenant design, corporate vs. franchisee controls, configuration hierarchy, scale & onboarding evidence |
| **15%** | Core Features | Member lifecycle, plans/pricing, billing & collections, check-in, travel pass, POS, operational reporting, communications |
| **10%** | Commercial Terms | Pricing transparency, term flexibility (monthly/annual/multi-year), incentives, volume discounts, tech-fee revenue-share, API economics |
| **10%** | Reliability & SLA | Uptime, response/resolution by severity, maintenance windows, DR (RTO/RPO), track record at scale |
| **5%** | Innovation & Roadmap | AI/ML, mobile-first, product velocity, **platform-vs-suite ecosystem strategy** |

**Note:** API & Integration (25%) + Data Ownership & Portability (20%) = **45% combined** — a deliberate signal that ecosystem openness and data control are first-class criteria, not checkboxes. Vendors whose value proposition depends on ecosystem lock-in score low here regardless of feature richness.

## 2. Threshold Requirements (Pass / Fail — score before weighting)

These map to Section 4 of the RFI. A clear "No" on any of these is a material concern and should be escalated to the Decision Council before a vendor advances.

1. Full data ownership (contractual)
2. Real-time API access (REST + webhooks)
3. Multi-location franchise architecture (native)
4. Documented data export & migration commitment
5. U.S. market support
6. POS / retail integrated or tightly coupled
7. Open ecosystem / headless compatibility

## 3. Scoring Scale (per item)

| Score | Meaning |
|---|---|
| 5 | Exceeds requirement; named references / evidence provided |
| 4 | Fully meets requirement |
| 3 | Meets with minor gaps or qualifications |
| 2 | Partial; significant gaps |
| 1 | Minimal capability |
| 0 | Does not meet / no credible evidence |

Category score = average of item scores within the category, then multiplied by the category weight.

## 4. High-Signal Items (carry disproportionate weight within their category)

- **Headless / system-of-record demonstration** — full member journey (join → check-in → freeze → cancel) via APIs with no vendor UI. Primary signal for API & Integration (25%) and Data Ownership (20%).
- **Ecosystem-posture answers (RFI §6.6)** — vendors who soften, dodge, or use marketing language rather than specific numbers/lists/named examples are signaling a closed posture.
- **API metering/pricing** — APIs positioned as a profit center or gated behind premium tiers is a closed-posture indicator.
- **Adjacent-module pricing pressure** — penalties or "bundle discounts" tied to adopting the vendor's own CRM/app/analytics indicate lock-in.
- **Platform-vs-suite roadmap answer (RFI §12.5)** — only "platform customers extend with their own tools" fits Gold's.

## 5. Demonstration Scenarios (internal — for short-listed vendors)

Demonstrations run **in parallel** with RFI responses for the short list. Vendors demonstrate against standardized scenarios (not a generic pitch). Each scenario feeds evidence into the category it primarily exercises.

1. Live join-online flow (web form → active member in under 5 minutes; sandbox available afterward)
2. Multi-location member check-in (travel pass; one member, two locations, verified entitlement)
3. ACH failure / dunning sequence (retry cadence, branded comms, recovery)
4. Franchisee scorecard (corporate → franchisee → location drill-down; refresh latency)
5. API and webhook demonstration (trigger a real-time event; consume it in a sandbox external system)
6. POS transaction tied to member account (member profile, location daily report, corporate roll-up)
7. **Headless / Gold's-owned UX on vendor APIs** (full member journey via APIs, no vendor UI) — highest-signal scenario

## 6. Detailed Taxonomy — Must-Have vs. Nice-to-Have (to be completed by SMEs)

Per the 2026-05-19 brainstorm, the Core-Features and adjacent categories need per-system **must-have vs. nice-to-have** definitions supplied by the functional owners (coordinated by Rick: marketing, member management, analytics, finance). Populate below; this becomes the detailed scoring sheet beneath the weighted categories.

| System / Module | Requirement | Must-have / Nice-to-have | Owner | Notes |
|---|---|---|---|---|
| Member Lifecycle | | | | |
| Plans & Pricing | | | | |
| Billing & Collections | | | | |
| Check-in & Access | | | | |
| Travel Pass | | | | |
| POS / Retail | | | | |
| Reporting | | | | |
| CRM | | | | |
| Mobile App | | | | |
| Analytics & Data | | | | |
| API & Integration | | | | |
| Franchise Architecture | | | | |
| Security & Compliance | | | | |
| Commercial | | | | |

---

*This rubric stays internal. The external RFI discloses only the questions asked of vendors, not the weights or scoring methodology.*
