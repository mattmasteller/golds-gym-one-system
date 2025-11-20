#!/bin/bash
# Git Safe Push: Automatically pause OneDrive, push, and resume
# Usage: ./git-safe-push.sh
#        ./git-safe-push.sh origin main

set -e  # Exit on error

REPO_DIR="/Users/mattmasteller/Library/CloudStorage/OneDrive-SharedLibraries-StackHackLabsLLC/Gold's Gym One System - Documents"
cd "$REPO_DIR"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🚀 Git Safe Push (with OneDrive protection)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

echo "🔄 Pausing OneDrive..."
killall "OneDrive" 2>/dev/null || true
killall "OneDrive File Provider" 2>/dev/null || true
killall "OneDrive Sync Service" 2>/dev/null || true
sleep 2
echo "✓ OneDrive paused"

echo ""
echo "📤 Pushing to remote..."

# If arguments provided, use them; otherwise use default git push
if [ "$#" -eq 0 ]; then
    git push
else
    git push "$@"
fi

echo ""
echo "✓ Push successful!"

echo ""
echo "🔄 Resuming OneDrive..."
open -a "OneDrive" 2>/dev/null
sleep 1
echo "✓ OneDrive resumed"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Safe push complete!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
