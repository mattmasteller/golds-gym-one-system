# Fitness Club User Story Library

## How to Use This Document

This is a **brainstorming library** — a comprehensive collection of user stories organized by persona for the fitness club industry. It is not a specification, a backlog, or a build plan.

**During discovery sessions**, use this document to:

- **Spark conversation** — Read stories aloud and ask "Does this resonate? What's missing?"
- **Identify priorities** — Have participants dot-vote or MoSCoW-rank stories that matter most to them
- **Find gaps** — The stories here are a starting point; the best stories will come from session participants
- **Validate assumptions** — Not every story applies to every club; use these to test what matters for *this* client

**Tips for facilitators:**

- Print relevant persona sections as handouts for each session
- Let participants add their own stories on sticky notes alongside these
- Don't try to cover every story — focus on the ones that generate energy in the room
- Use the facilitator prompt questions (Part 3) to go deeper on high-priority areas

---

## Part 1: Persona Definitions

### Operations Personas (Internal Staff)

| # | Persona | Description |
|---|---------|-------------|
| 1 | **Platform Administrator** | Configures the entire platform: clubs, pipelines, memberships, campaigns, employees, master data. Has multi-club visibility and system-wide control. |
| 2 | **Club Manager / General Manager** | Runs a single club day-to-day. Needs dashboards, reports, staff oversight, member escalations, and performance trends. |
| 3 | **Salesperson** | Works leads through a sales pipeline. Schedules tours, follows up on prospects, tracks conversions. Pipeline and quota-focused. |
| 4 | **Operations / Front Desk Staff** | Handles check-ins, member issues, walk-in inquiries, and operational tickets. The face of the club for day-to-day interactions. |
| 5 | **Personal Trainer / Coach** | Manages client schedules, session tracking, program design, and attendance. Revenue-generating role with direct member relationships. |
| 6 | **Group Fitness Instructor** | Teaches scheduled classes. Manages class schedule, attendance, substitution requests, and member feedback. |
| 7 | **Collections Specialist** | Works delinquent accounts, dunning sequences, payment plans, chargebacks, and write-offs. Revenue recovery focused. |
| 8 | **Marketing Manager** | Creates campaigns, manages member segments, builds automated journeys, and measures engagement and conversion metrics. |

### Member Personas (Consumers)

| # | Persona | Description |
|---|---------|-------------|
| 9 | **Prospective Member** | Researching clubs, comparing memberships, scheduling tours, and deciding whether to join. Web is primary for discovery; mobile for post-signup. |
| 10 | **Active Member** | Day-to-day gym user — check-ins, class booking, account management, and feedback. Mobile app is the primary daily touchpoint. |
| 11 | **At-Risk / Lapsed Member** | Declining attendance, approaching cancellation, or already cancelled. Target for retention outreach and winback campaigns. |
| 12 | **Family Account Holder** | Manages dependents (kids, spouse) on a family plan. Handles kids club bookings, family check-ins, and consolidated billing. |
| 13 | **Guest / Day Pass User** | One-time or limited visits via trial passes, day passes, or member referrals. Conversion opportunity to full membership. |

### Franchise / External Personas

| # | Persona | Description |
|---|---------|-------------|
| 14 | **Franchise Owner / Multi-Unit Operator** | Oversees multiple clubs. Needs cross-club reporting, brand compliance, benchmarking, and consolidated financials. |
| 15 | **Franchise Development Prospect** | Potential franchise buyer engaging with sales materials or chatbot. Qualifying themselves and evaluating the brand opportunity. |

---

## Part 2: User Stories by Persona

### Persona 1: Platform Administrator

> Configures the system, manages master data, and ensures all clubs are set up correctly.

- As an admin, I can configure clubs (hours, locations, areas, amenities, integrations)
- As an admin, I can configure AI agents and assign them to clubs
- As an admin, I can define lead pipelines, stages, and assignment rules
- As an admin, I can define ticket pipelines, stages, tags, canned responses, and assignment rules
- As an admin, I can configure feedback and NPS survey settings
- As an admin, I can manage membership types, amenities, and master data
- As an admin, I can manage employees and users with role-based access
- As an admin, I can search and view member profiles across clubs
- As an admin, I can configure third-party integrations per club (billing systems, CRM, phone providers)
- As an admin, I can create and publish marketing campaigns (broadcasts and journeys)
- As an admin, I can define member segments for targeted communication
- As an admin, I can manage email and SMS templates
- As an admin, I can configure product offers with pricing (setup fees, recurring charges)
- As an admin, I can configure add-on services (Kids Club, Recovery Room, etc.)
- As an admin, I can sync membership catalogs from external billing systems
- As an admin, I can deploy new club instances via automation
- As an admin, I can view cross-club analytics dashboards (revenue, retention, NPS comparison)
- As an admin, I can configure granular role-based permissions
- As an admin, I can manage class schedules and instructor assignments
- As an admin, I can configure automated billing rules and dunning sequences
- As an admin, I can set up automated workflows (onboarding, follow-ups, escalations)
- As an admin, I can audit user activity and track configuration changes

