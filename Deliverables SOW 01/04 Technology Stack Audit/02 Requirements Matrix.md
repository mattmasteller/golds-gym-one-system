# Gold's Gym Technology Requirements Matrix
## Functional Requirements by Capability Area

**Version:** 1.0
**Date:** December 2025
**Prepared by:** StackHack Labs LLC

---

## Priority Weighting

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

---

## 1. Member Experience & Digital (Priority Weight: 25%)

### 1.1 Mobile App Requirements

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

### 1.2 Online Join Requirements

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

### 1.3 Member Portal (Web)

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| MX-020 | Logged-in member state | Must Have | Currently prospect-only site |
| MX-021 | Payment history and receipts | Must Have | Self-service billing inquiries |
| MX-022 | Membership modification requests | Should Have | Upgrade, downgrade, freeze |
| MX-023 | Referral program interface | Should Have | Share codes, track rewards |

---

## 2. Core Gym Management Platform (Priority Weight: 20%)

### 2.1 Architecture Requirements

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| GM-001 | Multi-tenant architecture | Must Have | Brand > Franchise Group > Location hierarchy |
| GM-002 | Brand-level configuration push | Must Have | Set defaults that apply to all locations |
| GM-003 | Franchise-level overrides (controlled) | Must Have | Allow customization within guardrails |
| GM-004 | Role-based access control | Must Have | GM sees their gym, owner sees their group |
| GM-005 | API-first design | Must Have | Integration with all ancillary systems |
| GM-006 | Real-time data sync | Must Have | No 24-48hr latency between systems |
| GM-007 | Audit trail / change logging | Must Have | Compliance and troubleshooting |

### 2.2 Member Lifecycle Management

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| GM-010 | Member registration (in-gym and online) | Must Have | |
| GM-011 | Membership modifications (upgrade/downgrade) | Must Have | |
| GM-012 | Freeze/hold with configurable rules | Must Have | Min/max duration, fees, limits |
| GM-013 | Cancellation workflow with configurable logic | Must Have | Notice periods, save attempts, final billing |
| GM-014 | Reinstatement process | Should Have | Win-back former members |
| GM-015 | Family/household linking | Should Have | Group billing, shared access |
| GM-016 | Corporate/employer accounts | Should Have | B2B membership management |

### 2.3 Billing & Payments

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

### 2.4 POS & Retail

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| GM-030 | Retail sales (merchandise, supplements) | Must Have | |
| GM-031 | Service sales (PT packages, assessments) | Must Have | |
| GM-032 | Inventory tracking | Should Have | |
| GM-033 | Discount/promo application | Must Have | |
| GM-034 | Receipt printing and email | Must Have | |

### 2.5 Check-In & Access

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| GM-040 | Barcode/QR code scan | Must Have | |
| GM-041 | Gate/turnstile integration | Must Have | Multiple hardware vendors |
| GM-042 | Access denial with reason display | Must Have | Past due, freeze, wrong location |
| GM-043 | Guest check-in tracking | Must Have | |
| GM-044 | 24/7 unmanned access support | Should Have | For applicable locations |
| GM-045 | Facial recognition ready | Nice to Have | Future-proofing |

---

## 3. CRM & Marketing Automation (Priority Weight: 15%)

### 3.1 Lead Management

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| CR-001 | Lead capture from multiple sources | Must Have | Web, app, walk-in, referral |
| CR-002 | Lead deduplication | Must Have | Prevent duplicate outreach |
| CR-003 | Lead assignment rules | Should Have | Route to appropriate staff |
| CR-004 | Lead scoring | Nice to Have | Prioritize hot leads |

### 3.2 Communication Channels

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| CR-010 | Email marketing (bulk and triggered) | Must Have | |
| CR-011 | SMS/text messaging | Must Have | Currently blocked by legal - compliance critical |
| CR-012 | Opt-in/opt-out management (global) | Must Have | Single source of truth across systems |
| CR-013 | Push notification integration | Should Have | Via app |
| CR-014 | In-app messaging | Nice to Have | |

