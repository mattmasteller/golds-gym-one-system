# Solutions Architect (SA) Task List
## Phase 1+2 Combined Engagement

**Version:** 1.0
**Date:** February 2026
**Role:** Solutions Architect — Lead
**Weekly Commitment:** 10-15 hrs/week (80-120 hours over 8 weeks)

---

## SA-Owned Tasks

These are tasks where the SA drives the work product and is the primary author/decision-maker.

| WBS # | Task | Hours | Week(s) | Deliverable Link |
|-------|------|-------|---------|-----------------|
| **WS1 — Foundations** | | | | |
| 1.6 | Architectural guardrails document | 6 | 1-2 | Strategy Playbook |
| 1.7 | ADR template setup | 2 | 1 | Internal tool |
| **WS2 — Strategy** | | | | |
| 2.1 | "System of One" strategy workshop | 4 | 2-3 | Strategy Playbook |
| 2.2 | Franchise policy framework (required vs. optional) | 6 | 2-3 | Strategy Playbook |
| 2.3 | Data-first strategy document | 6 | 3 | Strategy Playbook |
| 2.4 | AI & automation readiness assessment | 4 | 3 | Strategy Playbook |
| 2.6 | KPI tree & metrics framework (SA portion) | 4 | 3-4 | Strategy Playbook |
| 2.8 | Strategy workshop #2 | 3 | 4 | Strategy Playbook |
| 2.9 | Draft Strategy Playbook (SA portion) | 6 | 4 | **Deliverable 1** |
| **WS3 — Architecture** | | | | |
| 3.1.1 | Target-state system architecture | 8 | 3-5 | Architecture Blueprint |
| 3.1.2 | Architecture diagrams — C4-style (SA portion) | 4 | 4-5 | Architecture Blueprint |
| 3.1.3 | Current-to-target gap mapping | 4 | 4 | Architecture Blueprint |
| 3.2.1 | Canonical data model design | 6 | 4-5 | Architecture Blueprint |
| 3.2.2 | Data flow architecture (ETL/ELT) | 4 | 5 | Architecture Blueprint |
| 3.2.3 | Data lake/warehouse strategy (SA portion) | 3 | 5 | Architecture Blueprint |
| 3.3.1 | Integration topology mapping | 6 | 4-5 | Architecture Blueprint |
| 3.3.2 | API strategy & integration patterns | 4 | 5 | Architecture Blueprint |
| 3.4.1 | Identity architecture (SSO, member, staff) | 4 | 5 | Architecture Blueprint |
| 3.4.2 | Permission model design | 3 | 5 | Architecture Blueprint |
| 3.5.1 | Reporting architecture design | 3 | 5-6 | Architecture Blueprint |
| 3.6.1 | Security architecture overview | 3 | 6 | Architecture Blueprint |
| **WS4 — Vendors** | | | | |
| 4.1 | Refine vendor shortlist | 3 | 4 | Vendor Recommendation |
| 4.2 | Vendor capability deep-dives (SA portion) | 6 | 4-6 | Vendor Recommendation |
| 4.3 | API & integration assessment per vendor | 4 | 5-6 | Vendor Recommendation |
| 4.5 | TCO modeling (SA portion) | 3 | 5-6 | Vendor Recommendation |
| 4.6 | Vendor comparison matrix & recommendation | 4 | 6 | Vendor Recommendation |
| **WS5 — Implementation Plan** | | | | |
| 5.1 | Implementation wave definition | 4 | 6 | Implementation Plan |
| 5.2 | Corporate migration strategy (Motionsoft → new GMS) | 4 | 6-7 | Implementation Plan |
| 5.3 | Franchise migration strategy (ABC → new GMS) | 4 | 6-7 | Implementation Plan |
| **WS6 — Compilation** | | | | |
| 6.1 | Compile Architecture Blueprint (SA portion) | 6 | 7-8 | **Deliverable 2** |
| 6.4 | Internal review and QA | 4 | 8 | QA gate |

**SA-Owned Subtotal: ~133 hours**

---

## SA-Participating Tasks

These are tasks where the SA contributes expertise but another role drives logistics or compilation.