---

### Persona 2: Club Manager / General Manager

> Runs a single location and needs visibility into everything happening at their club.

- As a GM, I can see my club's dashboard with lead, ticket, and member counts
- As a GM, I can view and manage my club's hours, locations, areas, and amenities
- As a GM, I can search and view members at my club
- As a GM, I can view NPS trends and feedback surveys for my club
- As a GM, I can see lead conversion metrics and pipeline analytics
- As a GM, I can see daily, weekly, and monthly revenue and attendance reports
- As a GM, I can view staff performance metrics (leads worked, tickets resolved, tours given)
- As a GM, I can manage employee schedules and shift coverage
- As a GM, I can see member retention risk scores and at-risk member lists
- As a GM, I can review and approve membership cancellation requests
- As a GM, I can see facility utilization (peak hours, equipment usage)
- As a GM, I can generate end-of-day and end-of-week reports for ownership
- As a GM, I can set club-specific goals and track progress against them
- As a GM, I can view competitor pricing and local market data
- As a GM, I can approve or deny membership freeze requests

---

### Persona 3: Salesperson

> Works leads through the pipeline from first contact to membership close.

- As a salesperson, I can view and drag leads across pipeline stages on a kanban board
- As a salesperson, I can see lead details, history, and contact information
- As a salesperson, I can schedule activities (calls, tours, demos) on leads
- As a salesperson, I can log notes and interactions on leads
- As a salesperson, I can see AI agent conversation history with my leads
- As a salesperson, I can receive real-time notifications when a lead responds or takes action
- As a salesperson, I can see lead scores and engagement signals
- As a salesperson, I can initiate SMS or call to a lead directly from the app
- As a salesperson, I can convert a lead to a member (start enrollment flow)
- As a salesperson, I can see my personal performance metrics (conversion rate, response time)
- As a salesperson, I can manage tour appointments and check in walk-ins
- As a salesperson, I can see which membership plans are most popular for similar prospects
- As a salesperson, I can hand off a lead to another salesperson with full context
- As a salesperson, I can see my daily/weekly/monthly sales targets and progress

---

### Persona 4: Operations / Front Desk Staff

> Handles day-to-day club operations, member interactions, and issue resolution.

- As ops staff, I can view and drag tickets across pipeline stages on a kanban board
- As ops staff, I can resolve, close, and reopen tickets
- As ops staff, I can search members by name or membership ID
- As ops staff, I can check members in at the front desk
- As ops staff, I can create tickets from member complaints
- As ops staff, I can use canned responses when communicating with members on tickets
- As ops staff, I can see today's class schedule and enrollment counts
- As ops staff, I can process guest and day pass check-ins
- As ops staff, I can handle membership freezes, cancellations, and upgrades
- As ops staff, I can see member check-in history and visit patterns
- As ops staff, I can log equipment maintenance issues as tickets
- As ops staff, I can manage lost and found items
- As ops staff, I can process retail and pro shop transactions
- As ops staff, I can see who is currently checked into the club
- As ops staff, I can handle emergency contact lookups for members

---

### Persona 5: Personal Trainer / Coach

> Manages client relationships, session delivery, and program design.

- As a PT, I can see my upcoming client sessions for the day and week
- As a PT, I can log session notes and track client progress
- As a PT, I can view client attendance and no-show history
- As a PT, I can manage my availability and schedule
- As a PT, I can see upsell leads assigned to me (PT package upgrades)
- As a PT, I can communicate with clients via in-app messaging
- As a PT, I can create and assign workout programs to clients
- As a PT, I can track client body measurements and fitness assessments
- As a PT, I can see my revenue and session utilization metrics
- As a PT, I can manage my client roster and waitlist
- As a PT, I can receive notifications when a client books, cancels, or no-shows

---

### Persona 6: Group Fitness Instructor

> Teaches scheduled classes and manages their class-related responsibilities.

- As an instructor, I can see my class schedule and substitution requests
- As an instructor, I can view class enrollment and waitlist counts
- As an instructor, I can mark attendance for my classes
- As an instructor, I can request schedule changes or time off
- As an instructor, I can see feedback ratings for my classes
- As an instructor, I can find and request subs for classes I can't teach
- As an instructor, I can see historical attendance trends for my classes
- As an instructor, I can communicate with regular attendees about schedule changes

---

### Persona 7: Collections Specialist

