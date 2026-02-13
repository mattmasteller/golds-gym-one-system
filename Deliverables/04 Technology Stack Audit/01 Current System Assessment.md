# Gold's Gym Current Technology Stack Assessment
## System Pre-Scoring & Gap Analysis

**Version:** 1.0
**Date:** December 2025
**Prepared by:** StackHack Labs LLC

---

## Executive Summary

Gold's Gym's current technology landscape is fragmented across corporate and franchise operations:

| Segment | Primary Systems |
|---------|-----------------|
| **Corporate** | Motionsoft + HubSpot + Motion Vibe + custom integrations |
| **Franchise (80%+)** | ABC Fitness with 50+ different configurations |

**Result:** No unified data, no brand-level controls, manual processes everywhere.

---

## Current System Scoring

### ABC Fitness Solutions (80%+ of Franchisees)

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

### Motionsoft (Corporate Gyms)

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

### HubSpot (CRM - Corporate)

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

### Motion Vibe (Group Exercise - Corporate)

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

## Technology Pain Points by Department

| Area | Pain Point |
|------|------------|
| **Promo/Pricing Changes** | Kim (1 person) manually configures 48 clubs, Friday 4pm fire drills for weekend sales |
| **Franchise Billing** | Manual spreadsheets, chase payments, exceptions for every franchise |
| **Join Online Integration** | 3-week process per franchisee, 24 groups backlogged, not scalable |
| **Cancellation Processing** | Complex logic, manual workarounds, APIs unreliable |
| **PT Booking** | Can't book/alter sessions remotely - must be in-gym on network |
| **Attribution** | Can't track member journey from ad click to in-gym conversion |
| **Reporting** | No centralized reporting on franchise performance |
| **Marketing** | CAC ranges $88-$125 (industry benchmark should be $60-70) |
| **SMS** | No SMS follow-up capability (legal blocked it) |

---

## Franchisee System Fragmentation

| System Type | Corporate | Franchise |
|-------------|-----------|-----------|
| Core Gym Management | Motionsoft | ABC (80%+), Peak, Zenoti, others |
| CRM | HubSpot | Various (ClubReady, Glean Tap, Gmail) |
| Website | Central website/Joint Online | Own websites (90%+) |
| Mobile App | Motion Vibe app | 20-30+ different Gold's apps published |

**Key Problem:** No unified data lake, no centralized member database, no ability to see franchise revenues or operations in real-time.

---

## Gap Analysis Summary

| Capability | Current State | Required State | Gap Severity |
|------------|---------------|----------------|--------------|
| Brand-level controls | None | Push config to all locations | Critical |
| Real-time revenue visibility | Self-reported, delayed | Transaction-based, real-time | Critical |
| Unified member database | Siloed by location | Single member profile | Critical |
| Automated promo scheduling | Manual, day-of | Scheduled in advance, auto-expire | High |
| Remote PT booking | In-gym only | App/web booking | High |
| SMS marketing | Blocked by legal | Compliant opt-in system | High |
| Travel pass/reciprocity | Paper cards | Digital, tracked, settled | High |
| Attribution tracking | None | Ad click to conversion | Medium |
| Standardized GL | Varies by franchise | Common chart of accounts | Medium |

---

*Extracted from December 2025 onsite audit findings and technology assessment.*
