#!/bin/bash
# Auto-sync agent memory vault to GitHub
VAULT="/Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding"
cd "$VAULT" || exit 1

# Pull remote changes first
git pull --rebase --autostash 2>/dev/null

# Rotate ACTIVITY.md if over 500 entries
ACTIVITY="$VAULT/ACTIVITY.md"
if [ -f "$ACTIVITY" ]; then
  total=$(grep -c '^[0-9]\{4\}-' "$ACTIVITY" 2>/dev/null || echo 0)
  if [ "$total" -gt 500 ]; then
    overflow=$((total - 500))
    mkdir -p "$VAULT/activity-archive"
    # Append overflow entries to monthly archive
    grep '^[0-9]\{4\}-' "$ACTIVITY" | head -n "$overflow" >> "$VAULT/activity-archive/$(date -u +%Y-%m).md"
    # Rebuild ACTIVITY.md: header + last 500 entries
    header_end=$(grep -n '<!-- ENTRIES BELOW THIS LINE -->' "$ACTIVITY" | head -1 | cut -d: -f1)
    head -n "$header_end" "$ACTIVITY" > "$ACTIVITY.tmp"
    grep '^[0-9]\{4\}-' "$ACTIVITY" | tail -n 500 >> "$ACTIVITY.tmp"
    mv "$ACTIVITY.tmp" "$ACTIVITY"
  fi
fi

# Rebuild NOW.md and CONTEXT.md from source files
bash "$VAULT/build-context.sh" 2>/dev/null

# Stage and check if there's anything to commit
git add -A
if git diff --cached --quiet 2>/dev/null; then
  exit 0
fi

# Commit and push
git commit -m "auto-sync $(date +%Y-%m-%d\ %H:%M)" --author="Agent Memory Sync <dman1313@users.noreply.github.com>"
git push
