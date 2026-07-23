# SOW 02 Deliverables Mapping — Verification Record

**Deliverable:** Gold's Gym Strategy and Architecture Blueprint and Implementation Plan
**Focus:** The recommended "Assemble Strategy" — findings, recommendations, and support materials
**Primary artifact:** `Deliverables SOW 02/convention-deck/` — "Digital Strategy + Assemble Architecture" (8-page web deliverable, deployed at https://golds02.stackhack.io/)
**Supporting reference:** `Deliverables SOW 02/final-report/` — SOW 01 Phase 0 Executive Summary (reference copy, banner-labeled)
**Last verified:** July 22, 2026

---

## Required deliverables → where they live

| # | Required deliverable | Status | Location |
|---|---|---|---|
| 1 | **Onsite at HQ sessions — insights gathered there** | ✅ Delivered | `discovery-insights.html` §01–03 (Dec 9–10 2025 Dallas/Irving sessions: north star, 8 department syntheses, 5 themes, 6 quick wins). Full detail: Phase 0 `final-report/discovery.html` |
| 2 | **Technology strategy for the Assemble approach** | ✅ Delivered | `strategy.html` (Buy/Assemble/Build, ownership model), `architecture.html` §01–03 (solution options, platform-first), `index.html` |
| 3 | **Align business objectives to technology reqs** | ✅ Delivered | `discovery-insights.html` §04 — traceability matrix: business objective → technology requirement → Assemble component → RFP criterion, plus non-negotiables |
| 4 | **Customer experience layer / mapping user stories** | ✅ Delivered (deck + Atlas) | `strategy.html` §02 (consumer journey: pre-member / joining / member touchpoints); touchpoint-level user stories and journey maps in the **Gold's Data Atlas** (linked from strategy §02 and discovery-insights §04) |
| 5 | **Member-facing application plans — mobile app & website** | ✅ Delivered | `digital-experience.html` (website strategy, app current→future state, digital products, cohesion mandate); vendor/build options in `execution.html` §06 |
| 6 | **Data strategy, AI plan, and canonical data model** | ✅ Delivered (deck + Atlas) | Data strategy: `architecture.html` §04, `execution.html` §07, `data-platform-appendix.html` (4-platform TCO analysis). AI plan: AI-ready data layer principles + build-vs-buy-on-agents position (`execution.html` §06 callout). **Canonical data model: Gold's Data Atlas** (linked from architecture §04 and execution §07) |
| 7 | **Architectural mapping for systems** | ✅ Delivered (deck + Atlas) | Conceptual maps: `architecture.html` §03 (circular architecture strategy + layered Stack Map). Detailed system architecture, data flows, and vendor integration maps: **Gold's Data Atlas** (Stack Map drill-down button) |
| 8 | **Vendor target list for RFI / RFP** | ✅ Delivered | `execution.html` §04 (meeting short list: ABC, Zenoti, Perfect Gym, Exerp, Hapana, Fitness Force + weighted rubric), §05 (7-category landscape), §06 (short list + cost profile); `member-mgmt-one-pager.html` |
| 9 | **Implementation wave, planning for RFP** | ✅ Delivered | `roadmap.html` (6-phase plan, milestones, decision gates); `execution.html` §08 (May→Sep timeline, internal team, external partners, budget ranges, $52,500 committed-spend anchor) |

---

## Gold's Data Atlas dependency

Three deliverable areas (canonical data model, detailed architecture/data-flow maps, user story mapping) are maintained in the external **Gold's Data Atlas** tool. The deck links out from:

- `architecture.html` — Stack Map drill-down button + Unified Data Layer panel (canonical data model)
- `execution.html` §07 — canonical data model CTA
- `strategy.html` §02 — user stories / journey maps
- `discovery-insights.html` §04 — user stories per touchpoint

**Open item:** the Atlas URL is a placeholder. Swap the real URL into the `DATA_ATLAS_URL` constant at the top of `convention-deck/nav.js` (one-line change; all links update automatically).

## Other open items

1. **Redeploy** golds02.stackhack.io after these changes (new page + nav changes won't be live until then).
2. **Review** the new `discovery-insights.html` content before treating it as client-final.

## Change log (July 22, 2026)

- Added `discovery-insights.html` (deck page 3 of 8): HQ session insights + objectives→requirements traceability matrix.
- Wired Gold's Data Atlas link-outs (placeholder URL, centralized in `nav.js`); enabled the previously dead "Detailed Architecture v0.5" button.
- Populated the BI & Analytics cost row in `execution.html` §06 from the data-platform appendix (removed "Research in progress" internal note).
- Added the $52,500 SOW 02 committed-spend anchor to `execution.html` §08.
- Standardized the member-management Phase 0 score to **2.3/5** across all pages.
- Added Appendix cards (data platform, vendor one-pager, survey) to the `index.html` card grid so companion pages are discoverable.
- Labeled the blank rubric in `member-mgmt-one-pager.html` as a scoring template (completed during SOW 03 vendor evaluation).
- Banner-labeled `Deliverables SOW 02/final-report/` as the SOW 01 Phase 0 reference copy.
