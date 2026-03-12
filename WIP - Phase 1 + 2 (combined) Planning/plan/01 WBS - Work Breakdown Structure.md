# Gold's Gym Phase 1+2 Combined Engagement
## Work Breakdown Structure (WBS)

**Version:** 1.0
**Date:** February 2026
**Prepared by:** StackHack Labs LLC
**Engagement:** Phase 1 (Decisions & Strategy) + Phase 2 (Architecture & Blueprint) — Combined 8-Week Fixed-Bid

---

## Context

Gold's Gym completed Phase 0 (Audit & Discovery) which produced:
- Technology stack assessment with system scoring (Motionsoft: 2.0/5, ABC: 2.3/5)
- 150+ requirements matrix across 8 functional categories
- Vendor evaluation framework with weighted scoring
- Business Model Framework ("Gold's Strong Model" with 5 strategic pillars)
- Stakeholder interviews across 8 departments (Dec 2025 onsite)
- Strategic roadmap (Phases 1-7)

Phase 0 gaps (franchisee surveys, business process review, KPI definitions, compliance/risk — see `SOW/Phase0-SOW-Gap-Analysis.md`) will be closed before this engagement begins.

### Deliverables

This engagement produces two major deliverables:
1. **Gold's Gym Strategy & Playbook** — Signed off by leadership
2. **Architecture Blueprint & Implementation Plan** — Approved technical roadmap

---

## WS1 — Engagement Kickoff & Foundations (Weeks 1-2)

| # | Task | Owner | Hours | Notes |
|---|------|-------|-------|-------|
| 1.1 | Kickoff meeting with Gold's leadership (Brad, Danny, Rick) | SA + PM | SA: 3, PM: 3 | Set expectations, confirm scope, identify decision-makers. Align on combined Phase 1+2 approach |
| 1.2 | Review and validate Phase 0 deliverables as baseline | SA | 4 | Confirm Phase 0 gaps are closed; validate Current System Assessment, Requirements Matrix, and Vendor Evaluation Framework. Identify carryover risks |
| 1.3 | Stakeholder interview schedule (8 departments, round 2) | PM | 4 | Schedule focused sessions: Executive, Operations, Finance, Marketing, Digital, Fitness, Franchise, IT. Build on Dec 2025 onsite findings |
| 1.4 | Compile current-state architecture from Phase 0 outputs | Analyst | 8 | Formalize `environment-bubbles.png` into proper architecture diagram with data flows. Document Motionsoft↔HubSpot (48hr latency), ABC silo'd configs, Motion Vibe integration points |
| 1.5 | Competitive tech stack analysis refresh | Analyst | 12 | Update vendor landscape from Phase 0 comps work (`WIP - Comps/`). Gather latest pricing, features, and franchise fitness references (Crunch/ABC, Xponential/Mariana Tek, Planet/Club OS) |
| 1.6 | Define architectural guardrails document | **SA** | 6 | Non-negotiable principles aligned to Gold's Strong Model: API-first, multi-tenant, brand-level controls, data-unified, franchise-scalable, asset-light operations. Reference Technology Decision Framework from Phase 0 |
| 1.7 | Establish decision log / ADR (Architecture Decision Record) template | SA | 2 | Template for tracking all strategic and architectural decisions throughout engagement. Include: decision, context, options considered, outcome, rationale |

**WS1 Subtotals:** SA: 15 hrs | PM: 7 hrs | Analyst: 20 hrs | **Total: 42 hrs**

---

## WS2 — Strategic Decisions & Governance (Weeks 2-4)

| # | Task | Owner | Hours | Notes |
|---|------|-------|-------|-------|
| 2.1 | "System of One" strategy workshop with leadership | **SA** + PM | SA: 4, PM: 3 | Facilitate decision: unified platform vs. best-of-breed vs. hybrid. Use Phase 0 scoring data (ABC: 2.3/5, Motionsoft: 2.0/5). Frame against 7 non-negotiable capabilities |
| 2.2 | Franchise policy framework: required vs. optional systems | **SA** | 6 | Define what franchisees MUST use (core GMS, mobile app, billing/payment processing) vs. CAN choose (CRM, local marketing tools). Address 80%+ ABC migration implications |
| 2.3 | Data-first strategy document | **SA** | 6 | Data ownership model, normalization approach, single member profile strategy, standardized GL structure. Address current pain: no unified data lake, no centralized member database, self-reported revenue |
| 2.4 | AI & automation readiness assessment | **SA** | 4 | Identify AI enablement points: churn prediction, lead scoring, dynamic pricing, content personalization, automated royalty calculation, member journey analytics |
| 2.5 | Governance model design | SA + PM | SA: 3, PM: 4 | Steering committee structure, decision rights (RACI), change management process, technology governance cadence. Address franchise resistance risk |
| 2.6 | KPI tree & metrics framework | **SA** + Analyst | SA: 4, Analyst: 6 | Align with Phase 0 Dashboard/KPI gap. Define KPI hierarchy: network > region > location > member. Include: revenue visibility, CAC (currently $88-125 vs. $60-70 benchmark), NPS, utilization |
| 2.7 | Franchise technology fee model analysis | Analyst | 6 | Research competitor fee structures (Crunch: $5/join online + billing rebate, Planet Fitness, Xponential). Model revenue scenarios for Gold's. Currently collecting $0 in tech fees |
| 2.8 | Strategy workshop #2: Data, AI, and franchise policies | **SA** + PM | SA: 3, PM: 2 | Present findings from 2.2-2.4, 2.6-2.7 to leadership for alignment and sign-off |
| 2.9 | Draft Gold's Gym Strategy & Playbook (Deliverable 1) | SA + Analyst | SA: 6, Analyst: 8 | Compile all strategic decisions into formal playbook document. Include architectural guardrails, franchise policies, data strategy, governance model, KPI framework, fee model recommendation |