> Recovers revenue from delinquent accounts through structured follow-up.

- As collections, I can view a worklist of delinquent accounts sorted by aging
- As collections, I can record promise-to-pay (PTP) commitments
- As collections, I can initiate dunning sequences (automated escalation)
- As collections, I can escalate accounts to external collection agencies
- As collections, I can track chargeback disputes with deadlines and evidence
- As collections, I can see payment history and failed payment patterns
- As collections, I can negotiate and set up payment plans
- As collections, I can generate reports on recovery rates and write-offs
- As collections, I can see which members have multiple failed payment attempts
- As collections, I can log all member communication attempts for compliance

---

### Persona 8: Marketing Manager

> Drives member acquisition, engagement, and retention through campaigns and communications.

- As marketing, I can create broadcast campaigns to member segments
- As marketing, I can build multi-step journeys (onboarding, retention, winback)
- As marketing, I can define dynamic segments based on member attributes and behavior
- As marketing, I can manage email templates with a visual editor
- As marketing, I can A/B test subject lines and send times
- As marketing, I can see campaign performance metrics (open rate, click rate, conversions)
- As marketing, I can track attribution from campaign to membership signup
- As marketing, I can manage SMS keyword campaigns (text JOIN to...)
- As marketing, I can configure referral programs and track referral conversions
- As marketing, I can manage social media posting and track engagement
- As marketing, I can create seasonal promotions and limited-time offers
- As marketing, I can set up automated birthday and anniversary messages

---

### Persona 9: Prospective Member

> Researching clubs, comparing options, and deciding whether to join.

- As a prospect, I can find nearby clubs by location (map and distance)
- As a prospect, I can view club details (hours, amenities, photos, virtual tour)
- As a prospect, I can compare membership plans and pricing
- As a prospect, I can schedule a tour online
- As a prospect, I can chat with the club's AI agent for quick questions
- As a prospect, I can sign up for a free trial or guest pass online
- As a prospect, I can complete membership enrollment and payment online
- As a prospect, I can read member reviews and ratings
- As a prospect, I can get a referral link from a current member
- As a prospect, I can download the mobile app and preview features before joining
- As a prospect, I can see class schedules before joining to evaluate the offering
- As a prospect, I can see trainer bios and specialties
- As a prospect, I can receive a follow-up message after scheduling or visiting

---

### Persona 10: Active Member

> Day-to-day gym user who interacts with the club through mobile and in-person.

#### Check-In & Access

- As a member, I can check in via the mobile app (QR code or digital key)
- As a member, I can see my check-in history and visit streaks
- As a member, I can check in family members or dependents
- As a member, I can see how busy the club is right now (crowd meter)

#### Classes & Scheduling

- As a member, I can browse the class schedule by day, type, and instructor
- As a member, I can book or reserve a spot in a class
- As a member, I can join a waitlist for a full class
- As a member, I can cancel a class reservation
- As a member, I can see my upcoming bookings
- As a member, I can rate a class after attending
- As a member, I can see instructor profiles and class descriptions
- As a member, I can get reminders before classes I've booked

#### Personal Training

- As a member, I can see my PT sessions and schedule
- As a member, I can book a PT session
- As a member, I can view workout programs assigned by my trainer
- As a member, I can track my fitness progress (measurements, goals)
- As a member, I can rate my trainer and leave feedback

#### Account & Billing

- As a member, I can view my membership details and billing history
- As a member, I can update my payment method
- As a member, I can freeze or cancel my membership online
- As a member, I can upgrade or downgrade my membership
- As a member, I can add or remove add-on services (Kids Club, Recovery, etc.)
- As a member, I can view and download invoices and receipts

#### Communication & Support

- As a member, I can chat with the club's AI agent for quick questions
- As a member, I can submit a support ticket or complaint
- As a member, I can see the status of my open tickets
- As a member, I can reopen a resolved ticket if my issue isn't fixed
- As a member, I can receive push notifications (class reminders, promotions, billing alerts)
- As a member, I can complete NPS and feedback surveys

#### Social & Engagement

- As a member, I can refer a friend and track referral rewards
- As a member, I can see club announcements and news
- As a member, I can participate in challenges and earn badges or achievements
- As a member, I can leave a review on external platforms (prompted after positive feedback)
- As a member, I can connect with other members in community features

#### Profile & Preferences

- As a member, I can update my personal info (phone, email, emergency contact)
- As a member, I can set communication preferences (SMS opt-in/out, email frequency)
- As a member, I can manage privacy and consent settings
- As a member, I can set my home club if I have multi-club access
- As a member, I can upload a profile photo

---

### Persona 11: At-Risk / Lapsed Member

> Declining engagement or already cancelled — target for retention and winback.

