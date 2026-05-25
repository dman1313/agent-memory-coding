#!/bin/bash
# Rebuild NOW.md from ACTIVITY.md, then rebuild CONTEXT.md with NOW.md injected
# Run on sync or when vault files change

VAULT="/Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding"
cd "$VAULT" || exit 1

# ---------------------------------------------------------------------------
# Phase 1: Generate NOW.md from ACTIVITY.md
# ---------------------------------------------------------------------------

ACTIVITY_FILE="ACTIVITY.md"
NOW_FILE="NOW.md"
NOW_TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

# Compute ISO timestamp for 7 days ago (portable: convert to epoch, subtract, convert back)
if date -v-7d >/dev/null 2>&1; then
    # macOS
    SEVEN_DAYS_AGO=$(date -u -v-7d +"%Y-%m-%dT%H:%M:%SZ")
else
    # GNU coreutils
    SEVEN_DAYS_AGO=$(date -u -d "7 days ago" +"%Y-%m-%dT%H:%M:%SZ")
fi

# Regex for parsing entries
# Format: timestamp | agent | event-type | project-slug | detail
ENTRY_REGEX='^[[:space:]]*([0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}Z)[[:space:]]*\|[[:space:]]*([^|]+)[[:space:]]*\|[[:space:]]*([^|]+)[[:space:]]*\|[[:space:]]*([^|]*)[[:space:]]*\|[[:space:]]*(.+)$'

# Temp files for collecting parsed data
TMPDIR_NOW=$(mktemp -d)
trap 'rm -rf "$TMPDIR_NOW"' EXIT

# Parse ACTIVITY.md entries into a normalized temp file (one entry per line, tab-separated)
# Fields: timestamp \t agent \t event \t project \t detail
PARSEDFILE="$TMPDIR_NOW/parsed.tsv"
> "$PARSEDFILE"