**WS2 Subtotals:** SA: 36 hrs | PM: 9 hrs | Analyst: 20 hrs | **Total: 65 hrs**

---

## WS3 — Architecture Design (Weeks 3-6)

### 3.1 Target Architecture

| # | Task | Owner | Hours | Notes |
|---|------|-------|-------|-------|
| 3.1.1 | Target-state system architecture design | **SA** | 8 | High-level architecture: core GMS (replacing Motionsoft + ABC), CRM/CDP, mobile app (consolidating 20-30 fragmented apps), data lake, integrations layer, identity/SSO. Must satisfy all 7 non-negotiable capabilities |
| 3.1.2 | Architecture diagrams (L1 context, L2 container, L3 component) | SA + Analyst | SA: 4, Analyst: 6 | C4-style diagrams. L1: system context (Gold's ecosystem + external actors). L2: containers (GMS, app, data lake, CDP, integrations). L3: component detail for critical containers |
| 3.1.3 | Current-to-target gap mapping | **SA** | 4 | Map each current system (Motionsoft, ABC, HubSpot, Motion Vibe) to target state. Identify what's replaced, retained (Motion Vibe: 4.5/5), or net-new |

### 3.2 Data Architecture

| # | Task | Owner | Hours | Notes |
|---|------|-------|-------|-------|
| 3.2.1 | Canonical data model design | **SA** | 6 | Core entities: Member, Location, Transaction, Billing, Membership, Franchise Group. Standardized GL structure. Single member profile across network |
| 3.2.2 | Data flow architecture (ETL/ELT strategy) | **SA** | 4 | How data moves: source systems → normalization → data lake → BI/analytics → CDP. Address current 48hr HubSpot latency. Define real-time vs. batch requirements |
| 3.2.3 | Data lake / warehouse strategy | SA + Analyst | SA: 3, Analyst: 4 | Technology recommendation (Snowflake, BigQuery, Redshift) with rationale. Cost modeling. Franchise data segregation approach |

### 3.3 Integration Architecture

| # | Task | Owner | Hours | Notes |
|---|------|-------|-------|-------|
| 3.3.1 | Integration topology mapping | **SA** | 6 | All system-to-system integrations: GMS↔App, GMS↔Gate (Gantner), GMS↔POS, GMS↔CRM, GMS↔Data Lake, GMS↔InBody, GMS↔Les Mills, GMS↔Payment Processors. Tiered access control for recovery suite |
| 3.3.2 | API strategy & integration patterns | **SA** | 4 | REST vs. event-driven vs. batch by use case. Middleware/iPaaS recommendation. Error handling patterns. Webhook strategy for real-time events |
| 3.3.3 | Third-party integration inventory and assessment | Analyst | 8 | Deep-dive on: Motion Vibe (retain), InBody, gate vendors (Gantner), payment processors, Les Mills, FranConnect, HYROX integration requirements |

### 3.4 Identity & Permissions

| # | Task | Owner | Hours | Notes |
|---|------|-------|-------|-------|
| 3.4.1 | Identity architecture (SSO, member identity, staff identity) | **SA** | 4 | Unified member identity across franchise network (enables reciprocity/travel passes). Staff RBAC model. SSO strategy for operational tools |
| 3.4.2 | Permission model design (brand > franchise group > location > role) | **SA** | 3 | Multi-level permission hierarchy matching franchise business model. Brand-level push controls with franchisee-level flexibility. Address Kim's manual config burden |

### 3.5 Reporting & Analytics Layer

| # | Task | Owner | Hours | Notes |
|---|------|-------|-------|-------|
| 3.5.1 | Reporting architecture design | **SA** | 3 | BI tool strategy, dashboard framework, real-time vs. batch reporting. Enable real-time royalty visibility and automated franchise billing |
| 3.5.2 | Franchise dashboard wireframes and KPI definitions | Analyst | 6 | Mock executive, franchise group, and location-level dashboards based on KPI tree from WS2. Include revenue, membership, utilization, recovery suite metrics |

### 3.6 Security & Compliance Architecture

| # | Task | Owner | Hours | Notes |
|---|------|-------|-------|-------|
| 3.6.1 | Security architecture overview | **SA** | 3 | Network security, data encryption at rest/in transit, PCI compliance for payment processing, CCPA/GDPR considerations for member data, SMS compliance (currently blocked by legal) |
| 3.6.2 | Compliance requirements mapping | Analyst | 4 | Map regulatory requirements (PCI-DSS, CCPA, state-level privacy laws) to architecture components. Document franchise data segregation requirements |

**WS3 Subtotals:** SA: 52 hrs | PM: 0 hrs | Analyst: 28 hrs | **Total: 80 hrs**

---

## WS4 — Vendor Deep-Dive & Recommendations (Weeks 4-6)

| # | Task | Owner | Hours | Notes |
|---|------|-------|-------|-------|
| 4.1 | Refine vendor shortlist from Phase 0 evaluation framework | **SA** | 3 | Apply architectural guardrails (1.6) to narrow from Phase 0 candidate list to 3-4 vendors for deep evaluation. Must meet non-negotiable capabilities |
| 4.2 | Vendor capability deep-dives (3-4 vendors) | SA + Analyst | SA: 6, Analyst: 12 | Score against 150+ requirements from Phase 0 matrix. Analyst gathers vendor materials, pricing, and references; SA evaluates architecture fit and franchise scalability |
| 4.3 | API & integration capability assessment per vendor | **SA** | 4 | Evaluate API documentation quality, webhook support, data export capabilities, iPaaS compatibility, real-time event support. Test against integration topology from 3.3.1 |
| 4.4 | Franchise fitness reference research | Analyst | 6 | Research references: Crunch (ABC), Xponential (Mariana Tek), EOS Fitness, Blink Fitness. Focus on migration experience, franchise adoption, and operator satisfaction |
| 4.5 | TCO modeling (3-year and 5-year) | Analyst + SA | SA: 3, Analyst: 6 | Per vendor scenario: implementation costs, per-location licensing, migration costs (corporate Motionsoft + franchise ABC), ongoing support, training. Factor in tech fee revenue offset |
| 4.6 | Vendor comparison matrix and recommendation memo | **SA** | 4 | Weighted scoring aligned to Gold's Strong Model filters. Clear recommendation with trade-offs documented. Not final selection (Phase 3) — directional recommendation |
| 4.7 | Present vendor findings to leadership | SA + PM | SA: 3, PM: 2 | Decision session: align on preferred vendor direction. Present TCO scenarios and scoring. Set expectations for Phase 3 formal RFP process |

**WS4 Subtotals:** SA: 23 hrs | PM: 2 hrs | Analyst: 24 hrs | **Total: 49 hrs**

---

## WS5 — Implementation Wave Plan (Weeks 6-7)

| # | Task | Owner | Hours | Notes |
|---|------|-------|-------|-------|
| 5.1 | Define implementation waves / phases | **SA** | 4 | Wave 1: Core GMS + corporate migration (~50 locations, Motionsoft replacement). Wave 2: Franchise pilot (select franchise groups). Wave 3: Network rollout (80%+ ABC migration). Wave 4: Advanced capabilities (CDP, AI, content personalization) |
| 5.2 | Migration strategy (corporate Motionsoft → new GMS) | **SA** | 4 | Data migration approach (member records, billing history, contracts). Parallel run plan. Cutover criteria. Rollback strategy. Kim's configuration knowledge transfer |
| 5.3 | Franchise migration strategy (ABC → new GMS) | **SA** | 4 | Phased approach for 80%+ of network. Franchise group sequencing criteria (size, readiness, contract timing). ABC back-office transition plan. Risk mitigation for operator disruption |
| 5.4 | Dependency mapping and risk register | SA + Analyst | SA: 2, Analyst: 4 | Cross-wave dependencies, critical path items. Risk severity and mitigation. Key risks: franchisee resistance, ABC contract timing, Kim single-point-of-failure, timeline pressure (Kevin: "2 more years of inaction loses credibility") |
| 5.5 | Resource & capability requirements per wave | SA + PM | SA: 2, PM: 3 | What Gold's needs internally (lean team constraints) + what StackHack provides (advisory, PMO) + what vendors provide (implementation, training) per wave |
| 5.6 | High-level timeline (Gantt-style) | PM + Analyst | PM: 4, Analyst: 4 | 18-24 month implementation timeline across all waves. Align with strategic imperatives: Year 1 (unified platform + app), Years 2-3 (full franchise network + CDP), Years 3-5 (tech fees + international) |
| 5.7 | Budget envelope by wave | Analyst + SA | SA: 2, Analyst: 4 | Cost ranges per wave for executive planning: vendor licensing, implementation services, internal resources, advisory/PMO, training, change management. Include tech fee revenue offset modeling |

**WS5 Subtotals:** SA: 18 hrs | PM: 7 hrs | Analyst: 12 hrs | **Total: 37 hrs**

---

## WS6 — Deliverable Compilation & Sign-Off (Weeks 7-8)

| # | Task | Owner | Hours | Notes |
|---|------|-------|-------|-------|
| 6.1 | Compile Architecture Blueprint document (Deliverable 2) | SA + Analyst | SA: 6, Analyst: 8 | Target architecture, canonical data model, integration topology, identity/permissions, reporting layer, security overview. Include all C4 diagrams |
| 6.2 | Compile Implementation Plan document (part of Deliverable 2) | SA + PM | SA: 3, PM: 4 | Wave plan, migration strategies, timeline, budget envelopes, resource requirements. Phase 3 prerequisites |
| 6.3 | Executive presentation deck | PM + Analyst | PM: 4, Analyst: 6 | Visual summary of strategy, architecture, vendor recommendation, and implementation plan. Suitable for Brad/Danny/Rick leadership presentation |
| 6.4 | Internal review and QA | SA | 4 | SA reviews all deliverables for technical accuracy, coherence, and alignment to Gold's Strong Model filters. Verify all ADR decisions are reflected |
| 6.5 | Client review session (Architecture Blueprint walkthrough) | SA + PM | SA: 3, PM: 2 | Technical deep-dive with Rick (IT) and operations stakeholders. Gather feedback before final sign-off |
| 6.6 | Leadership sign-off meeting | SA + PM | SA: 3, PM: 2 | Present both deliverables to Brad, Danny, Rick. Obtain formal sign-off on Strategy Playbook and Architecture Blueprint |
| 6.7 | Phase 3 scope recommendation and handoff | SA + PM | SA: 2, PM: 2 | Outline Phase 3 (RFPs & Vendor Selection) scope, timeline, and prerequisites. Identify any open items carried forward |

**WS6 Subtotals:** SA: 21 hrs | PM: 14 hrs | Analyst: 14 hrs | **Total: 49 hrs**

---

## Full Engagement Hour Summary

| Role | WS1 | WS2 | WS3 | WS4 | WS5 | WS6 | **Total** |
|------|-----|-----|-----|-----|-----|-----|-----------|
| Solutions Architect (SA) | 15 | 36 | 52 | 23 | 18 | 21 | **165** |
| Engagement Manager / PM | 7 | 9 | 0 | 2 | 7 | 14 | **39** |
| Technical Analyst | 20 | 20 | 28 | 24 | 12 | 14 | **118** |
| **Workstream Total** | **42** | **65** | **80** | **49** | **37** | **49** | **322** |

> **Note:** SA hours (165) exceed the 80-120 hour budget at 10-15 hrs/week x 8 weeks. See `03 Team Roles and Hours Summary.md` for scoping options to fit within budget. Option C (recommended) reduces SA to ~114 hours.

---

## Key Dependencies & Assumptions

### Dependencies
- Phase 0 gaps must be closed before Week 1 kickoff (franchisee surveys, business process review, KPI definitions, compliance/risk)
- Gold's leadership (Brad, Danny, Rick) available for 3 workshop/decision sessions
- 8 department stakeholders available for Round 2 interviews during Weeks 2-3
- Vendor materials (pricing, API docs, references) obtainable within engagement timeline

### Assumptions
- Combined Phase 1+2 reduces overhead vs. sequential delivery
- Motion Vibe is retained (scored 4.5/5, non-negotiable per Fitness department)
- Corporate operates as "super franchisee" — no parallel systems
- Phase 3 (RFPs & Vendor Selection) follows; final vendor selection is NOT in scope

---

## Reference Documents

| Document | Location |
|----------|----------|
| Strategic Roadmap | `Deliverables/07 Phase 1-7 Plans/01 Strategic Roadmap.md` |
| Requirements Matrix (150+ reqs) | `Deliverables/04 Technology Stack Audit/02 Requirements Matrix.md` |
| Vendor Evaluation Framework | `Deliverables/01 Onsite Audit Reports/2 Best-in-Class Tech Stack Requirements.md` |
| Current System Assessment | `Deliverables/04 Technology Stack Audit/01 Current System Assessment.md` |
| Business Model Framework | `Deliverables/07 Phase 1-7 Plans/02 Business Model Framework.md` |
| Phase 0 Gap Analysis | `SOW/Phase0-SOW-Gap-Analysis.md` |
| Competitive Analysis | `WIP - Comps/` |

---

*Prepared by StackHack Labs LLC — February 2026*

