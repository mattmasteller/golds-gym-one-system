#!/bin/bash
# Git Safe Sync: Complete workflow - add, commit, pull, push with OneDrive protection
# Usage: ./git-safe-sync.sh "commit message"

set -e  # Exit on error

REPO_DIR="/Users/mattmasteller/Library/CloudStorage/OneDrive-SharedLibraries-StackHackLabsLLC/Gold's Gym One System - Documents"
cd "$REPO_DIR"

if [ "$#" -eq 0 ]; then
    echo "Error: Please provide a commit message"
    echo "Usage: $0 \"commit message\""
    exit 1
fi

COMMIT_MSG="$1"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔄 Git Safe Sync (Complete Workflow)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Show current status
echo "📊 Current Git status:"
git status --short

echo ""
echo "🔄 Pausing OneDrive for entire workflow..."
killall "OneDrive" 2>/dev/null || true
killall "OneDrive File Provider" 2>/dev/null || true
killall "OneDrive Sync Service" 2>/dev/null || true
sleep 2
echo "✓ OneDrive paused"

echo ""
echo "━━━ Step 1: Add & Commit ━━━"
git add .
git commit -m "$COMMIT_MSG"
echo "✓ Changes committed"

echo ""
echo "━━━ Step 2: Pull latest changes ━━━"
git pull --rebase || {
    echo "⚠️  Rebase conflict detected. Resolve conflicts and run:"
    echo "   git rebase --continue"
    echo "   Then run git push manually"
    open -a "OneDrive" 2>/dev/null
    exit 1
}
echo "✓ Pulled and rebased"

echo ""
echo "━━━ Step 3: Push to remote ━━━"
git push
echo "✓ Pushed to remote"

echo ""
echo "🔄 Resuming OneDrive..."
open -a "OneDrive" 2>/dev/null
sleep 1
echo "✓ OneDrive resumed"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Full sync complete! Your changes are on GitHub."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