- As a lapsed member, I receive automated outreach (SMS, email, or call) encouraging me to return
- As a lapsed member, I can receive a winback offer via an automated campaign
- As a lapsed member, I can reactivate my membership online
- As a lapsed member, I can see what's new at the club since I left
- As a lapsed member, I can take advantage of a "come back" promotion
- As a lapsed member, I can provide feedback on why I left
- As a lapsed member, I can pause instead of cancel if offered a freeze option

---

### Persona 12: Family Account Holder

> Manages a family plan with dependents and shared billing.

- As a family account holder, I can add or remove family members on my plan
- As a family account holder, I can book Kids Club sessions
- As a family account holder, I can see consolidated billing for all family members
- As a family account holder, I can set age-appropriate access restrictions
- As a family account holder, I can check in family members at the front desk or via mobile
- As a family account holder, I can see each family member's visit history
- As a family account holder, I can manage individual notification preferences per family member

---

### Persona 13: Guest / Day Pass User

> Visiting on a limited basis with potential to convert to a full member.

- As a guest, I can purchase a day pass online or at the front desk
- As a guest, I can check in with my day pass (QR code or name lookup)
- As a guest, I can convert my trial to a full membership
- As a guest, I can receive a follow-up offer after my visit
- As a guest, I can sign a digital waiver before my visit
- As a guest, I can see what amenities and classes are available during my visit

---

### Persona 14: Franchise Owner / Multi-Unit Operator

> Oversees multiple locations with a focus on performance, growth, and brand consistency.

- As an owner, I can manage multiple clubs from a single dashboard
- As an owner, I can deploy new club instances via automation
- As an owner, I can see cross-club P&L and KPI comparisons
- As an owner, I can benchmark clubs against each other
- As an owner, I can enforce brand standards across clubs
- As an owner, I can see consolidated member counts and revenue trends
- As an owner, I can identify underperforming locations and drill into the data
- As an owner, I can manage area/regional manager assignments

---

### Persona 15: Franchise Development Prospect

> Evaluating the franchise opportunity and qualifying themselves.

- As a franchise prospect, I can engage with a chatbot on the website to learn about the opportunity
- As a franchise prospect, I can request a franchise information packet
- As a franchise prospect, I can see available territories
- As a franchise prospect, I can schedule a discovery call
- As a franchise prospect, I can submit a qualification questionnaire

---

## Part 3: Facilitator Prompt Questions

### Member-Facing Sessions

Use these questions when running sessions with prospective members, active members, lapsed members, family plan holders, or guests.

- What does the member journey look like from first hearing about the gym to 6 months in?
- What actions do members want to do on their phone vs. in-person at the front desk?
- What are the top 5 reasons members contact the front desk? Which can be self-service?
- How do members currently book classes? What's the friction?
- What would make a member recommend the gym to a friend?
- What information do members wish they had that they currently don't?
- What's the first thing a member should see when they open the app?
- What notifications would members actually want (vs. find annoying)?
- How do members feel about AI-powered communication (chatbot, automated SMS)?
- What does a "great" gym app do that the current experience doesn't?
- What would make you download and keep a gym's app on your phone?
- What's the #1 reason members cancel? Could technology have prevented it?

### Staff Sessions

Use these questions when running sessions with salespeople, front desk staff, GMs, trainers, or instructors.

- Walk me through a typical day — what do you do first, what's most time-consuming?
- What information do you wish you had at your fingertips?
- What tasks are repetitive that could be automated?
- How do you currently communicate with members? What's the friction?
- What reports do you need that you currently build manually?
- What tools do you use today, and what do you wish they did better?
- What's the handoff process when a lead or issue moves between staff?
- How do you track your own performance and goals?

### Revenue & Growth Sessions

Use these questions when running sessions about collections, marketing, franchise development, or multi-unit operations.

- What's the current collections process and what's the recovery rate?
- What campaigns have worked best? What metrics matter?
- How do you currently segment your member base?
- What's the chargeback volume and what's the win rate?
- What are the top 3 revenue leaks (cancelled members, failed payments, unused services)?
- How do you measure marketing ROI today?
- What data would help you make better decisions about opening or investing in locations?

---

## Part 4: Session Deliverables Checklist

Each discovery session should produce the following artifacts:

- [ ] **Persona card** — Validated name, goals, frustrations, and key success metrics
- [ ] **Story map** — User activities, tasks, and stories organized by priority
- [ ] **Gap analysis** — What exists today vs. what's needed vs. what competitors offer
- [ ] **Priority backlog** — Ranked stories ready for further specification
- [ ] **Journey diagram** — Visual flow of the persona's key journeys (from trigger to outcome)

These deliverables feed directly into product roadmap planning and can be turned into detailed feature specifications.
