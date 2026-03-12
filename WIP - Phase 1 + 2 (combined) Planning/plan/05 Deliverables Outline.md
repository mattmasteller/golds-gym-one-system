# Deliverables Outline
## Phase 1+2 Combined Engagement

**Version:** 1.0
**Date:** February 2026
**Prepared by:** StackHack Labs LLC

---

## Overview

This engagement produces two major deliverables:

| # | Deliverable | Sign-Off By | Target |
|---|------------|-------------|--------|
| 1 | Gold's Gym Strategy & Playbook | Brad, Danny | Week 8 |
| 2 | Architecture Blueprint & Implementation Plan | Brad, Danny, Rick | Week 8 |

Both deliverables are supported by an executive presentation deck and a set of working artifacts (ADR log, vendor comparison matrix, etc.).

---

## Deliverable 1: Gold's Gym Strategy & Playbook

The Strategy Playbook captures all strategic decisions made during the engagement and establishes the guiding principles for Gold's Gym's technology transformation.

### Table of Contents

**1. Executive Summary**
- Engagement objectives and scope
- Key decisions made
- Strategic direction summary

**2. Architectural Guardrails** *(WBS 1.6)*
- Non-negotiable technology principles
  - API-first architecture
  - Multi-tenant / franchise-scalable
  - Brand-level controls with franchisee flexibility
  - Data-unified (one data model)
  - Asset-light operations (reduce headcount, not create it)
- Alignment to Gold's Strong Model (5 strategic pillars)
- Technology Decision Framework (6 filters from Business Model Framework)

**3. "System of One" Strategy** *(WBS 2.1)*
- Platform approach decision: unified vs. best-of-breed vs. hybrid
- Rationale and trade-offs evaluated
- Phase 0 scoring data supporting the decision
  - ABC: 2.3/5 | Motionsoft: 2.0/5 | Motion Vibe: 4.5/5
- Systems retained (Motion Vibe) vs. replaced vs. net-new