| WBS # | Task | SA Hours | Week(s) | Primary Owner |
|-------|------|----------|---------|---------------|
| 1.1 | Kickoff meeting | 3 | 1 | SA + PM |
| 1.2 | Phase 0 deliverable validation | 4 | 1 | SA |
| 2.5 | Governance model design | 3 | 3-4 | SA + PM |
| 4.7 | Present vendor findings to leadership | 3 | 6 | SA + PM |
| 5.4 | Dependency mapping and risk register | 2 | 6-7 | SA + Analyst |
| 5.5 | Resource & capability requirements per wave | 2 | 7 | SA + PM |
| 5.7 | Budget envelope by wave | 2 | 7 | Analyst + SA |
| 6.2 | Implementation Plan compilation | 3 | 7-8 | SA + PM |
| 6.5 | Client review session (Blueprint walkthrough) | 3 | 8 | SA + PM |
| 6.6 | Leadership sign-off meeting | 3 | 8 | SA + PM |
| 6.7 | Phase 3 scope recommendation and handoff | 2 | 8 | SA + PM |

**SA-Participating Subtotal: ~30 hours**

---

## SA Hour Summary

| Category | Hours |
|----------|-------|
| SA-Owned tasks | ~133 |
| SA-Participating tasks | ~30 |
| **SA Total (Full Scope)** | **~163** |
| **Budget (10-15 hrs/wk x 8 wks)** | **80-120** |
| **Gap** | **43-83 hrs over** |

---

## SA Weekly Hour Distribution (Full Scope)

| Week | Focus | SA Hours |
|------|-------|----------|
| 1 | Kickoff, Phase 0 validation, guardrails, ADR setup | ~15 |
| 2 | Guardrails completion, strategy workshop #1, franchise policy start | ~18 |
| 3 | Data strategy, AI assessment, KPI framework, architecture start | ~22 |
| 4 | Architecture design, data model, vendor shortlisting | ~24 |
| 5 | Integration, identity, API strategy, vendor deep-dives | ~26 |
| 6 | Vendor scoring, reporting, security, wave plan start | ~22 |
| 7 | Migration strategies, deliverable compilation | ~19 |
| 8 | QA review, client sessions, sign-off, handoff | ~17 |
| **Total** | | **~163** |

> Weeks 4-5 are the most SA-intensive. Option C scoping (recommended) reduces peaks by deferring detailed work to Phase 3.

---

## Option C — Recommended SA Scope (Fits Budget)

To fit within 80-120 SA hours, the following reductions are recommended (see `03 Team Roles and Hours Summary.md` for full details):

| Reduction | Hours Saved |
|-----------|-------------|
| Shift Playbook drafting to Analyst (SA reviews) | 4 |
| Analyst drafts all architecture diagrams from SA whiteboard | 3 |
| Analyst does first-pass vendor scoring, SA validates | 3 |
| Analyst compiles Blueprint, SA reviews | 4 |
| Higher-level migration strategies (defer detail to Phase 3) | 4 |
| Combine workshops 2.1 + 2.8 | 3 |
| Conceptual data model only (defer physical design) | 3 |
| Defer detailed data flow + warehouse selection to Phase 3 | 7 |
| Defer security architecture to Phase 3 | 3 |
| Defer detailed migration strategies to Phase 3 | 8 |
| Reduce vendor deep-dives to preliminary scoring | 6 |
| **Total Savings** | **~48** |
| **Option C SA Total** | **~114** |

### Option C SA Weekly Distribution

| Week | Focus | SA Hours |
|------|-------|----------|
| 1 | Kickoff, Phase 0 validation, guardrails, ADR setup | ~14 |
| 2 | Strategy workshop, franchise policy start | ~14 |
| 3 | Data strategy, AI, KPI, architecture start | ~16 |
| 4 | Architecture design, data model, vendor shortlisting | ~16 |
| 5 | Integration, identity, API, vendor scoring | ~16 |
| 6 | Vendor recommendation, wave plan, reporting | ~16 |
| 7 | Deliverable review, client session prep | ~12 |
| 8 | Client review, sign-off, handoff | ~10 |
| **Total** | | **~114** |

This fits at ~14 hrs/week average, with some flexibility for weeks that run lighter or heavier.

---

## Key SA Decision Points

These are the critical decisions the SA must drive during the engagement:

| Decision | WBS Task | Week | Stakeholders |
|----------|----------|------|--------------|
| Unified platform vs. best-of-breed vs. hybrid | 2.1 | 2-3 | Brad, Danny, Rick |
| Franchise required vs. optional systems | 2.2 | 2-3 | Kevin, Katie, Brad |
| Data architecture approach (lake vs. warehouse vs. lakehouse) | 3.2.3 | 5 | Rick, IT |
| Integration pattern (middleware vs. direct vs. hybrid) | 3.3.2 | 5 | Rick, IT |
| Vendor direction (top 1-2 recommendation) | 4.6 | 6 | All leadership |
| Implementation wave sequencing | 5.1 | 6 | Brad, Danny, Ops |

---

*Prepared by StackHack Labs LLC — February 2026*
