# Team Roles and Hours Summary
## Phase 1+2 Combined Engagement

**Version:** 1.0
**Date:** February 2026
**Engagement Duration:** 8 weeks

---

## Recommended Team Composition

| Role | Weekly Hours | 8-Week Total | Rationale |
|------|-------------|--------------|-----------|
| **Solutions Architect (SA)** | 10-15 hrs | 80-120 hrs | Leads all technical decisions, architecture design, vendor evaluation, system deep-dives. Primary client-facing technical resource |
| **Engagement Manager / PM** | 5-8 hrs | 40-64 hrs | Client scheduling, status tracking, deliverable packaging, workshop logistics. Manages 8+ stakeholders across departments |
| **Technical Analyst** | 8-12 hrs | 64-96 hrs | Research, vendor analysis leg work, documentation drafting, data gathering, diagram creation. Frees SA for decision-making |
| **Total** | **23-35 hrs/wk** | **184-280 hrs** | |

---

## Why These Roles

### Solutions Architect (SA)
The SA is the engagement lead and the only role that cannot be delegated. All architectural decisions, vendor evaluations, and strategic recommendations flow through the SA. The SA's 10-15 hr/week constraint is the binding limitation on engagement scope.

### Engagement Manager / PM
Gold's has 8+ stakeholders across departments (Executive, Operations, Finance, Marketing, Digital, Fitness, Franchise, IT). Managing scheduling for workshops, interviews, and review sessions is a significant coordination effort. The PM also:
- Keeps the 8-week clock honest with status tracking
- Owns deliverable formatting, compilation, and presentation deck creation
- Manages the ADR log and action item tracking
- Coordinates between StackHack and Gold's teams

### Technical Analyst
At 10-15 hrs/week, the SA cannot do both decision-making AND heavy research/documentation. The Analyst does the work that enables SA decisions:
- Vendor deep-dives: gathering pricing, features, API documentation, references
- Competitive analysis updates (building on Phase 0 `WIP - Comps/` work)
- Architecture diagram drafting from SA whiteboard sessions
- Dashboard wireframes and KPI definition documentation
- Integration inventory compilation
- TCO modeling data gathering
- Compliance requirements mapping

---

## Full Scope Hours by Role and Workstream

| Workstream | SA | PM | Analyst | Total |
|-----------|-----|-----|---------|-------|
| WS1 — Kickoff & Foundations | 15 | 7 | 20 | 42 |
| WS2 — Strategic Decisions & Governance | 36 | 9 | 20 | 65 |
| WS3 — Architecture Design | 52 | 0 | 28 | 80 |
| WS4 — Vendor Deep-Dive | 23 | 2 | 24 | 49 |
| WS5 — Implementation Wave Plan | 18 | 7 | 12 | 37 |
| WS6 — Deliverable Compilation | 21 | 14 | 14 | 49 |
| **Total** | **165** | **39** | **118** | **322** |

### Full Scope Budget Gap

| Role | Full Scope | Budget | Gap |
|------|-----------|--------|-----|
| SA | 165 hrs | 80-120 hrs | **45-85 hrs over** |
| PM | 39 hrs | 40-64 hrs | Within budget |
| Analyst | 118 hrs | 64-96 hrs | **22-54 hrs over** |

---

## Scoping Options

### Option A: Compress SA Hours (Target ~138 hrs)

Shift more drafting work to the Analyst; SA focuses purely on decision-making and review.

| Reduction | Hours Saved | Impact |
|-----------|-------------|--------|
| 2.9: Analyst drafts Playbook, SA reviews | 4 hrs | Lower — SA still reviews and approves |
| 3.1.2: Analyst drafts all diagrams from SA whiteboard | 3 hrs | Lower — diagrams still SA-directed |
| 4.2: Analyst does first-pass vendor scoring, SA validates | 3 hrs | Low — Analyst already does research |
| 6.1: Analyst compiles Blueprint, SA reviews | 4 hrs | Low — compilation is mechanical |
| 5.2/5.3: Higher-level migration strategies | 4 hrs | Medium — less detail for Phase 3 team |
| 2.1+2.8: Combine into single 2-session workshop | 3 hrs | Medium — tighter but achievable |
| 3.2.1: Conceptual data model only, defer physical design | 3 hrs | Medium — Phase 3 team defines physical |

**Option A SA Total: ~138 hrs** (still 18-58 hrs over budget)

**Analyst impact:** +14 hrs shifted from SA → Analyst total ~132 hrs (over budget). Need to increase Analyst hours or reduce Analyst-owned scope.

---

### Option B: Extend to 10 Weeks (Target ~120 hrs at 12 hrs/wk)

Same scope as Option A but spread over 10 weeks instead of 8.

| Attribute | Value |
|-----------|-------|
| SA hours | ~138 hrs at ~14 hrs/wk |
| Duration | 10 weeks |
| Benefit | Full scope delivered |
| Risk | Client engagement fatigue; delayed Phase 3 start |

