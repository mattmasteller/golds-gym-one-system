# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

This is a **documentation and knowledge transfer repository** for the Gold's Gym Digital Transformation and Phase 0 Audit & Discovery project. It is NOT a software development codebase. The repository serves as a centralized location for collecting and organizing business, technical, and operational documentation.

## Repository Structure

The repository is organized into 12 numbered folders plus a catch-all folder, each serving a specific documentation purpose:

- **01_Company_Overview** - Organizational structure, strategic plans, location information
- **02_Current_Technology_Stack** - Infrastructure, applications, and integrations (has 3 subdirectories: 02a_Infrastructure, 02b_Applications, 02c_Integrations_and_APIs)
- **03_Data_and_Reporting** - Data sources, ETL processes, BI/reporting, KPIs
- **04_Business_Processes** - SOPs, workflows, process maps for operational procedures
- **05_Pain_Points_and_Known_Issues** - System limitations, workarounds, inefficiencies
- **06_Initiatives_and_Future_State_Ideas** - Improvement proposals, backlog items, strategic priorities
- **07_Prior_Audits_and_Assessments** - Previous consulting reports, security assessments
- **08_Franchisee_Documents** - Franchise playbooks, policies, operating manuals
- **09_Roles_Org_And_HR_Operations** - Detailed org charts, role descriptions, RACI charts
- **10_Vendor_Contracts_and_Systems_Agreements** - SaaS contracts, SLAs, licensing agreements
- **11_Compliance_Security_Risk** - Security policies, data privacy, compliance documentation
- **12_Financial_and_Budgetary_Inputs** - System costs, vendor spend, budget constraints
- **99_Anything_Else** - Unsorted or uncategorized materials

## System Architecture (Based on environment-bubbles.png)

The Gold's Gym technology ecosystem consists of several interconnected domains:

**Data & Analytics Layer (Blue)**:
- Data Lake (central repository)
- Data Transformation
- BI and Analytics
- Fran Connect (franchisee portal)

**Sales & Marketing Layer (Beige/Tan)**:
- Sales (core)
- Marketing
- CRM/Lead Management
- CDP (Customer Data Platform)
- JOL (Jobs On Line)
- Guest Pass management

**Operations Layer (Green/Light Green)**:
- Member Management (central hub)
- POS (Point of Sale)
- Staff Management
- Scheduling Management
- Gate Control
- Inventory Management
- Professional Services
- Referral Management System
- Rewards Management

**Member Experience Layer (Pink/Rose)**:
- Member APP
- Personalized Content Management
- Digital Training

All operational systems feed into the Data Lake, which supports analytics and franchisee reporting.

## File Naming Convention

Documents should follow this pattern:
`[Department] – [System/Process] – [Description] – [Date]`

Examples:
- `IT – Network – Core Infrastructure Diagram – 2024-12.pdf`
- `Ops – Membership – Cancellation Workflow – v2.pptx`

## Security Constraints

Do NOT upload or commit:
- Passwords or credentials
- API keys
- Sensitive employee PII
- Raw database dumps with PII
- Unredacted financial/legal documents with customer data

## Working with This Repository

When asked to:
- **Analyze documentation**: Read files from the appropriate numbered folders
- **Organize uploads**: Place materials in the correct folder based on content type
- **Create documentation artifacts**: Output structured analysis, diagrams, or reports based on collected materials
- **Identify gaps**: Review folder contents against the expected documentation types in README.md
