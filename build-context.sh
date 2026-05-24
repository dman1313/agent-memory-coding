#!/bin/bash
# Rebuild CONTEXT.md from individual memory files
# Run on sync or when vault files change

VAULT="/Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding"
cd "$VAULT" || exit 1

cat > CONTEXT.md << 'HEADER'
# Agent Context

> Auto-generated from individual memory files. Do not edit directly — edit the source files and re-run build-context.sh.

---

HEADER

# User section
echo "## User" >> CONTEXT.md
echo "" >> CONTEXT.md
for f in User/*.md; do
    [ -f "$f" ] || continue
    # Strip frontmatter (between --- delimiters), skip empty lines
    sed '/^---$/,/^---$/d' "$f" | sed '/^$/N;/^\n$/d' | sed 's/^/- /' >> CONTEXT.md
    echo "" >> CONTEXT.md
done

# Agents section
echo "## Agent Fleet" >> CONTEXT.md
echo "" >> CONTEXT.md
for f in Agents/*.md; do
    [ -f "$f" ] || continue
    # Extract agent name from filename
    name=$(basename "$f" .md)
    # Capitalize first letter
    title="$(echo "$name" | cut -c1 | tr '[:lower:]' '[:upper:]')$(echo "$name" | cut -c2-)"
    echo "### $title" >> CONTEXT.md
    echo "" >> CONTEXT.md
    # Strip frontmatter, convert body to content
    sed '/^---$/,/^---$/d' "$f" | sed '/^$/N;/^\n$/d' >> CONTEXT.md
    echo "" >> CONTEXT.md
done

# Projects section
echo "## Active Projects" >> CONTEXT.md
echo "" >> CONTEXT.md
for f in Project/*.md; do
    [ -f "$f" ] || continue
    name=$(basename "$f" .md)
    # Convert kebab to title case
    title=$(echo "$name" | sed 's/-/ /g' | awk '{for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) tolower(substr($i,2))}1')
    echo "### $title" >> CONTEXT.md
    echo "" >> CONTEXT.md
    sed '/^---$/,/^---$/d' "$f" | sed '/^$/N;/^\n$/d' >> CONTEXT.md
    echo "" >> CONTEXT.md
done

# Feedback section
echo "## Working Preferences" >> CONTEXT.md
echo "" >> CONTEXT.md
for f in Feedback/*.md; do
    [ -f "$f" ] || continue
    sed '/^---$/,/^---$/d' "$f" | sed '/^$/N;/^\n$/d' >> CONTEXT.md
    echo "" >> CONTEXT.md
done

# Reference section
echo "## Infrastructure & Reference" >> CONTEXT.md
echo "" >> CONTEXT.md
for f in Reference/*.md; do
    [ -f "$f" ] || continue
    name=$(basename "$f" .md)
    title=$(echo "$name" | sed 's/-/ /g' | awk '{for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) tolower(substr($i,2))}1')
    echo "### $title" >> CONTEXT.md
    echo "" >> CONTEXT.md
    sed '/^---$/,/^---$/d' "$f" | sed '/^$/N;/^\n$/d' >> CONTEXT.md
    echo "" >> CONTEXT.md
done

# Footer
cat >> CONTEXT.md << 'FOOTER'
---

## Session Startup Checklist

1. Read this file (CONTEXT.md)
2. Check AGENT-CHANNEL.md for pending messages
3. Check `git log --oneline -5` for recent vault changes
4. Pick up where the last session left off
FOOTER

echo "CONTEXT.md rebuilt from $(ls User/*.md Agents/*.md Project/*.md Feedback/*.md Reference/*.md 2>/dev/null | wc -l | tr -d ' ') source files"