**Option B requires client agreement to extend timeline.**

---

### Option C: "Lite" Architecture — Recommended (Target ~114 hrs)

Deliver architecture at conceptual/L1-L2 level. Defer detailed L3 component design, physical data models, and detailed migration strategies to Phase 3. This is the recommended approach for fitting within budget.

**All Option A reductions PLUS:**

| Reduction | Hours Saved | Impact |
|-----------|-------------|--------|
| Option A reductions (above) | 24 hrs | See above |
| 3.2.2 + 3.2.3: Defer detailed data flow and warehouse selection | 7 hrs | Medium — Phase 3 selects technology after vendor selection |
| 3.6.1: Defer security architecture detail | 3 hrs | Low — security design tightly coupled to vendor selection |
| 5.2/5.3: Defer migration strategies entirely | 8 hrs (full) | Medium — migration planning couples to vendor choice |
| 4.2-4.3: Preliminary vendor scoring only | 6 hrs | Medium — deep evaluation in Phase 3 RFP process |

**Option C Totals:**

| Role | Hours | Rate (TBD) | Est. Cost |
|------|-------|-----------|-----------|
| Solutions Architect | ~114 | $___/hr | $_______ |
| Engagement Manager / PM | ~50 | $___/hr | $_______ |
| Technical Analyst | ~118 | $___/hr | $_______ |
| **Total** | **~282** | | **$_______** |

**SA weekly average: ~14 hrs/week** — fits within 10-15 hr/week commitment.

### What Option C Defers to Phase 3

| Item | Phase 3 Task |
|------|-------------|
| Physical data model | Define after vendor selection (vendor constrains schema) |
| Detailed ETL/ELT pipeline design | Design after data warehouse technology selected |
| Data warehouse technology selection | Select during vendor evaluation with hands-on POC |
| Detailed security architecture | Design after vendor security capabilities assessed |
| Detailed migration runbooks | Plan after vendor implementation team engaged |
| Deep vendor API evaluation | Part of Phase 3 RFP bake-off/POC process |

**These deferrals are natural** — detailed design in these areas depends on vendor selection, which is the core output of Phase 3. Phase 1+2 should establish the *requirements and evaluation criteria* for these decisions, not make them prematurely.

---

### Option Comparison Summary

| Attribute | Full Scope | Option A | Option B | **Option C** |
|-----------|-----------|----------|----------|-------------|
| SA Hours | 165 | 138 | 138 | **114** |
| Duration | 8 weeks | 8 weeks | 10 weeks | **8 weeks** |
| Fits SA Budget? | No | No | Borderline | **Yes** |
| Architecture Depth | L1/L2/L3 | L1/L2/L3 | L1/L2/L3 | **L1/L2** |
| Migration Detail | Full | Reduced | Reduced | **Deferred** |
| Vendor Depth | Full | Reduced | Reduced | **Preliminary** |
| Risk | Over budget | Over budget | Timeline slip | **Phase 3 has more work** |
| **Recommendation** | | | | **Recommended** |

---

## Analyst Task Distribution (Option C)

| Workstream | Tasks | Hours |
|-----------|-------|-------|
| WS1 | Current-state architecture formalization (1.4), competitive analysis refresh (1.5) | 20 |
| WS2 | KPI framework support (2.6), tech fee research (2.7), Playbook drafting (2.9) | 20 |
| WS3 | Architecture diagram drafting (3.1.2), data warehouse research (3.2.3), integration inventory (3.3.3), dashboard wireframes (3.5.2), compliance mapping (3.6.2) | 28 |
| WS4 | Vendor material gathering + first-pass scoring (4.2), reference research (4.4), TCO modeling (4.5) | 24 |
| WS5 | Risk register (5.4), timeline drafting (5.6), budget modeling (5.7) | 12 |
| WS6 | Blueprint compilation (6.1), executive deck (6.3) | 14 |
| **Total** | | **118** |

---

## PM Task Distribution (Option C)

| Workstream | Tasks | Hours |
|-----------|-------|-------|
| WS1 | Kickoff logistics (1.1), interview scheduling (1.3) | 7 |
| WS2 | Workshop facilitation support (2.1, 2.8), governance model (2.5) | 9 |
| WS3 | — | 0 |
| WS4 | Vendor presentation logistics (4.7) | 2 |
| WS5 | Resource requirements (5.5), timeline (5.6) | 7 |
| WS6 | Implementation plan (6.2), exec deck (6.3), reviews (6.5-6.7) | 14 |
| **Total** | | **~50** |

> PM hours increase in WS6 as deliverable compilation and client presentation logistics ramp up. PM has minimal WS3 involvement, which is intentional — architecture is SA + Analyst driven.

---

*Prepared by StackHack Labs LLC — February 2026*
