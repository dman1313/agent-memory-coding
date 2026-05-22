#!/bin/bash
# Auto-sync agent memory vault to GitHub
VAULT="/Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding"
cd "$VAULT" || exit 1

# Pull remote changes first
git pull --rebase --autostash 2>/dev/null

# Stage and check if there's anything to commit
git add -A
if git diff --cached --quiet 2>/dev/null; then
    exit 0
fi

# Commit and push
git commit -m "auto-sync $(date +%Y-%m-%d\ %H:%M)" --author="Agent Memory Sync <dman1313@users.noreply.github.com>"
git push
