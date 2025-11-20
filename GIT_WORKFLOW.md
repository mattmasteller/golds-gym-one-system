# Git Workflow Guide

This repository uses Git version control with special OneDrive protection to prevent sync conflicts.

## 🔒 OneDrive Protection System

This repository has **automatic OneDrive pause/resume** built into Git operations:

- **Git Hooks**: Automatically pause OneDrive during commits, pushes, and pulls
- **Helper Scripts**: Convenient scripts that handle the entire workflow

## 🚀 Quick Start

### Option 1: Use Helper Scripts (Recommended)

**Daily Sync Workflow:**
```bash
scripts/git-safe-sync.sh "Daily update: new vendor contracts added"
```
This does: add → commit → pull → push (all with OneDrive protection)

**Individual Operations:**
```bash
scripts/git-safe-commit.sh "Add new infrastructure diagrams"
scripts/git-safe-push.sh
scripts/git-safe-pull.sh
```

### Option 2: Use Regular Git Commands

The Git hooks will **automatically** pause/resume OneDrive:
```bash
git add .
git commit -m "Your message"  # OneDrive auto-paused during commit
git push                       # OneDrive auto-paused during push
```

## 📋 Available Scripts

| Script | Purpose | Usage |
|--------|---------|-------|
| `git-safe-sync.sh` | Complete workflow: add, commit, pull, push | `scripts/git-safe-sync.sh "message"` |
| `git-safe-commit.sh` | Stage and commit with protection | `scripts/git-safe-commit.sh "message"` |
| `git-safe-push.sh` | Push to remote with protection | `scripts/git-safe-push.sh` |
| `git-safe-pull.sh` | Pull from remote with protection | `scripts/git-safe-pull.sh` |

## 🔧 How It Works

### Automatic Git Hooks

The following hooks are installed in `.git/hooks/`:

- **pre-commit**: Pauses OneDrive before commit starts
- **post-commit**: Resumes OneDrive after commit completes
- **pre-push**: Pauses OneDrive before push starts
- **post-checkout**: Resumes OneDrive after checkout/pull
- **post-merge**: Resumes OneDrive after merge/pull

### OneDrive Pause Process

1. Kill OneDrive processes: `killall "OneDrive"`
2. Wait 2 seconds for full shutdown
3. Perform Git operation
4. Restart OneDrive: `open -a "OneDrive"`

**Total pause time**: ~3-5 seconds per Git operation

## 📖 Daily Workflow

### Morning: Pull Latest Changes
```bash
scripts/git-safe-pull.sh
```

### Throughout the Day
- Stakeholders drop files into OneDrive
- OneDrive syncs normally
- You work on documentation

### End of Day: Commit & Push
```bash
scripts/git-safe-sync.sh "Daily update: added compliance documents and tech diagrams"
```

## 🔍 Checking Status

```bash
git status          # See what's changed
git log --oneline   # See recent commits
git diff            # See file changes
```

## ⚠️ Important Notes

1. **Always commit before pulling** to avoid losing local changes
2. **Use descriptive commit messages** following the file naming convention
3. **Don't commit sensitive files** (passwords, credentials, PII)
4. **The .gitignore file** already excludes common sensitive patterns
5. **If OneDrive doesn't restart**, manually run: `open -a "OneDrive"`

## 🆘 Troubleshooting

### OneDrive Didn't Resume After Git Operation
```bash
open -a "OneDrive"
```

### Git Operation Failed Mid-Process
```bash
# Check if OneDrive is running
ps aux | grep OneDrive

# If not, restart it
open -a "OneDrive"
```

### Merge Conflict During Pull
```bash
# The script will notify you
# Resolve conflicts in affected files
# Then:
git add .
git rebase --continue
scripts/git-safe-push.sh
```

### Want to Skip OneDrive Protection
```bash
# Temporarily rename hooks
mv .git/hooks/pre-commit .git/hooks/pre-commit.disabled

# Do your git operations
git commit -m "message"

# Re-enable hooks
mv .git/hooks/pre-commit.disabled .git/hooks/pre-commit
```

## 📊 Repository Structure

```
Gold's Gym One System - Documents/
├── .git/                    # Git repository
│   └── hooks/              # Automatic OneDrive protection
├── scripts/                # Helper scripts
│   ├── git-safe-sync.sh
│   ├── git-safe-commit.sh
│   ├── git-safe-push.sh
│   └── git-safe-pull.sh
├── .gitignore              # Excluded files
├── CLAUDE.md               # Claude Code guidance
├── GIT_WORKFLOW.md         # This file
└── Knowledge Transfer/     # Main documentation folder
```

## 🔐 Security

Files matching these patterns are **automatically excluded** from Git:

- `*password*`, `*credential*`, `*secret*`
- `.env`, `credentials.json`
- `*.key`, `*.pem`
- Office temp files (`~$*.doc*`)
- `.DS_Store` and other macOS artifacts

## 📞 Getting Help

If you encounter issues:

1. Check OneDrive status: `ps aux | grep OneDrive`
2. Check Git status: `git status`
3. Restart OneDrive: `open -a "OneDrive"`
4. Contact your consulting team