### 3.3 Automation & Journeys

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| CR-020 | Automated nurture sequences | Must Have | Lead > trial > join |
| CR-021 | Win-back campaigns | Should Have | Former member re-engagement |
| CR-022 | Milestone communications | Should Have | Anniversary, usage milestones |
| CR-023 | At-risk member identification | Nice to Have | Predict churn |

### 3.4 Attribution & Analytics

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| CR-030 | Campaign attribution tracking | Must Have | Ad click to conversion |
| CR-031 | Retargeting audience sync | Must Have | Facebook, Google, etc. |
| CR-032 | Referral program tracking | Should Have | Member refers friend |
| CR-033 | Affiliate/influencer tracking | Should Have | Code-based attribution |
| CR-034 | CAC calculation by channel | Must Have | Currently $88-125, target $60-70 |

---

## 4. Franchise Operations (Priority Weight: 15%)

### 4.1 Franchise Billing & Royalties

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| FR-001 | Automated royalty calculation | Must Have | Currently manual spreadsheets |
| FR-002 | Ad fund fee calculation | Must Have | |
| FR-003 | Tech fee billing | Should Have | Currently $0 collected |
| FR-004 | ACH pull from franchise accounts | Must Have | Reduce payment chasing |
| FR-005 | Real-time revenue visibility | Must Have | No waiting for franchisee self-reporting |
| FR-006 | Exception handling workflow | Should Have | Disputes, adjustments |

### 4.2 Brand Controls

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| FR-010 | Standardized GL/chart of accounts | Must Have | Foundation for unified reporting |
| FR-011 | Membership tier templates | Must Have | Brand-defined options |
| FR-012 | Pricing guardrails | Should Have | Min/max by market |
| FR-013 | Promotion templates (national offers) | Must Have | One-click deployment |
| FR-014 | Branding/design standards enforcement | Nice to Have | |

### 4.3 Franchisee Self-Service

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| FR-020 | Franchisee portal/dashboard | Must Have | Performance visibility |
| FR-021 | Location comparison benchmarking | Should Have | How do I compare to peers? |
| FR-022 | Support ticket submission | Should Have | |
| FR-023 | Training/resource library | Should Have | |

### 4.4 Reciprocity / Travel Pass

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| FR-030 | Domestic travel pass system | Must Have | Currently paper cards! |
| FR-031 | Inter-gym settlement | Must Have | Track and compensate visits |
| FR-032 | International reciprocity lookup | Nice to Have | RSG global network |
| FR-033 | Visit frequency limits (configurable) | Should Have | Prevent abuse |

---

## 5. Data, Analytics & CDP (Priority Weight: 10%)

### 5.1 Customer Data Platform

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| DA-001 | Unified member profile | Must Have | Single view across systems |
| DA-002 | Data normalization layer | Must Have | Standardize disparate data |
| DA-003 | Identity resolution | Should Have | Match across touchpoints |
| DA-004 | Audience segmentation | Must Have | For targeting |
| DA-005 | Audience activation (ad platforms) | Should Have | Sync to Facebook, Google |

### 5.2 Reporting & Dashboards

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| DA-010 | Real-time franchise performance | Must Have | Revenue, members, visits |
| DA-011 | KPI tracking (CAC, churn, LTV) | Must Have | |
| DA-012 | Forecasting capabilities | Should Have | Predictive, not just retrospective |
| DA-013 | Drill-down by location/region | Must Have | |
| DA-014 | Export to BI tools | Should Have | Looker, Tableau, Power BI |

### 5.3 Compliance

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| DA-020 | CCPA compliance tools | Must Have | California members |
| DA-021 | GDPR compliance tools | Nice to Have | For international expansion |
| DA-022 | Data retention policies | Must Have | Configurable by data type |
| DA-023 | Right to deletion workflow | Must Have | Member requests |

---

## 6. Group Exercise & Fitness Programming (Priority Weight: 8%)

