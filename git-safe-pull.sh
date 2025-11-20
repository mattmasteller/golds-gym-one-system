#!/bin/bash
# Git Safe Pull: Automatically pause OneDrive, pull, and resume
# Usage: ./git-safe-pull.sh
#        ./git-safe-pull.sh origin main

set -e  # Exit on error

REPO_DIR="/Users/mattmasteller/Library/CloudStorage/OneDrive-SharedLibraries-StackHackLabsLLC/Gold's Gym One System - Documents"
cd "$REPO_DIR"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "⬇️  Git Safe Pull (with OneDrive protection)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

echo "🔄 Pausing OneDrive..."
killall "OneDrive" 2>/dev/null || true
killall "OneDrive File Provider" 2>/dev/null || true
killall "OneDrive Sync Service" 2>/dev/null || true
sleep 2
echo "✓ OneDrive paused"

echo ""
echo "📥 Pulling from remote..."

# If arguments provided, use them; otherwise use default git pull
if [ "$#" -eq 0 ]; then
    git pull
else
    git pull "$@"
fi

echo ""
echo "✓ Pull successful!"

echo ""
echo "🔄 Resuming OneDrive..."
open -a "OneDrive" 2>/dev/null
sleep 1
echo "✓ OneDrive resumed"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Safe pull complete!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
