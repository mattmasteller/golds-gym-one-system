#!/bin/bash
# Git Safe Commit: Automatically pause OneDrive, commit, and resume
# Usage: ./git-safe-commit.sh "commit message"
#        ./git-safe-commit.sh -m "commit message"

set -e  # Exit on error

REPO_DIR="/Users/mattmasteller/Library/CloudStorage/OneDrive-SharedLibraries-StackHackLabsLLC/Gold's Gym One System - Documents"
cd "$REPO_DIR"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔒 Git Safe Commit (with OneDrive protection)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Show current status
echo "📊 Current Git status:"
git status --short

echo ""
echo "🔄 Pausing OneDrive..."
killall "OneDrive" 2>/dev/null || true
killall "OneDrive File Provider" 2>/dev/null || true
killall "OneDrive Sync Service" 2>/dev/null || true
sleep 2
echo "✓ OneDrive paused"

echo ""
echo "📦 Staging all changes..."
git add .

echo ""
echo "💾 Committing..."

# Handle different argument formats
if [ "$#" -eq 0 ]; then
    echo "Error: Please provide a commit message"
    echo "Usage: $0 \"commit message\""
    open -a "OneDrive" 2>/dev/null
    exit 1
elif [ "$1" = "-m" ]; then
    git commit -m "$2"
else
    git commit -m "$1"
fi

echo ""
echo "✓ Commit successful!"

echo ""
echo "🔄 Resuming OneDrive..."
open -a "OneDrive" 2>/dev/null
sleep 1
echo "✓ OneDrive resumed"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Safe commit complete!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