**4. Franchise Technology Policies** *(WBS 2.2)*
- Required systems (franchisees MUST use)
  - Core GMS (membership, billing, check-in)
  - Mobile app (unified Gold's member app)
  - Payment processing (standardized processors)
  - Reporting/data feed (centralized data lake)
- Optional systems (franchisees CAN choose)
  - Local CRM and lead management
  - Local marketing tools
  - Supplementary fitness technology
- Transition requirements for current ABC operators (80%+ of network)
- Compliance and enforcement mechanisms

**5. Data-First Strategy** *(WBS 2.3)*
- Data ownership model (brand vs. franchisee)
- Single member profile strategy
  - Enables reciprocity and travel passes
  - Eliminates 20-30+ fragmented member databases
- Data normalization approach
- Standardized GL structure (chart of accounts)
- Real-time revenue visibility (replacing self-reported royalty calculation)

**6. AI & Automation Readiness** *(WBS 2.4)*
- AI enablement points identified
  - Churn prediction and retention triggers
  - Lead scoring and conversion optimization
  - Dynamic pricing and promotion scheduling
  - Content personalization (app, email, SMS)
  - Automated royalty calculation and franchise billing
  - Member journey analytics
- Data prerequisites for each AI use case
- Recommended implementation sequencing (after core platform)

**7. Governance Model** *(WBS 2.5)*
- Steering committee structure and cadence
- Decision rights matrix (RACI)
  - Executive decisions (Brad, Danny)
  - Technology decisions (Rick, SA)
  - Franchise policy decisions (Kevin, Katie)
  - Operational decisions (department leads)
- Change management process
- Technology governance cadence (monthly steering, quarterly roadmap)

**8. KPI Tree & Metrics Framework** *(WBS 2.6)*
- KPI hierarchy
  - Network level (Gold's corporate)
  - Region level
  - Location level
  - Member level
- Key metrics by category
  - Revenue: membership revenue, PT revenue, recovery suite revenue, tech fees
  - Growth: new joins, lead-to-member conversion, CAC (benchmark: $60-70 vs. current $88-125)
  - Retention: churn rate, NPS, visit frequency, recovery suite utilization
  - Operations: labor cost ratio, self-service adoption, support ticket volume
  - Franchise: royalty compliance, platform adoption, data quality score
- Dashboard requirements (executive, franchise group, location)

**9. Technology Fee Model Recommendation** *(WBS 2.7)*
- Competitive analysis (Crunch, Planet Fitness, Xponential fee structures)
- Revenue modeling scenarios
  - Per-join fees
  - Per-member-per-month tech fees
  - Billing rebate model
  - Hybrid approaches
- Recommended model with projected revenue
- Currently collecting $0 — opportunity sizing

**10. Architecture Decision Records (ADRs)**
- Index of all strategic decisions made during engagement
- Per decision: context, options evaluated, outcome, rationale

---

## Deliverable 2: Architecture Blueprint & Implementation Plan

The Architecture Blueprint defines the target-state technology architecture and the plan to get there.

### Table of Contents

**1. Executive Summary**
- Architecture vision aligned to Strategy Playbook
- Key architectural decisions
- Implementation approach overview

**2. Target-State System Architecture** *(WBS 3.1.1, 3.1.2)*
- L1 Context Diagram — Gold's ecosystem with external actors
  - Members, franchise operators, corporate staff, vendors, payment processors
- L2 Container Diagram — Major system components
  - Core GMS (replacing Motionsoft + ABC)
  - Mobile app (unified, replacing 20-30+ fragmented apps)
  - CRM / CDP
  - Data lake / analytics platform
  - Integration layer (middleware/iPaaS)
  - Identity provider (SSO)
  - Motion Vibe (retained — group exercise, scheduling, payroll)
- Component descriptions and responsibilities
- Technology recommendations per component (where appropriate pre-vendor selection)

**3. Current-to-Target Gap Mapping** *(WBS 3.1.3)*
- System-by-system mapping

  | Current System | Target State | Action |
  |---------------|-------------|--------|
  | Motionsoft (corporate) | Core GMS | Replace |
  | ABC Fitness (franchise 80%+) | Core GMS | Replace/migrate |
  | HubSpot (CRM) | CRM/CDP | Replace or integrate |
  | Motion Vibe | Motion Vibe | **Retain** and integrate |
  | Various franchise CRMs | CRM/CDP or optional | Replace or permit |
  | 20-30 mobile apps | Unified Gold's app | Consolidate |
  | FranConnect | FranConnect or integrated | Evaluate |

- Gap severity and migration complexity per system
- Net-new capabilities required

**4. Canonical Data Model** *(WBS 3.2.1)*
- Conceptual entity model
  - Member (unified profile across network)
  - Location (corporate + franchise)
  - Franchise Group (multi-location operators)
  - Membership (plans, tiers, pricing)
  - Transaction (payments, refunds, adjustments)
  - Billing (recurring, collections, write-offs)
  - Check-In (visit tracking, reciprocity)
  - Class/Session (group exercise, PT, recovery)
- Standardized GL structure (chart of accounts)
- Data ownership and access rules by franchise hierarchy

**5. Data Flow Architecture** *(WBS 3.2.2, 3.2.3)*
- Data flow diagram: source systems → normalization → data lake → BI/analytics → CDP
- Real-time vs. batch data flow requirements
- Data lake / warehouse technology recommendation with rationale
- Franchise data segregation approach
- Addressing current pain points
  - 48hr HubSpot data latency → real-time event streaming
  - Manual reconciliation → automated data normalization
  - Self-reported revenue → transaction-based royalty calculation

**6. Integration Topology** *(WBS 3.3.1, 3.3.2)*
- Integration map (all system-to-system connections)
  - GMS ↔ Mobile App
  - GMS ↔ Gate/Access Control (Gantner)
  - GMS ↔ POS
  - GMS ↔ CRM/CDP
  - GMS ↔ Data Lake
  - GMS ↔ InBody (body composition)
  - GMS ↔ Motion Vibe (group exercise)
  - GMS ↔ Payment Processors
  - GMS ↔ Les Mills / HYROX
  - GMS ↔ FranConnect (franchise portal)
  - Data Lake ↔ BI / Analytics
  - CDP ↔ Marketing channels (email, SMS, push)
- API strategy
  - REST APIs for synchronous operations
  - Event-driven (webhooks/message queues) for real-time events
  - Batch for bulk data transfers and reporting
- Middleware / iPaaS recommendation
- Error handling and retry patterns
- Third-party integration assessment summary

**7. Identity & Permissions Architecture** *(WBS 3.4.1, 3.4.2)*
- Member identity
  - Unified member ID across franchise network
  - Enables reciprocity / travel pass tracking
  - Single sign-on for mobile app and web portal
- Staff identity
  - Role-based access control (RBAC)
  - SSO for operational tools
- Permission hierarchy
  - Brand level (Gold's corporate — push controls)
  - Franchise group level (multi-location operators)
  - Location level (individual gym)
  - Role level (GM, AGM, front desk, trainer)
- Tiered access control for recovery suite (membership tier gating)

**8. Reporting & Analytics Layer** *(WBS 3.5.1, 3.5.2)*
- BI tool strategy and recommendation
- Dashboard framework
  - Executive dashboard (network KPIs, revenue, growth)
  - Franchise group dashboard (group performance, compliance)
  - Location dashboard (daily operations, membership, utilization)
- Real-time vs. batch reporting by use case
- Dashboard wireframes (conceptual mockups)
- Alignment to KPI tree from Strategy Playbook

**9. Security & Compliance Architecture** *(WBS 3.6.1, 3.6.2)*
- Security architecture overview
  - Data encryption (at rest, in transit)
  - Network security principles
  - PCI-DSS compliance for payment processing
- Privacy compliance
  - CCPA/GDPR considerations for member data
  - State-level privacy law mapping
  - SMS marketing compliance (currently blocked by legal)
- Franchise data segregation and access controls
- Compliance requirements mapped to architecture components

**10. Vendor Evaluation & Recommendation** *(WBS 4.1-4.7)*
- Evaluation methodology (Phase 0 framework + architectural guardrails)
- Vendor shortlist (3-4 vendors)
- Scoring against 150+ requirements
- API & integration capability assessment
- Franchise fitness reference analysis
- TCO modeling (3-year and 5-year) by vendor scenario
- Weighted comparison matrix
- **Directional recommendation** (with trade-offs)
- Phase 3 RFP/bake-off prerequisites

**11. Implementation Wave Plan** *(WBS 5.1-5.3)*
- Wave definitions

  | Wave | Scope | Timeline |
  |------|-------|----------|
  | Wave 1 | Core GMS + corporate migration (~50 locations) | Months 1-6 |
  | Wave 2 | Franchise pilot (select groups) | Months 4-9 |
  | Wave 3 | Network rollout (80%+ ABC migration) | Months 6-18 |
  | Wave 4 | Advanced capabilities (CDP, AI, content) | Months 12-24 |

- Corporate migration strategy (Motionsoft → new GMS)
  - Data migration approach
  - Parallel run plan
  - Cutover criteria and rollback strategy
- Franchise migration strategy (ABC → new GMS)
  - Franchise group sequencing criteria
  - ABC back-office transition plan
  - Risk mitigation for operator disruption

**12. Risk Register & Dependencies** *(WBS 5.4)*
- Cross-wave dependencies and critical path
- Risk register with severity and mitigation

  | Risk | Severity | Mitigation |
  |------|----------|------------|
  | Franchisee resistance to platform change | High | Phased rollout, operator input, clear ROI |
  | ABC contract/timing constraints | High | Sequencing by contract renewal dates |
  | Kim single-point-of-failure (config knowledge) | Medium | Knowledge transfer + automation |
  | Timeline pressure (Kevin's credibility concern) | Medium | Quick wins in Wave 1, visible progress |
  | International complexity (RSG Germany) | Low | Domestic-first, international Phase 5+ |

**13. Resource & Budget Plan** *(WBS 5.5-5.7)*
- Resource requirements per wave
  - Gold's internal (lean team)
  - StackHack Labs (advisory, PMO)
  - Vendor (implementation, training)
- High-level timeline (18-24 months, Gantt-style)
- Budget envelope by wave
  - Vendor licensing
  - Implementation services
  - Internal resources
  - Advisory/PMO
  - Training and change management
- Technology fee revenue offset modeling

**14. Phase 3 Readiness & Handoff** *(WBS 6.7)*
- Phase 3 (RFPs & Vendor Selection) scope outline
- Prerequisites for Phase 3 kickoff
- Open items carried forward
- Recommended Phase 3 timeline (6-8 weeks)

---

## Supporting Artifacts

In addition to the two formal deliverables, the engagement produces:

| Artifact | Description | Format |
|----------|-------------|--------|
| Architecture Decision Records (ADRs) | Log of all decisions with context and rationale | Markdown/PDF |
| Vendor Comparison Matrix | Weighted scoring of 3-4 vendors against 150+ requirements | Excel/PDF |
| Executive Presentation Deck | Visual summary for leadership sign-off | PowerPoint/PDF |
| Dashboard Wireframes | Conceptual mockups of executive, franchise, and location dashboards | PDF/Figma |
| Current-State Architecture Diagram | Formalized version of environment-bubbles.png | Draw.io/PDF |
| Target-State Architecture Diagrams | C4-style L1/L2 diagrams | Draw.io/PDF |
| Integration Topology Map | All system-to-system connections | Draw.io/PDF |
| Risk Register | Severity-rated risks with mitigation strategies | Excel/PDF |
| KPI Tree | Hierarchical metrics framework | PDF |

---

## Deliverable Review Process

| Step | Activity | Week | Participants |
|------|----------|------|-------------|
| 1 | SA internal QA of all deliverables | 8 (Mon-Wed) | SA |
| 2 | Client review session — Architecture Blueprint walkthrough | 8 (Thu) | SA, PM, Rick, Ops leads |
| 3 | Incorporate feedback and revisions | 8 (Thu-Fri) | SA, Analyst |
| 4 | Leadership sign-off meeting | 8 (Fri) | SA, PM, Brad, Danny, Rick |
| 5 | Final document delivery and Phase 3 handoff | 8 (Fri) | SA, PM |

---

*Prepared by StackHack Labs LLC — February 2026*