### 6.1 Class Scheduling

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| FT-001 | Class schedule management | Must Have | Motion Vibe does this well |
| FT-002 | Instructor assignment | Must Have | |
| FT-003 | Substitute management | Must Have | |
| FT-004 | Capacity/waitlist management | Must Have | |
| FT-005 | Recurring schedule templates | Should Have | |

### 6.2 Instructor Management

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| FT-010 | Instructor payroll reporting | Must Have | Based on class counts |
| FT-011 | Certification tracking | Must Have | Club Connect or equivalent |
| FT-012 | Performance analytics | Should Have | Attendance trends by instructor |

### 6.3 Program Integration

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| FT-020 | Les Mills integration | Should Have | 65% of classes are Les Mills |
| FT-021 | HIIT/specialty program support | Should Have | High Rocks, etc. |
| FT-022 | Virtual/on-demand classes | Nice to Have | Future consideration |
| FT-023 | Motion Vibe integration | Must Have | Non-negotiable per Fitness dept |

---

## 7. Personal Training & Services (Priority Weight: Included in 6)

### 7.1 PT Package Management

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| PT-001 | PT package sales | Must Have | |
| PT-002 | Session decrementing | Must Have | Auto-deduct on delivery |
| PT-003 | Expiration management | Should Have | Use-it-or-lose-it policies |
| PT-004 | Package transfer (trainer to trainer) | Nice to Have | |

### 7.2 Session Management

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| PT-010 | Remote session booking | Must Have | Currently must be in-gym |
| PT-011 | Trainer schedule visibility | Must Have | Client sees availability |
| PT-012 | Cancellation/reschedule (with policy) | Must Have | No-show fees, etc. |
| PT-013 | Recurring appointment booking | Should Have | |

### 7.3 Assessment Integration

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| PT-020 | Body composition integration (InBody) | Should Have | Currently evaluating |
| PT-021 | Movement assessment integration (Demotu) | Nice to Have | Currently piloting |
| PT-022 | Progress tracking/history | Should Have | Client journey visibility |

---

## 8. Access Control & Hardware (Priority Weight: 5%)

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| HW-001 | Gate/turnstile integration | Must Have | Multiple vendors (Gantner, etc.) |
| HW-002 | QR/barcode scanner support | Must Have | |
| HW-003 | Kiosk support (self-service) | Should Have | Check-in, retail, join |
| HW-004 | Towel tracking integration | Nice to Have | Amenity management |
| HW-005 | Cardio equipment integration | Nice to Have | Workout tracking |
| HW-006 | Card printer integration | Nice to Have | Physical membership cards |

---

## 9. Back Office & Administration (Priority Weight: 2%)

| Req ID | Requirement | Priority | Notes |
|--------|-------------|----------|-------|
| BO-001 | Promotion scheduling (advance setup) | Must Have | Currently manual day-of |
| BO-002 | Auto-expire promotions | Must Have | No manual removal |
| BO-003 | Staff scheduling integration | Nice to Have | |
| BO-004 | Document management | Nice to Have | Contracts, waivers |
| BO-005 | Reporting/compliance exports | Should Have | FDD, financial |

---

## Non-Negotiable Technology Capabilities Summary

From stakeholder interviews, the new system must have:

1. **Brand-level controls** - push configurations once, apply to all
2. **Franchise segmentation** - each owner manages only their gyms
3. **Flexible banking** - multiple bank accounts/processors supported
4. **API-first architecture** - integrate with gates, towel trackers, InBody, etc.
5. **Configurable permissions** - roles/rights by location and job function
6. **Real-time revenue visibility** - royalty calculations based on facts, not self-reporting
7. **Member reciprocity** - check-ins across domestic network with proper tracking
8. **Sales tax handling** - state/city level variations
9. **Motion Vibe integration** - group exercise scheduling is mission-critical

---

*Extracted from December 2025 Best-in-Class Tech Stack Requirements document.*
