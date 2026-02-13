# Gold's Gym "One System" Initiative
## Best-in-Class Tech Stack Requirements & Vendor Evaluation Framework

**Version:** 1.0
**Date:** December 2025
**Prepared by:** StackHack Labs LLC

---

## Table of Contents
1. [Executive Summary](#part-1-executive-summary)
2. [Functional Requirements by Capability Area](#part-2-functional-requirements-by-capability-area)
3. [Vendor Evaluation Scoring Matrix](#part-3-vendor-evaluation-scoring-matrix)
4. [Current System Pre-Scoring](#part-4-current-system-pre-scoring)
5. [Vendor Landscape](#part-5-vendor-landscape-for-evaluation)
6. [Recommended Evaluation Approach](#part-6-recommended-evaluation-approach)
7. [Appendix: Department-Specific Requirements](#appendix-department-specific-requirements)

---

# Part 1: Executive Summary

## Strategic Context

Gold's Gym is pivoting from a corporate-gym-focused model to a **franchise-growth-driven strategy**. The 3-5 year goal is to:
- Maintain ~50 corporate locations (steady state)
- Grow franchise network by 16-25 new gyms annually
- Develop a "best-in-class franchise playbook" to attract tier-one investors
- Return to strength & performance brand positioning

## The Problem

The current technology landscape is fragmented:
- **Corporate**: Motionsoft + HubSpot + Motion Vibe + custom integrations
- **Franchise (80%+)**: ABC Fitness with 50+ different configurations
- **Result**: No unified data, no brand-level controls, manual processes everywhere

## North Star: Member Experience First

Any new tech stack must prioritize the **member experience** above all else:
- One app for all domestic members
- Seamless online joining that "just works"
- Easy class and PT booking
- Consistent experience regardless of location

## Approach: Franchise-First

The new system should treat **corporate as a "super franchisee"** using the same platform as all franchise locations. This ensures:
- True scalability
- Consistent member experience
- Simplified support model
- Brand-level configuration capabilities

---

# Part 2: Functional Requirements by Capability Area

## 2.1 Member Experience & Digital (Priority Weight: 25%)

This is the highest-priority capability area. The member-facing experience will determine franchise adoption and member satisfaction.

### 2.1.1 Mobile App Requirements

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| MX-001 | Unified app for all domestic locations | Must Have | Currently 20-30+ different Gold's apps exist |
| MX-002 | Single sign-on across locations | Must Have | Members shouldn't re-register per gym |
| MX-003 | Digital membership card (QR/barcode) | Must Have | Replace physical cards |
| MX-004 | Class schedule viewing and booking | Must Have | Real-time availability |
| MX-005 | Waitlist management with notifications | Should Have | Auto-promote when spot opens |
| MX-006 | PT session booking (remote) | Must Have | Currently can't book PT outside gym network |
| MX-007 | Push notifications | Must Have | Engagement and re-engagement |
| MX-008 | Account management (payment method, freeze, cancel) | Must Have | Self-service reduces support load |
| MX-009 | Workout tracking integration | Nice to Have | Connect cardio equipment, wearables |
| MX-010 | In-app messaging to staff | Nice to Have | Member-to-trainer communication |

### 2.1.2 Online Join (Join Online) Requirements

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| MX-011 | Automated configuration per location | Must Have | Currently 3-week manual process per franchise |
| MX-012 | Standardized membership presentation | Must Have | Consistent naming, pricing display |
| MX-013 | Multiple payment methods (card, ACH, Apple Pay) | Must Have | Reduce friction |
| MX-014 | Promo code / coupon support | Must Have | National and local promotions |
| MX-015 | FTC-compliant disclosures (auto-generated) | Must Have | Recurring dues, annual fees, etc. |
| MX-016 | E-signature for agreements | Must Have | Legally binding |
| MX-017 | Upsell opportunities (add-ons, PT intro) | Should Have | Increase ARPU |
| MX-018 | Guest pass / trial capture | Must Have | Lead generation |
| MX-019 | Multi-language support | Nice to Have | For international expansion |

### 2.1.3 Member Portal (Web)

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| MX-020 | Logged-in member state | Must Have | Currently prospect-only site |
| MX-021 | Payment history and receipts | Must Have | Self-service billing inquiries |
| MX-022 | Membership modification requests | Should Have | Upgrade, downgrade, freeze |
| MX-023 | Referral program interface | Should Have | Share codes, track rewards |

---

## 2.2 Core Gym Management Platform (Priority Weight: 20%)

The foundation that everything else builds on.

### 2.2.1 Architecture Requirements

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| GM-001 | Multi-tenant architecture | Must Have | Brand > Franchise Group > Location hierarchy |
| GM-002 | Brand-level configuration push | Must Have | Set defaults that apply to all locations |
| GM-003 | Franchise-level overrides (controlled) | Must Have | Allow customization within guardrails |
| GM-004 | Role-based access control | Must Have | GM sees their gym, owner sees their group |
| GM-005 | API-first design | Must Have | Integration with all ancillary systems |
| GM-006 | Real-time data sync | Must Have | No 24-48hr latency between systems |
| GM-007 | Audit trail / change logging | Must Have | Compliance and troubleshooting |

### 2.2.2 Member Lifecycle Management

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| GM-010 | Member registration (in-gym and online) | Must Have | |
| GM-011 | Membership modifications (upgrade/downgrade) | Must Have | |
| GM-012 | Freeze/hold with configurable rules | Must Have | Min/max duration, fees, limits |
| GM-013 | Cancellation workflow with configurable logic | Must Have | Notice periods, save attempts, final billing |
| GM-014 | Reinstatement process | Should Have | Win-back former members |
| GM-015 | Family/household linking | Should Have | Group billing, shared access |
| GM-016 | Corporate/employer accounts | Should Have | B2B membership management |

### 2.2.3 Billing & Payments

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| GM-020 | Multiple payment processor support | Must Have | Different banks per franchise |
| GM-021 | ACH and credit card processing | Must Have | |
| GM-022 | Failed payment retry logic (configurable) | Must Have | Reduce involuntary churn |
| GM-023 | Dunning management | Must Have | Automated past-due communications |
| GM-024 | Collections integration | Should Have | Third-party handoff |
| GM-025 | Refund processing | Must Have | |
| GM-026 | Sales tax calculation (state/city) | Must Have | Automatic based on location |
| GM-027 | Split billing (e.g., dues + locker separately) | Nice to Have | |

### 2.2.4 POS & Retail

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| GM-030 | Retail sales (merchandise, supplements) | Must Have | |
| GM-031 | Service sales (PT packages, assessments) | Must Have | |
| GM-032 | Inventory tracking | Should Have | |
| GM-033 | Discount/promo application | Must Have | |
| GM-034 | Receipt printing and email | Must Have | |

### 2.2.5 Check-In & Access

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| GM-040 | Barcode/QR code scan | Must Have | |
| GM-041 | Gate/turnstile integration | Must Have | Multiple hardware vendors |
| GM-042 | Access denial with reason display | Must Have | Past due, freeze, wrong location |
| GM-043 | Guest check-in tracking | Must Have | |
| GM-044 | 24/7 unmanned access support | Should Have | For applicable locations |
| GM-045 | Facial recognition ready | Nice to Have | Future-proofing |

---

## 2.3 CRM & Marketing Automation (Priority Weight: 15%)

### 2.3.1 Lead Management

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| CR-001 | Lead capture from multiple sources | Must Have | Web, app, walk-in, referral |
| CR-002 | Lead deduplication | Must Have | Prevent duplicate outreach |
| CR-003 | Lead assignment rules | Should Have | Route to appropriate staff |
| CR-004 | Lead scoring | Nice to Have | Prioritize hot leads |

### 2.3.2 Communication Channels

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| CR-010 | Email marketing (bulk and triggered) | Must Have | |
| CR-011 | SMS/text messaging | Must Have | Currently blocked by legal - compliance critical |
| CR-012 | Opt-in/opt-out management (global) | Must Have | Single source of truth across systems |
| CR-013 | Push notification integration | Should Have | Via app |
| CR-014 | In-app messaging | Nice to Have | |

### 2.3.3 Automation & Journeys

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| CR-020 | Automated nurture sequences | Must Have | Lead > trial > join |
| CR-021 | Win-back campaigns | Should Have | Former member re-engagement |
| CR-022 | Milestone communications | Should Have | Anniversary, usage milestones |
| CR-023 | At-risk member identification | Nice to Have | Predict churn |

### 2.3.4 Attribution & Analytics

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| CR-030 | Campaign attribution tracking | Must Have | Ad click to conversion |
| CR-031 | Retargeting audience sync | Must Have | Facebook, Google, etc. |
| CR-032 | Referral program tracking | Should Have | Member refers friend |
| CR-033 | Affiliate/influencer tracking | Should Have | Code-based attribution |
| CR-034 | CAC calculation by channel | Must Have | Currently $88-125, target $60-70 |

---

## 2.4 Franchise Operations (Priority Weight: 15%)

### 2.4.1 Franchise Billing & Royalties

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| FR-001 | Automated royalty calculation | Must Have | Currently manual spreadsheets |
| FR-002 | Ad fund fee calculation | Must Have | |
| FR-003 | Tech fee billing | Should Have | Currently $0 collected |
| FR-004 | ACH pull from franchise accounts | Must Have | Reduce payment chasing |
| FR-005 | Real-time revenue visibility | Must Have | No waiting for franchisee self-reporting |
| FR-006 | Exception handling workflow | Should Have | Disputes, adjustments |

### 2.4.2 Brand Controls

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| FR-010 | Standardized GL/chart of accounts | Must Have | Foundation for unified reporting |
| FR-011 | Membership tier templates | Must Have | Brand-defined options |
| FR-012 | Pricing guardrails | Should Have | Min/max by market |
| FR-013 | Promotion templates (national offers) | Must Have | One-click deployment |
| FR-014 | Branding/design standards enforcement | Nice to Have | |

### 2.4.3 Franchisee Self-Service

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| FR-020 | Franchisee portal/dashboard | Must Have | Performance visibility |
| FR-021 | Location comparison benchmarking | Should Have | How do I compare to peers? |
| FR-022 | Support ticket submission | Should Have | |
| FR-023 | Training/resource library | Should Have | |

### 2.4.4 Reciprocity / Travel Pass

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| FR-030 | Domestic travel pass system | Must Have | Currently paper cards! |
| FR-031 | Inter-gym settlement | Must Have | Track and compensate visits |
| FR-032 | International reciprocity lookup | Nice to Have | RSG global network |
| FR-033 | Visit frequency limits (configurable) | Should Have | Prevent abuse |

---

## 2.5 Data, Analytics & CDP (Priority Weight: 10%)

### 2.5.1 Customer Data Platform

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| DA-001 | Unified member profile | Must Have | Single view across systems |
| DA-002 | Data normalization layer | Must Have | Standardize disparate data |
| DA-003 | Identity resolution | Should Have | Match across touchpoints |
| DA-004 | Audience segmentation | Must Have | For targeting |
| DA-005 | Audience activation (ad platforms) | Should Have | Sync to Facebook, Google |

### 2.5.2 Reporting & Dashboards

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| DA-010 | Real-time franchise performance | Must Have | Revenue, members, visits |
| DA-011 | KPI tracking (CAC, churn, LTV) | Must Have | |
| DA-012 | Forecasting capabilities | Should Have | Predictive, not just retrospective |
| DA-013 | Drill-down by location/region | Must Have | |
| DA-014 | Export to BI tools | Should Have | Looker, Tableau, Power BI |

### 2.5.3 Compliance

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| DA-020 | CCPA compliance tools | Must Have | California members |
| DA-021 | GDPR compliance tools | Nice to Have | For international expansion |
| DA-022 | Data retention policies | Must Have | Configurable by data type |
| DA-023 | Right to deletion workflow | Must Have | Member requests |

---

## 2.6 Group Exercise & Fitness Programming (Priority Weight: 8%)

### 2.6.1 Class Scheduling

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| FT-001 | Class schedule management | Must Have | Motion Vibe does this well |
| FT-002 | Instructor assignment | Must Have | |
| FT-003 | Substitute management | Must Have | |
| FT-004 | Capacity/waitlist management | Must Have | |
| FT-005 | Recurring schedule templates | Should Have | |

### 2.6.2 Instructor Management

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| FT-010 | Instructor payroll reporting | Must Have | Based on class counts |
| FT-011 | Certification tracking | Must Have | Club Connect or equivalent |
| FT-012 | Performance analytics | Should Have | Attendance trends by instructor |

### 2.6.3 Program Integration

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| FT-020 | Les Mills integration | Should Have | 65% of classes are Les Mills |
| FT-021 | HIIT/specialty program support | Should Have | High Rocks, etc. |
| FT-022 | Virtual/on-demand classes | Nice to Have | Future consideration |
| FT-023 | Motion Vibe integration | Must Have | Non-negotiable per Fitness dept |

---

## 2.7 Personal Training & Services (Priority Weight: Included in 2.6)

### 2.7.1 PT Package Management

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| PT-001 | PT package sales | Must Have | |
| PT-002 | Session decrementing | Must Have | Auto-deduct on delivery |
| PT-003 | Expiration management | Should Have | Use-it-or-lose-it policies |
| PT-004 | Package transfer (trainer to trainer) | Nice to Have | |

### 2.7.2 Session Management

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| PT-010 | Remote session booking | Must Have | Currently must be in-gym |
| PT-011 | Trainer schedule visibility | Must Have | Client sees availability |
| PT-012 | Cancellation/reschedule (with policy) | Must Have | No-show fees, etc. |
| PT-013 | Recurring appointment booking | Should Have | |

### 2.7.3 Assessment Integration

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| PT-020 | Body composition integration (InBody) | Should Have | Currently evaluating |
| PT-021 | Movement assessment integration (Demotu) | Nice to Have | Currently piloting |
| PT-022 | Progress tracking/history | Should Have | Client journey visibility |

---

## 2.8 Access Control & Hardware (Priority Weight: 5%)

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| HW-001 | Gate/turnstile integration | Must Have | Multiple vendors (Gantner, etc.) |
| HW-002 | QR/barcode scanner support | Must Have | |
| HW-003 | Kiosk support (self-service) | Should Have | Check-in, retail, join |
| HW-004 | Towel tracking integration | Nice to Have | Amenity management |
| HW-005 | Cardio equipment integration | Nice to Have | Workout tracking |
| HW-006 | Card printer integration | Nice to Have | Physical membership cards |

---

## 2.9 Back Office & Administration (Priority Weight: 2%)

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| BO-001 | Promotion scheduling (advance setup) | Must Have | Currently manual day-of |
| BO-002 | Auto-expire promotions | Must Have | No manual removal |
| BO-003 | Staff scheduling integration | Nice to Have | |
| BO-004 | Document management | Nice to Have | Contracts, waivers |
| BO-005 | Reporting/compliance exports | Should Have | FDD, financial |

---

# Part 3: Vendor Evaluation Scoring Matrix

## Weighting by Priority Area

| Category | Weight | Rationale |
|----------|--------|-----------|
| Member Experience & Digital | **25%** | North Star priority - determines adoption |
| Core Gym Management | **20%** | Foundation everything builds on |
| Franchise Operations | **15%** | Critical for scalability |
| CRM & Marketing | **15%** | Revenue and engagement driver |
| Data & Analytics | **10%** | Visibility and decision-making |
| Fitness/PT Programming | **8%** | Operational excellence |
| Access Control/Hardware | **5%** | Commodity - most vendors support |
| Back Office | **2%** | Administrative efficiency |
| **TOTAL** | **100%** | |

## Scoring Scale

| Score | Definition | Description |
|-------|------------|-------------|
| 0 | Not Available | Feature does not exist |
| 1 | Roadmap Only | Planned but not built |
| 2 | Requires Customization | Available but needs development |
| 3 | Basic Out-of-Box | Standard feature, meets minimum |
| 4 | Robust Out-of-Box | Strong feature set, exceeds minimum |
| 5 | Best in Class | Market-leading capability |

## Vendor Scorecard Template

| Requirement Area | Weight | Vendor A | Vendor B | Vendor C | Current (ABC) |
|-----------------|--------|----------|----------|----------|---------------|
| **Member Experience** | 25% | | | | |
| - Mobile App (unified) | | /5 | /5 | /5 | /5 |
| - Online Join (automated) | | /5 | /5 | /5 | /5 |
| - PT Booking (remote) | | /5 | /5 | /5 | /5 |
| - Member Portal | | /5 | /5 | /5 | /5 |
| **Subtotal** | | | | | |
| **Core Gym Management** | 20% | | | | |
| - Multi-tenant architecture | | /5 | /5 | /5 | /5 |
| - Brand-level controls | | /5 | /5 | /5 | /5 |
| - Billing engine | | /5 | /5 | /5 | /5 |
| - API capabilities | | /5 | /5 | /5 | /5 |
| **Subtotal** | | | | | |
| **Franchise Operations** | 15% | | | | |
| - Royalty automation | | /5 | /5 | /5 | /5 |
| - Revenue visibility | | /5 | /5 | /5 | /5 |
| - Travel pass system | | /5 | /5 | /5 | /5 |
| **Subtotal** | | | | | |
| **CRM & Marketing** | 15% | | | | |
| - SMS capability | | /5 | /5 | /5 | /5 |
| - Attribution tracking | | /5 | /5 | /5 | /5 |
| - Automation | | /5 | /5 | /5 | /5 |
| **Subtotal** | | | | | |
| **Data & Analytics** | 10% | | | | |
| - CDP capability | | /5 | /5 | /5 | /5 |
| - Real-time dashboards | | /5 | /5 | /5 | /5 |
| **Subtotal** | | | | | |
| **Fitness/PT** | 8% | | | | |
| - Class scheduling | | /5 | /5 | /5 | /5 |
| - Motion Vibe integration | | /5 | /5 | /5 | /5 |
| **Subtotal** | | | | | |
| **Access Control** | 5% | | | | |
| - Hardware integration | | /5 | /5 | /5 | /5 |
| **Subtotal** | | | | | |
| **Back Office** | 2% | | | | |
| - Promo scheduling | | /5 | /5 | /5 | /5 |
| **Subtotal** | | | | | |
| **WEIGHTED TOTAL** | 100% | | | | |

## Additional Evaluation Factors (Qualitative)

| Factor | Weight | Vendor A | Vendor B | Vendor C |
|--------|--------|----------|----------|----------|
| Total Cost of Ownership | High | | | |
| Implementation Timeline | High | | | |
| Migration Complexity | High | | | |
| Franchise Fitness References | Medium | | | |
| Support Model (CSM, SLA) | Medium | | | |
| Financial Stability | Medium | | | |
| Training Resources | Low | | | |

---

# Part 4: Current System Pre-Scoring

Based on December 2025 HQ meetings, here is the preliminary scoring of current systems.

## ABC Fitness Solutions (80%+ of Franchisees)

| Category | Score | Notes |
|----------|-------|-------|
| **Member Experience** | 2.0/5 | TrainEyes app exists but fragmented; no unified experience |
| **Core Gym Management** | 3.0/5 | Functional but treats each franchise as isolated silo |
| **Franchise Operations** | 2.0/5 | No brand-level controls; no visibility into franchise operations |
| **CRM & Marketing** | 2.0/5 | Basic; franchisees supplement with HubSpot, Glean Tap |
| **Data & Analytics** | 1.5/5 | No centralized reporting; reconciliation nightmare |
| **Fitness/PT** | 3.0/5 | Class scheduling functional |
| **Access Control** | 3.0/5 | Standard integrations |
| **Back Office** | 3.0/5 | Back office support team is a strength |

**Strengths:**
- Extensive back office support team (cancellations, collections)
- Familiar to operators (devil they know)
- Market presence in fitness

**Weaknesses:**
- Silo'd data - each franchise is isolated
- No brand-level controls or push configuration
- No real-time revenue visibility for franchisor
- Expensive per-location pricing model
- Reconciliation issues documented

**Weighted Score:** ~2.3/5

---

## Motionsoft (Corporate Gyms)

| Category | Score | Notes |
|----------|-------|-------|
| **Member Experience** | 2.0/5 | Dated interface; no remote PT booking |
| **Core Gym Management** | 3.0/5 | Functional for single operator |
| **Franchise Operations** | 1.0/5 | Not built for franchise model |
| **CRM & Marketing** | 2.0/5 | Requires HubSpot integration; 48hr data latency |
| **Data & Analytics** | 2.0/5 | Limited reporting capabilities |
| **Fitness/PT** | 2.0/5 | In-gym only for PT booking |
| **Access Control** | 3.0/5 | Standard integrations |
| **Back Office** | 2.0/5 | Manual processes; no promo scheduling |

**Strengths:**
- Kim (config specialist) knows it well
- Stable platform
- Integrated with Motion Vibe

**Weaknesses:**
- Manual processes everywhere (Friday 4pm fire drills)
- No promotion scheduling - must be day-of
- Single-tenant architecture - not franchise-ready
- Cancellation API unreliable

**Weighted Score:** ~2.0/5

---

## HubSpot (CRM - Corporate)

| Category | Score | Notes |
|----------|-------|-------|
| **CRM & Marketing** | 3.0/5 | Functional but not fitness-specific |
| **Marketing Automation** | 3.0/5 | Email works; SMS blocked by legal |
| **Data Integration** | 2.0/5 | 48hr latency with Motionsoft |
| **Attribution** | 2.0/5 | Poor ad-to-conversion tracking |

**Strengths:**
- Marketing team is familiar with it
- Good email marketing tools
- Strong automation capabilities (if connected)

**Weaknesses:**
- No SMS capability (legal compliance gap)
- Poor attribution - can't track ad to in-gym conversion
- Not a CDP - limited audience enrichment
- Data latency creates retargeting waste

**Weighted Score (CRM only):** ~2.5/5

---

## Motion Vibe (Group Exercise - Corporate)

| Category | Score | Notes |
|----------|-------|-------|
| **Fitness/Group Ex** | 5.0/5 | Non-negotiable per Fitness department |
| **Member App** | 4.0/5 | Recently launched; improving |
| **PT Integration** | 4.0/5 | Works at John Reed; not enabled for Gold's yet |
| **Scheduling** | 5.0/5 | Excellent substitute mgmt, payroll, analytics |

**Strengths:**
- Comprehensive group exercise management
- Payroll and substitute management
- Class performance analytics
- Moso integration exists
- Member app gaining traction

**Weaknesses:**
- Not all franchisees have adopted
- Separate system from core gym management
- PT booking not enabled for Gold's (only John Reed)

**Weighted Score (Fitness only):** ~4.5/5

**Recommendation:** Motion Vibe should be retained and integrated with any new core platform.

---

# Part 5: Vendor Landscape (For Evaluation)

## Core Gym Management Platforms

| Vendor | Franchise Model | Market Position | Notes |
|--------|----------------|-----------------|-------|
| **ABC Fitness Solutions** | Yes | Market leader | Current franchise standard; evaluate "enterprise" offering |
| **Club Automation** | Yes | Mid-market | Strong franchise features |
| **Jonas Fitness** | Yes | Enterprise | Previously used by Gold's (GGPP) |
| **ClubReady** | Yes | Growing | CRM-forward approach |
| **Perfect Gym** | Yes | International | Strong in Europe |
| **Mindbody** | Limited | Boutique-focused | May not fit traditional gym model |
| **Mariana Tek** | Yes | Xponential's platform | Purpose-built for franchise |
| **EZFacility** | Limited | Mid-market | |
| **Zen Planner** | Limited | Small box | May not scale |

### Priority Vendors for RFP

Based on franchise fitness experience and capabilities:
1. **ABC Fitness Solutions** - Must evaluate enterprise/brand offering (different from current)
2. **Club Automation** - Strong franchise features, worth evaluating
3. **Mariana Tek** - Purpose-built for franchise; Xponential reference
4. **Jonas Fitness** - Enterprise-grade; familiar to Gold's

---

## CRM & Marketing Automation

| Vendor | Fitness-Specific | SMS Compliance | Notes |
|--------|-----------------|----------------|-------|
| **HubSpot** | No | Limited | Current - evaluate upgrade path |
| **Salesforce** | No | Yes | Enterprise; previous platform |
| **ClubReady CRM** | Yes | Yes | Integrated with ClubReady |
| **ActiveCampaign** | No | Yes | Strong automation |
| **Keap** | No | Yes | SMB-focused |

---

## CDP Platforms

| Vendor | Fitness Experience | Notes |
|--------|-------------------|-------|
| **Treasure Data** | Unknown | Previously discussed |
| **Segment** | Yes | Popular in fitness/retail |
| **mParticle** | Limited | Enterprise-focused |
| **Tealium** | Limited | Enterprise-focused |

---

## Member Apps

| Vendor | White-Label | Notes |
|--------|------------|-------|
| **Motion Vibe** | Yes | Current - strong; retain |
| **Trainerize** | Yes | PT-focused |
| **ABC Ignite** | Yes | Part of ABC ecosystem |
| **Custom (STRV)** | Yes | Current development partner |

---

# Part 6: Recommended Evaluation Approach

## Phase 1: Requirements Validation (2-3 weeks)

- [ ] Circulate this document to department heads for review
- [ ] Collect feedback and adjust priorities/requirements
- [ ] Finalize weighting and must-haves
- [ ] Get executive sign-off on evaluation criteria

## Phase 2: Vendor Shortlist (2 weeks)

- [ ] Score current systems (ABC, Moso) against requirements
- [ ] Research alternative platforms
- [ ] Identify 3-4 vendors for RFP
- [ ] Issue RFP with standardized questions

## Phase 3: Vendor Demonstrations (4-6 weeks)

- [ ] Schedule demos with shortlisted vendors
- [ ] Use standardized scorecard for all evaluations
- [ ] Include representatives from each department
- [ ] Document strengths, weaknesses, gaps

## Phase 4: Reference Calls (2 weeks)

- [ ] Request references from similar franchise fitness brands
- [ ] Prepare standard questions (implementation, support, gotchas)
- [ ] Conduct calls with IT, Operations, and Finance leads

## Phase 5: TCO Analysis & Recommendation (2-3 weeks)

- [ ] Gather pricing from all shortlisted vendors
- [ ] Calculate 5-year TCO (implementation + annual + growth)
- [ ] Factor in migration costs and timeline
- [ ] Prepare recommendation memo for executive team
- [ ] Present findings and recommendation

---

# Appendix: Department-Specific Requirements

## From Operations (Robbie / Kim)

**Must Haves:**
- Promotion scheduling with future dates and auto-expiry
- Bulk configuration changes across multiple locations
- Cancellation workflow that handles complex state-specific rules
- API reliability for cancel requests

**Current Pain:**
> "Friday at 4pm fire drills" - promos require manual day-of configuration

---

## From Billing & Finance (Melody)

**Must Haves:**
- Real-time visibility into franchise revenues
- Automated royalty calculation and ACH pull
- Multiple payment processor support (franchise-specific banking)
- Reconciliation tools

**Current Pain:**
> "We're chasing payments via spreadsheets and have no visibility until they self-report"

---

## From Marketing (Jake)

**Must Haves:**
- SMS capability with compliance (opt-in/opt-out management)
- Attribution tracking from ad click to in-gym conversion
- Affiliate/referral code tracking
- CAC reduction tools

**Current Pain:**
> "We can't send SMS - legal blocked it due to compliance gaps"

---

## From Digital Marketing (Alex)

**Must Haves:**
- Automated Join Online configuration (not 3-week manual process)
- Standardized membership naming/presentation
- CDP for retargeting and audience management

**Current Pain:**
> "24 franchise groups backlogged because each requires 3-week manual onboarding"

---

## From Fitness (Erin / Alexander)

**Must Haves:**
- Motion Vibe integration (non-negotiable)
- Remote PT session booking
- InBody integration for body composition

**Current Pain:**
> "PTs can't book sessions unless they're physically in the gym on our network"

---

## From Franchising (Kevin / Katie)

**Must Haves:**
- Travel pass / reciprocity system
- Franchisee performance dashboards
- Brand-level controls with franchise overrides
- Mystery shop integration

**Current Pain:**
> "We're still using paper travel pass cards - it's embarrassing"

---

## From IT (Rick)

**Must Haves:**
- API-first architecture
- SSO/identity management
- Multi-factor authentication
- Integration with existing infrastructure (AWS, Meraki)

**Current Pain:**
> "Every system is a silo - data doesn't flow"

---

## From Executive (Brad / Danny)

**Must Haves:**
- Scalable franchise playbook
- Asset-light support model (technology enables, not headcount)
- Compelling value proposition for franchisee adoption

**North Star:**
> "We want to be best-in-class to attract tier-one franchise candidates"

---

*Document Version 1.0 - December 2025*
*Prepared by StackHack Labs LLC*
