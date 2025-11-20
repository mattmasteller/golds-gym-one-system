# Gold's Gym One System - Digital Transformation

**Phase 0: Audit & Discovery Knowledge Transfer Repository**

This repository serves as the central knowledge transfer hub for the Gold's Gym Digital Transformation and Phase 0 Audit & Discovery project. It contains documentation, system information, business processes, and technical artifacts needed to complete the As-Is assessment and develop the Future-State architecture and roadmap.

---

## 📋 Table of Contents

- [Overview](#overview)
- [Repository Structure](#repository-structure)
- [For Stakeholders](#for-stakeholders)
- [For Developers & Consultants](#for-developers--consultants)
- [Technology Ecosystem](#technology-ecosystem)
- [Documentation](#documentation)
- [Contributing](#contributing)

---

## 🎯 Overview

### Project Goals

1. **Assess Current State** - Document existing systems, processes, and pain points
2. **Define Future State** - Develop target architecture and technology roadmap
3. **Enable Transformation** - Provide clear path from current to future state
4. **Knowledge Capture** - Centralize all organizational, technical, and operational information

### What This Repository Contains

- Current technology stack documentation
- Business process workflows and SOPs
- System architecture diagrams
- Pain points and improvement opportunities
- Vendor contracts and system agreements
- Compliance and security documentation
- Financial and budgetary inputs
- Franchisee-related documentation

---

## 📁 Repository Structure

The repository is organized into **12 specialized folders** plus a catch-all folder:

```
Knowledge Transfer/
├── 01_Company_Overview/
│   └── Organizational structure, strategic plans, location information
├── 02_Current_Technology_Stack/
│   ├── 02a_Infrastructure/
│   ├── 02b_Applications/
│   └── 02c_Integrations_and_APIs/
├── 03_Data_and_Reporting/
│   └── Data sources, ETL processes, BI/reporting, KPIs
├── 04_Business_Processes/
│   └── SOPs, workflows, process maps
├── 05_Pain_Points_and_Known_Issues/
│   └── System limitations, workarounds, inefficiencies
├── 06_Initiatives_and_Future_State_Ideas/
│   └── Improvement proposals, backlog items, priorities
├── 07_Prior_Audits_and_Assessments/
│   └── Previous consulting reports, security assessments
├── 08_Franchisee_Documents/
│   └── Franchise playbooks, policies, operating manuals
├── 09_Roles_Org_And_HR_Operations/
│   └── Org charts, role descriptions, RACI charts
├── 10_Vendor_Contracts_and_Systems_Agreements/
│   └── SaaS contracts, SLAs, licensing agreements
├── 11_Compliance_Security_Risk/
│   └── Security policies, data privacy, compliance docs
├── 12_Financial_and_Budgetary_Inputs/
│   └── System costs, vendor spend, budget constraints
└── 99_Anything_Else/
    └── Unsorted or uncategorized materials
```

📖 **Detailed folder descriptions:** See [Knowledge Transfer/README.md](Knowledge%20Transfer/README.md)

---

## 👥 For Stakeholders

### How to Contribute Documents

1. **Drop files into OneDrive** - This folder syncs automatically with OneDrive
2. **Use the folder structure** - Place documents in the appropriate numbered folder
3. **Follow naming convention** - Use: `[Department] – [System/Process] – [Description] – [Date]`
4. **When in doubt** - Upload to `99_Anything_Else/` and the team will organize it

### File Naming Examples

- `IT – Network – Core Infrastructure Diagram – 2024-12.pdf`
- `Ops – Membership – Cancellation Workflow – v2.pptx`
- `Marketing – CRM – Lead Flow Map – Draft.docx`

### What NOT to Upload

🚫 Please do not upload:
- Passwords or credentials
- API keys
- Unredacted sensitive employee PII
- Raw database dumps containing personal information
- Unredacted financial documents with customer data

---

## 🛠️ For Developers & Consultants

### Git Workflow

This repository uses Git version control with **automatic OneDrive protection** to prevent sync conflicts.

#### Quick Start

```bash
# Morning: Pull latest changes
scripts/git-safe-pull.sh

# End of day: Commit and push all changes
scripts/git-safe-sync.sh "Daily update: added vendor contracts and compliance docs"
```

#### Available Helper Scripts

All scripts are located in `scripts/` directory:

| Script | Purpose |
|--------|---------|
| `git-safe-sync.sh` | Complete workflow: add, commit, pull, push |
| `git-safe-commit.sh` | Stage and commit with OneDrive protection |
| `git-safe-push.sh` | Push to remote with OneDrive protection |
| `git-safe-pull.sh` | Pull from remote with OneDrive protection |

📖 **Complete Git workflow guide:** See [GIT_WORKFLOW.md](GIT_WORKFLOW.md)

### Claude Code Integration

This repository is optimized for use with [Claude Code](https://claude.ai/code). Claude Code instances can:
- Analyze documentation and identify gaps
- Generate technical artifacts and diagrams
- Process and organize uploaded documents
- Create structured reports and assessments

📖 **Claude Code guidance:** See [CLAUDE.md](CLAUDE.md)

### System Requirements

- **Git** - Version control
- **OneDrive** - File sync (already configured)
- **macOS** - Scripts tested on macOS (Darwin)
- **GitHub CLI** (optional) - For repository management

---

## 🏗️ Technology Ecosystem

Gold's Gym's technology stack consists of four main layers:

### Data & Analytics Layer
- **Data Lake** - Central data repository
- **Data Transformation** - ETL processes
- **BI and Analytics** - Reporting and insights
- **Fran Connect** - Franchisee portal

### Sales & Marketing Layer
- **Sales** - Core sales platform
- **Marketing** - Campaign management
- **CRM/Lead Management** - Customer relationship management
- **CDP** - Customer Data Platform
- **JOL** - Jobs On Line (recruitment)
- **Guest Pass** - Trial membership management

### Operations Layer
- **Member Management** - Central membership hub
- **POS** - Point of Sale
- **Staff Management** - Employee management
- **Scheduling Management** - Class and session scheduling
- **Gate Control** - Access control systems
- **Inventory Management** - Equipment and supplies
- **Professional Services** - Personal training, etc.
- **Referral Management** - Member referral programs
- **Rewards Management** - Loyalty programs

### Member Experience Layer
- **Member APP** - Mobile application
- **Personalized Content Management** - Content delivery
- **Digital Training** - Online training resources

📊 **Architecture diagram:** See [Knowledge Transfer/02_Current_Technology_Stack/environment-bubbles.png](Knowledge%20Transfer/02_Current_Technology_Stack/environment-bubbles.png)

---

## 📚 Documentation

### Key Documents

- **[README.md](README.md)** - This file (project overview)
- **[Knowledge Transfer/README.md](Knowledge%20Transfer/README.md)** - Folder structure and upload guidelines
- **[GIT_WORKFLOW.md](GIT_WORKFLOW.md)** - Complete Git workflow with OneDrive protection
- **[CLAUDE.md](CLAUDE.md)** - Claude Code integration guidance
- **[SETUP_COMPLETE.md](SETUP_COMPLETE.md)** - Initial setup summary

### Quick Links

- 📦 **GitHub Repository:** [github.com/mattmasteller/golds-gym-one-system](https://github.com/mattmasteller/golds-gym-one-system)
- ☁️ **OneDrive Folder:** Synced automatically
- 🔧 **Issues & Support:** [GitHub Issues](https://github.com/mattmasteller/golds-gym-one-system/issues)

---

## 🤝 Contributing

### For Stakeholders (Non-Technical)

Simply drop files into the OneDrive folder structure. The consulting team will handle Git commits and organization.

### For Consultants & Technical Team

1. **Pull latest changes** before starting work
   ```bash
   scripts/git-safe-pull.sh
   ```

2. **Work on documentation** - Add, update, or organize files

3. **Commit changes** at end of day
   ```bash
   scripts/git-safe-sync.sh "Brief description of changes"
   ```

4. **Use descriptive commit messages** that explain what was added or changed

### Commit Message Examples

✅ Good:
- `Daily update: added IT infrastructure diagrams and network topology`
- `Added vendor contracts for ABC Company and XYZ Corp`
- `Updated business process workflows for membership cancellation`

❌ Avoid:
- `updates`
- `misc changes`
- `stuff`

---

## 🔒 Security & Compliance

### Protected Information

This repository automatically excludes sensitive files via `.gitignore`:
- Password files
- Credentials and API keys
- `.env` files
- Private keys (`.key`, `.pem`)
- Office temporary files

### Access Control

- ✅ Repository is **PRIVATE** on GitHub
- ✅ OneDrive access controlled by organization
- ✅ Git history tracked for audit trail
- ✅ All changes attributed to specific users

---

## 📞 Support

### Questions or Issues?

- **Technical Issues:** Open an issue on [GitHub](https://github.com/mattmasteller/golds-gym-one-system/issues)
- **Document Questions:** Contact your consulting team
- **Access Problems:** Contact IT or project management

---

## 📈 Project Status

- ✅ Repository initialized and configured
- ✅ Git + OneDrive workflow operational
- ✅ Folder structure established
- ✅ Documentation complete
- 🔄 **Current Phase:** Knowledge Transfer and Document Collection

---

**Last Updated:** November 19, 2025
**Repository:** [github.com/mattmasteller/golds-gym-one-system](https://github.com/mattmasteller/golds-gym-one-system)
**Project:** Gold's Gym Digital Transformation - Phase 0