if [ -f "$ACTIVITY_FILE" ]; then
    # Read entries below the marker line
    in_entries=false
    while IFS= read -r line; do
        if [ "$line" = "<!-- ENTRIES BELOW THIS LINE -->" ]; then
            in_entries=true
            continue
        fi
        if ! $in_entries; then
            continue
        fi
        # Skip blank lines and comments
        [[ -z "$line" || "$line" =~ ^[[:space:]]*$ || "$line" =~ ^# || "$line" =~ ^\> ]] && continue

        # Try to match the entry pattern using bash regex
        if [[ "$line" =~ ^[[:space:]]*([0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}Z)[[:space:]]*\|[[:space:]]*([^|]+)[[:space:]]*\|[[:space:]]*([^|]+)[[:space:]]*\|[[:space:]]*([^|]*)[[:space:]]*\|[[:space:]]*(.+)$ ]]; then
            ts="${BASH_REMATCH[1]}"
            agent=$(echo "${BASH_REMATCH[2]}" | xargs)
            event=$(echo "${BASH_REMATCH[3]}" | xargs)
            project=$(echo "${BASH_REMATCH[4]}" | xargs)
            detail=$(echo "${BASH_REMATCH[5]}" | xargs)
            printf '%s\t%s\t%s\t%s\t%s\n' "$ts" "$agent" "$event" "$project" "$detail" >> "$PARSEDFILE"
        fi
        # Malformed lines are silently skipped
    done < "$ACTIVITY_FILE"
fi

# --- Active Work: latest session-start or handoff per agent with no subsequent session-end ---

ACTIVEFILE="$TMPDIR_NOW/active.tsv"
> "$ACTIVEFILE"

# Get list of agents that have entries
AGENTS=$(awk -F'\t' '{print $2}' "$PARSEDFILE" | sort -u)

while IFS= read -r agent; do
    [ -z "$agent" ] && continue
    # Find latest session-start or handoff for this agent
    latest_open=""
    latest_open_ts=""
    latest_open_project=""
    latest_open_detail=""
    latest_open_event=""

    # Find latest session-end for this agent
    latest_end_ts=""

    while IFS=$'\t' read -r ts a event project detail; do
        [ "$a" = "$agent" ] || continue
        if [ "$event" = "session-end" ]; then
            # Track the most recent session-end
            if [ -z "$latest_end_ts" ] || [[ "$ts" > "$latest_end_ts" ]]; then
                latest_end_ts="$ts"
            fi
        fi
    done < "$PARSEDFILE"

    # Now find the latest session-start or handoff AFTER the last session-end
    while IFS=$'\t' read -r ts a event project detail; do
        [ "$a" = "$agent" ] || continue
        if [ "$event" = "session-start" ] || [ "$event" = "handoff" ]; then
            # Only consider if after last session-end (or no session-end exists)
            if [ -z "$latest_end_ts" ] || [[ "$ts" > "$latest_end_ts" ]]; then
                if [ -z "$latest_open_ts" ] || [[ "$ts" > "$latest_open_ts" ]]; then
                    latest_open_ts="$ts"
                    latest_open="$ts"
                    latest_open_project="$project"
                    latest_open_detail="$detail"
                    latest_open_event="$event"
                fi
            fi
        fi
    done < "$PARSEDFILE"

    if [ -n "$latest_open" ]; then
        printf '%s\t%s\t%s\t%s\t%s\n' "$latest_open_ts" "$agent" "$latest_open_event" "$latest_open_project" "$latest_open_detail" >> "$ACTIVEFILE"
    fi
done <<< "$AGENTS"

# Sort active by timestamp desc
ACTIVEFILE_SORTED="$TMPDIR_NOW/active_sorted.tsv"
sort -t$'\t' -k1 -r "$ACTIVEFILE" > "$ACTIVEFILE_SORTED"

# --- Blockers: blocker events with no matching blocker-resolve (same agent+project) ---

BLOCKERSFILE="$TMPDIR_NOW/blockers.tsv"
> "$BLOCKERSFILE"

while IFS=$'\t' read -r ts agent event project detail; do
    [ "$event" = "blocker" ] || continue
    # Check if there's a blocker-resolve for same agent+project after this timestamp
    resolved=false
    while IFS=$'\t' read -r ts2 a2 e2 p2 d2; do
        if [ "$a2" = "$agent" ] && [ "$e2" = "blocker-resolve" ] && [ "$p2" = "$project" ] && [[ "$ts2" > "$ts" || "$ts2" = "$ts" ]]; then
            resolved=true
            break
        fi
    done < "$PARSEDFILE"
    if ! $resolved; then
        printf '%s\t%s\t%s\t%s\t%s\n' "$ts" "$agent" "$event" "$project" "$detail" >> "$BLOCKERSFILE"
    fi
done < "$PARSEDFILE"

# --- Recent Decisions: decision events within last 7 days ---

DECISIONSFILE="$TMPDIR_NOW/decisions.tsv"
> "$DECISIONSFILE"

while IFS=$'\t' read -r ts agent event project detail; do
    [ "$event" = "decision" ] || continue
    if [[ "$ts" > "$SEVEN_DAYS_AGO" || "$ts" = "$SEVEN_DAYS_AGO" ]]; then
        printf '%s\t%s\t%s\t%s\t%s\n' "$ts" "$agent" "$event" "$project" "$detail" >> "$DECISIONSFILE"
    fi
done < "$PARSEDFILE"

# Sort decisions by timestamp desc
DECISIONSFILE_SORTED="$TMPDIR_NOW/decisions_sorted.tsv"
sort -t$'\t' -k1 -r "$DECISIONSFILE" > "$DECISIONSFILE_SORTED"

# --- Recent Milestones: milestone events within last 7 days ---

MILESTONESFILE="$TMPDIR_NOW/milestones.tsv"
> "$MILESTONESFILE"

while IFS=$'\t' read -r ts agent event project detail; do
    [ "$event" = "milestone" ] || continue
    if [[ "$ts" > "$SEVEN_DAYS_AGO" || "$ts" = "$SEVEN_DAYS_AGO" ]]; then
        printf '%s\t%s\t%s\t%s\t%s\n' "$ts" "$agent" "$event" "$project" "$detail" >> "$MILESTONESFILE"
    fi
done < "$PARSEDFILE"

# Sort milestones by timestamp desc
MILESTONESFILE_SORTED="$TMPDIR_NOW/milestones_sorted.tsv"
sort -t$'\t' -k1 -r "$MILESTONESFILE" > "$MILESTONESFILE_SORTED"

# --- Last Seen: most recent entry per agent ---

LASTSEENFILE="$TMPDIR_NOW/lastseen.tsv"
> "$LASTSEENFILE"

while IFS= read -r agent; do
    [ -z "$agent" ] && continue
    latest_ts=""
    latest_event=""
    latest_detail=""
    while IFS=$'\t' read -r ts a event project detail; do
        [ "$a" = "$agent" ] || continue
        if [ -z "$latest_ts" ] || [[ "$ts" > "$latest_ts" ]]; then
            latest_ts="$ts"
            latest_event="$event"
            latest_detail="$detail"
        fi
    done < "$PARSEDFILE"
    if [ -n "$latest_ts" ]; then
        printf '%s\t%s\t%s\t%s\n' "$latest_ts" "$agent" "$latest_event" "$latest_detail" >> "$LASTSEENFILE"
    fi
done <<< "$AGENTS"

# Sort last seen by timestamp desc
LASTSEENFILE_SORTED="$TMPDIR_NOW/lastseen_sorted.tsv"
sort -t$'\t' -k1 -r "$LASTSEENFILE" > "$LASTSEENFILE_SORTED"

# --- Write NOW.md ---

{
    echo "# NOW — Current State"
    echo ""
    echo "_Generated: ${NOW_TIMESTAMP}_"
    echo ""
    echo "## Active Work"

    if [ -s "$ACTIVEFILE_SORTED" ]; then
        while IFS=$'\t' read -r ts agent event project detail; do
            if [ -n "$project" ]; then
                echo "- **${agent}** (${project}): ${detail}"
            else
                echo "- **${agent}**: ${detail}"
            fi
        done < "$ACTIVEFILE_SORTED"
    else
        echo "_(none)_"
    fi

    echo ""
    echo "## Blockers"

    if [ -s "$BLOCKERSFILE" ]; then
        while IFS=$'\t' read -r ts agent event project detail; do
            if [ -n "$project" ]; then
                echo "- **${agent}** (${project}): ${detail}"
            else
                echo "- **${agent}**: ${detail}"
            fi
        done < "$BLOCKERSFILE"
    else
        echo "_(none)_"
    fi

    echo ""
    echo "## Recent Decisions (7d)"

    if [ -s "$DECISIONSFILE_SORTED" ]; then
        while IFS=$'\t' read -r ts agent event project detail; do
            if [ -n "$project" ]; then
                echo "- ${ts} | ${agent}/${project} | ${detail}"
            else
                echo "- ${ts} | ${agent} | ${detail}"
            fi
        done < "$DECISIONSFILE_SORTED"
    else
        echo "_(none)_"
    fi

    echo ""
    echo "## Recent Milestones (7d)"

    if [ -s "$MILESTONESFILE_SORTED" ]; then
        while IFS=$'\t' read -r ts agent event project detail; do
            if [ -n "$project" ]; then
                echo "- ${ts} | ${project} | ${detail}"
            else
                echo "- ${ts} | ${detail}"
            fi
        done < "$MILESTONESFILE_SORTED"
    else
        echo "_(none)_"
    fi

    echo ""
    echo "## Last Seen"

    if [ -s "$LASTSEENFILE_SORTED" ]; then
        while IFS=$'\t' read -r ts agent event detail; do
            echo "- **${agent}**: ${ts} — ${event}: ${detail}"
        done < "$LASTSEENFILE_SORTED"
    else
        echo "_(no activity)_"
    fi
} > "$NOW_FILE"

echo "NOW.md generated from $(wc -l < "$PARSEDFILE" | tr -d ' ') activity entries"

# ---------------------------------------------------------------------------
# Phase 2: Rebuild CONTEXT.md with NOW.md injected at top
# ---------------------------------------------------------------------------

cat > CONTEXT.md << 'HEADER'
# Agent Context

> Auto-generated from individual memory files. Do not edit directly — edit the source files and re-run build-context.sh.

---

HEADER

# Inject NOW.md content
cat "$NOW_FILE" >> CONTEXT.md
echo "" >> CONTEXT.md
echo "---" >> CONTEXT.md
echo "" >> CONTEXT.md

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

1. Read NOW.md section at the top for current fleet state
2. Check ACTIVITY.md for recent entries since your last session
3. Check AGENT-CHANNEL.md for pending messages
4. Check `git log --oneline -5` for recent vault changes
5. Log a `session-start` entry to ACTIVITY.md
6. Pick up where the last session left off
FOOTER

echo "CONTEXT.md rebuilt from $(ls User/*.md Agents/*.md Project/*.md Feedback/*.md Reference/*.md 2>/dev/null | wc -l | tr -d ' ') source files"
