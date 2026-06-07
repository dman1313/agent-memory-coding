#!/bin/bash
# Rebuild NOW.md from ACTIVITY.md, then rebuild CONTEXT.md with NOW.md injected
# Run on sync or when vault files change

# Auto-detect vault path: VPS (git clone) or Mac (iCloud)
if [ -d "/home/ubuntu/agent-memory" ]; then
    VAULT="/home/ubuntu/agent-memory"
elif [ -d "/Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding" ]; then
    VAULT="/Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding"
else
    echo "ERROR: Cannot find agent-memory vault" >&2
    exit 1
fi
cd "$VAULT" || exit 1

ACTIVITY_FILE="ACTIVITY.md"
NOW_FILE="NOW.md"
NOW_TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

# Known fleet agents (for Active Work / Last Seen filtering)
FLEET_AGENTS="claude-code codex goose kimi kiro hermes antigravity cursor MacH"

# ---------------------------------------------------------------------------
# Ensure ACTIVITY.md has a valid header (repair if agents prepended past it)
# ---------------------------------------------------------------------------

ensure_activity_header() {
    local activity="$1"
    [ -f "$activity" ] || return 0

    if grep -q '^<!-- ENTRIES BELOW THIS LINE -->$' "$activity" 2>/dev/null; then
        return 0
    fi

    echo "ACTIVITY.md: header missing — repairing in place"
    local tmp
    tmp=$(mktemp)

    cat > "$tmp" << 'ACTIVITY_HEADER'
# ACTIVITY — Agent Activity Log

> Append-only log for the shared memory vault. One entry per line, newest at top.
> Agents prepend **below the marker line only**. Never prepend above it.
> Auto-trimmed to 500 entries. Overflow archived to `activity-archive/YYYY-MM.md`.
>
> **Format:** `YYYY-MM-DDTHH:MM:SSZ | agent-name | event-type | project-slug | detail text`
>
> **Event types:** session-start, session-end, decision, blocker, blocker-resolve, milestone, handoff, note, message
>
> **Agent names:** claude-code, codex, goose, kimi, kiro, hermes, antigravity, cursor
> **Project slugs:** symphony, free-claude-code, hermes-ecosystem, hermes-metaclaw, wiki-obsidian, newsletter-platform, multica-dashboard, agent-memory-coding, humangood-ai-webpage, pyp-planner-gen, or leave empty for general

<!-- ENTRIES BELOW THIS LINE -->
ACTIVITY_HEADER

    grep '^[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2}T[0-9]\{2\}:[0-9]\{2\}:[0-9]\{2\}Z ' "$activity" >> "$tmp" || true
    mv "$tmp" "$activity"
}

is_fleet_agent() {
    local agent="$1"
    for a in $FLEET_AGENTS; do
        [ "$agent" = "$a" ] && return 0
    done
    return 1
}

format_active_line() {
    local ts="$1" agent="$2" event="$3" project="$4" detail="$5" stale="$6"
    local label="$agent"
    local suffix=""

    [ -n "$project" ] && label="${agent} · ${project}"
    [ "$event" = "handoff" ] && suffix=" _(handoff)_"
    [ "$stale" = "1" ] && suffix="${suffix} _(stale — log session-end)_"

    echo "- **${label}**${suffix}: ${detail} _(${ts})_"
}

# Portable date offsets
if date -v-7d >/dev/null 2>&1; then
    SEVEN_DAYS_AGO=$(date -u -v-7d +"%Y-%m-%dT%H:%M:%SZ")
    TWO_DAYS_AGO=$(date -u -v-2d +"%Y-%m-%dT%H:%M:%SZ")
else
    SEVEN_DAYS_AGO=$(date -u -d "7 days ago" +"%Y-%m-%dT%H:%M:%SZ")
    TWO_DAYS_AGO=$(date -u -d "2 days ago" +"%Y-%m-%dT%H:%M:%SZ")
fi

ensure_activity_header "$ACTIVITY_FILE"

if [ "${1:-}" = "--repair-only" ]; then
    echo "ACTIVITY.md header check complete"
    exit 0
fi

TMPDIR_NOW=$(mktemp -d)
trap 'rm -rf "$TMPDIR_NOW"' EXIT

PARSEDFILE="$TMPDIR_NOW/parsed.tsv"
> "$PARSEDFILE"

tsv_field() {
    local value="$1"
    [ -z "$value" ] && value="__EMPTY__"
    printf '%s' "$value"
}

tsv_read_project() {
    local value="$1"
    [ "$value" = "__EMPTY__" ] && value=""
    printf '%s' "$value"
}

parse_activity_line() {
    local line="$1"
    [[ "$line" =~ ^[[:space:]]*([0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}Z)[[:space:]]*\|[[:space:]]*([^|]+)[[:space:]]*\|[[:space:]]*([^|]+)[[:space:]]*\|[[:space:]]*([^|]*)[[:space:]]*\|[[:space:]]*(.*)$ ]] || return 1
    local ts="${BASH_REMATCH[1]}"
    local agent event project detail
    agent=$(echo "${BASH_REMATCH[2]}" | xargs)
    event=$(echo "${BASH_REMATCH[3]}" | xargs)
    project=$(echo "${BASH_REMATCH[4]}" | xargs)
    detail=$(echo "${BASH_REMATCH[5]}" | xargs)
    [ -z "$agent" ] || [ -z "$event" ] && return 1
    printf '%s\t%s\t%s\t%s\t%s\n' "$ts" "$agent" "$event" "$(tsv_field "$project")" "$detail"
}

read_tsv_row() {
    # Reads one tab-separated row without collapsing empty fields (via awk)
    local line="$1"
    local nf
    nf=$(echo "$line" | awk -F'\t' '{print NF}')
    ts=$(echo "$line" | awk -F'\t' '{print $1}')
    agent=$(echo "$line" | awk -F'\t' '{print $2}')
    event=$(echo "$line" | awk -F'\t' '{print $3}')
    project=$(tsv_read_project "$(echo "$line" | awk -F'\t' '{print $4}')")
    if [ "$nf" -ge 6 ]; then
        detail=$(echo "$line" | awk -F'\t' '{print $5}')
        stale=$(echo "$line" | awk -F'\t' '{print $6}')
    else
        detail=$(echo "$line" | awk -F'\t' '{print $5}')
        stale=""
    fi
}

if [ -f "$ACTIVITY_FILE" ]; then
    in_entries=false
    while IFS= read -r line || [ -n "$line" ]; do
        if [ "$line" = "<!-- ENTRIES BELOW THIS LINE -->" ]; then
            in_entries=true
            continue
        fi
        if ! $in_entries; then
            continue
        fi
        [[ -z "$line" || "$line" =~ ^[[:space:]]*$ ]] && continue
        parsed=$(parse_activity_line "$line") || continue
        printf '%s\n' "$parsed" >> "$PARSEDFILE"
    done < "$ACTIVITY_FILE"

    # Fallback: if marker exists but nothing parsed, scan entire file
    if [ ! -s "$PARSEDFILE" ]; then
        while IFS= read -r line || [ -n "$line" ]; do
            [[ "$line" =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}T ]] || continue
            parsed=$(parse_activity_line "$line") || continue
            printf '%s\n' "$parsed" >> "$PARSEDFILE"
        done < "$ACTIVITY_FILE"
    fi
fi

# --- Active / stale open sessions ---

ACTIVEFILE="$TMPDIR_NOW/active.tsv"
STALEFILE="$TMPDIR_NOW/stale.tsv"
> "$ACTIVEFILE"
> "$STALEFILE"

AGENTS=$(awk -F'\t' '{print $2}' "$PARSEDFILE" | sort -u)

while IFS= read -r fleet_agent; do
    [ -z "$fleet_agent" ] && continue
    is_fleet_agent "$fleet_agent" || continue

    latest_end_ts=""
    latest_open_ts=""
    latest_open_project=""
    latest_open_detail=""
    latest_open_event=""

    while IFS= read -r row; do
        [ -z "$row" ] && continue
        read_tsv_row "$row"
        [ "$agent" = "$fleet_agent" ] || continue
        if [ "$event" = "session-end" ]; then
            if [ -z "$latest_end_ts" ] || [[ "$ts" > "$latest_end_ts" ]]; then
                latest_end_ts="$ts"
            fi
        fi
    done < "$PARSEDFILE"

    while IFS= read -r row; do
        [ -z "$row" ] && continue
        read_tsv_row "$row"
        [ "$agent" = "$fleet_agent" ] || continue
        if [ "$event" = "session-start" ] || [ "$event" = "handoff" ]; then
            if [ -z "$latest_end_ts" ] || [[ "$ts" > "$latest_end_ts" ]]; then
                if [ -z "$latest_open_ts" ] || [[ "$ts" > "$latest_open_ts" ]]; then
                    latest_open_ts="$ts"
                    latest_open_project="$project"
                    latest_open_detail="$detail"
                    latest_open_event="$event"
                fi
            fi
        fi
    done < "$PARSEDFILE"

    [ -z "$latest_open_ts" ] && continue

    if [[ "$latest_open_ts" < "$TWO_DAYS_AGO" ]]; then
        printf '%s\t%s\t%s\t%s\t%s\t1\n' "$latest_open_ts" "$fleet_agent" "$latest_open_event" "$(tsv_field "$latest_open_project")" "$latest_open_detail" >> "$STALEFILE"
    else
        printf '%s\t%s\t%s\t%s\t%s\t0\n' "$latest_open_ts" "$fleet_agent" "$latest_open_event" "$(tsv_field "$latest_open_project")" "$latest_open_detail" >> "$ACTIVEFILE"
    fi
done <<< "$AGENTS"

sort -t$'\t' -k1 -r "$ACTIVEFILE" > "$TMPDIR_NOW/active_sorted.tsv"
sort -t$'\t' -k1 -r "$STALEFILE" > "$TMPDIR_NOW/stale_sorted.tsv"

# --- Blockers ---

BLOCKERSFILE="$TMPDIR_NOW/blockers.tsv"
> "$BLOCKERSFILE"

while IFS= read -r row; do
    [ -z "$row" ] && continue
    read_tsv_row "$row"
    [ "$event" = "blocker" ] || continue
    blocker_ts="$ts"
    blocker_agent="$agent"
    blocker_project="$(tsv_field "$project")"
    blocker_detail="$detail"
    resolved=false
    while IFS= read -r row2; do
        [ -z "$row2" ] && continue
        read_tsv_row "$row2"
        if [ "$agent" = "$blocker_agent" ] && [ "$event" = "blocker-resolve" ] && [ "$(tsv_field "$project")" = "$blocker_project" ] && [[ "$ts" > "$blocker_ts" || "$ts" = "$blocker_ts" ]]; then
            resolved=true
            break
        fi
    done < "$PARSEDFILE"
    if ! $resolved; then
        printf '%s\t%s\t%s\t%s\t%s\n' "$blocker_ts" "$blocker_agent" "blocker" "$blocker_project" "$blocker_detail" >> "$BLOCKERSFILE"
    fi
done < "$PARSEDFILE"

# --- Recent slices ---

DECISIONSFILE="$TMPDIR_NOW/decisions_sorted.tsv"
MILESTONESFILE="$TMPDIR_NOW/milestones_sorted.tsv"
RECENTFILE="$TMPDIR_NOW/recent_sorted.tsv"
DASHFILE="$TMPDIR_NOW/dashboard_sorted.tsv"

> "$TMPDIR_NOW/decisions.tsv"
> "$TMPDIR_NOW/milestones.tsv"
> "$TMPDIR_NOW/recent.tsv"
> "$TMPDIR_NOW/dashboard.tsv"

while IFS= read -r row; do
    [ -z "$row" ] && continue
    read_tsv_row "$row"
    case "$event" in
        decision)
            if [[ "$ts" > "$SEVEN_DAYS_AGO" || "$ts" = "$SEVEN_DAYS_AGO" ]]; then
                printf '%s\t%s\t%s\t%s\t%s\n' "$ts" "$agent" "$event" "$(tsv_field "$project")" "$detail" >> "$TMPDIR_NOW/decisions.tsv"
            fi
            ;;
        milestone)
            if [[ "$ts" > "$SEVEN_DAYS_AGO" || "$ts" = "$SEVEN_DAYS_AGO" ]]; then
                printf '%s\t%s\t%s\t%s\t%s\n' "$ts" "$agent" "$event" "$(tsv_field "$project")" "$detail" >> "$TMPDIR_NOW/milestones.tsv"
            fi
            ;;
    esac

    if [ "$agent" = "dashboard" ] && [ "$event" = "message" ]; then
        if [[ "$ts" > "$TWO_DAYS_AGO" || "$ts" = "$TWO_DAYS_AGO" ]]; then
            printf '%s\t%s\t%s\t%s\t%s\n' "$ts" "$agent" "$event" "$(tsv_field "$project")" "$detail" >> "$TMPDIR_NOW/dashboard.tsv"
        fi
    elif [[ "$ts" > "$TWO_DAYS_AGO" || "$ts" = "$TWO_DAYS_AGO" ]]; then
        if [ "$event" != "message" ]; then
            printf '%s\t%s\t%s\t%s\t%s\n' "$ts" "$agent" "$event" "$(tsv_field "$project")" "$detail" >> "$TMPDIR_NOW/recent.tsv"
        fi
    fi
done < "$PARSEDFILE"

sort -t$'\t' -k1 -r "$TMPDIR_NOW/decisions.tsv" > "$DECISIONSFILE"
sort -t$'\t' -k1 -r "$TMPDIR_NOW/milestones.tsv" > "$MILESTONESFILE"
sort -t$'\t' -k1 -r "$TMPDIR_NOW/recent.tsv" > "$RECENTFILE"
sort -t$'\t' -k1 -r "$TMPDIR_NOW/dashboard.tsv" > "$DASHFILE"

# --- Last seen (fleet only) ---

LASTSEENFILE="$TMPDIR_NOW/lastseen_sorted.tsv"
> "$TMPDIR_NOW/lastseen.tsv"

while IFS= read -r fleet_agent; do
    [ -z "$fleet_agent" ] && continue
    is_fleet_agent "$fleet_agent" || continue
    latest_ts="" latest_event="" latest_detail=""
    while IFS= read -r row; do
        [ -z "$row" ] && continue
        read_tsv_row "$row"
        [ "$agent" = "$fleet_agent" ] || continue
        if [ -z "$latest_ts" ] || [[ "$ts" > "$latest_ts" ]]; then
            latest_ts="$ts"
            latest_event="$event"
            latest_detail="$detail"
        fi
    done < "$PARSEDFILE"
    [ -n "$latest_ts" ] && printf '%s\t%s\t%s\t%s\n' "$latest_ts" "$fleet_agent" "$latest_event" "$latest_detail" >> "$TMPDIR_NOW/lastseen.tsv"
done <<< "$AGENTS"

sort -t$'\t' -k1 -r "$TMPDIR_NOW/lastseen.tsv" > "$LASTSEENFILE"

# --- Pending agent inboxes ---

INBOXFILE="$TMPDIR_NOW/inboxes.txt"
> "$INBOXFILE"
if [ -d "Agent Inbox" ]; then
    for inbox in Agent\ Inbox/*.md; do
        [ -f "$inbox" ] || continue
        if grep -q '^\*\*Status:\*\* PENDING' "$inbox" 2>/dev/null; then
            agent_name=$(basename "$inbox" .md)
            subject=$(grep -m1 '^\*\*Subject:\*\*' "$inbox" 2>/dev/null | sed 's/^\*\*Subject:\*\* //')
            [ -z "$subject" ] && subject=$(grep -m1 '^Roster check' "$inbox" 2>/dev/null || echo "(pending message)")
            echo "- **${agent_name}**: ${subject}" >> "$INBOXFILE"
        fi
    done
fi

# --- Write NOW.md ---

{
    echo "# NOW — Current State"
    echo ""
    echo "_Generated: ${NOW_TIMESTAMP}_"
    echo ""

    echo "## Active Work"
    if [ -s "$TMPDIR_NOW/active_sorted.tsv" ]; then
        while IFS= read -r row; do
            [ -z "$row" ] && continue
            read_tsv_row "$row"
            format_active_line "$ts" "$agent" "$event" "$project" "$detail" "$stale"
        done < "$TMPDIR_NOW/active_sorted.tsv"
    else
        echo "_(none)_"
    fi

    echo ""
    echo "## Stale Open Sessions (>48h, no session-end)"
    if [ -s "$TMPDIR_NOW/stale_sorted.tsv" ]; then
        while IFS= read -r row; do
            [ -z "$row" ] && continue
            read_tsv_row "$row"
            format_active_line "$ts" "$agent" "$event" "$project" "$detail" "1"
        done < "$TMPDIR_NOW/stale_sorted.tsv"
    else
        echo "_(none)_"
    fi

    echo ""
    echo "## Pending Inboxes"
    if [ -s "$INBOXFILE" ]; then
        cat "$INBOXFILE"
    else
        echo "_(none)_"
    fi

    echo ""
    echo "## Dashboard Messages (48h)"
    if [ -s "$DASHFILE" ]; then
        count=0
        while IFS= read -r row && [ "$count" -lt 8 ]; do
            [ -z "$row" ] && continue
            read_tsv_row "$row"
            target="${project:-all}"
            echo "- ${ts} | → ${target} | ${detail}"
            count=$((count + 1))
        done < "$DASHFILE"
    else
        echo "_(none)_"
    fi

    echo ""
    echo "## Blockers"
    if [ -s "$BLOCKERSFILE" ]; then
        while IFS= read -r row; do
            [ -z "$row" ] && continue
            read_tsv_row "$row"
            if [ -n "$project" ]; then
                echo "- **${agent} · ${project}**: ${detail} _(${ts})_"
            else
                echo "- **${agent}**: ${detail} _(${ts})_"
            fi
        done < "$BLOCKERSFILE"
    else
        echo "_(none)_"
    fi

    echo ""
    echo "## Recent Activity (48h)"
    if [ -s "$RECENTFILE" ]; then
        count=0
        while IFS= read -r row && [ "$count" -lt 12 ]; do
            [ -z "$row" ] && continue
            read_tsv_row "$row"
            if [ -n "$project" ]; then
                echo "- ${ts} | **${agent}** · ${project} · ${event} | ${detail}"
            else
                echo "- ${ts} | **${agent}** · ${event} | ${detail}"
            fi
            count=$((count + 1))
        done < "$RECENTFILE"
    else
        echo "_(none)_"
    fi

    echo ""
    echo "## Recent Decisions (7d)"
    if [ -s "$DECISIONSFILE" ]; then
        count=0
        while IFS= read -r row && [ "$count" -lt 8 ]; do
            [ -z "$row" ] && continue
            read_tsv_row "$row"
            if [ -n "$project" ]; then
                echo "- ${ts} | **${agent}** · ${project} | ${detail}"
            else
                echo "- ${ts} | **${agent}** | ${detail}"
            fi
            count=$((count + 1))
        done < "$DECISIONSFILE"
    else
        echo "_(none)_"
    fi

    echo ""
    echo "## Recent Milestones (7d)"
    if [ -s "$MILESTONESFILE" ]; then
        count=0
        while IFS= read -r row && [ "$count" -lt 12 ]; do
            [ -z "$row" ] && continue
            read_tsv_row "$row"
            if [ -n "$project" ]; then
                echo "- ${ts} | **${agent}** · ${project} | ${detail}"
            else
                echo "- ${ts} | **${agent}** | ${detail}"
            fi
            count=$((count + 1))
        done < "$MILESTONESFILE"
    else
        echo "_(none)_"
    fi

    echo ""
    echo "## Last Seen (fleet)"
    if [ -s "$LASTSEENFILE" ]; then
        while IFS= read -r row; do
            [ -z "$row" ] && continue
            ts=$(echo "$row" | awk -F'\t' '{print $1}')
            agent=$(echo "$row" | awk -F'\t' '{print $2}')
            event=$(echo "$row" | awk -F'\t' '{print $3}')
            detail=$(echo "$row" | awk -F'\t' '{for(i=4;i<NF;i++) printf "%s%s", $i, FS; print $NF}')
            echo "- **${agent}**: ${ts} — ${event}: ${detail}"
        done < "$LASTSEENFILE"
    else
        echo "_(no activity)_"
    fi
} > "$NOW_FILE"

ENTRY_COUNT=$(wc -l < "$PARSEDFILE" | tr -d ' ')
echo "NOW.md generated from ${ENTRY_COUNT} activity entries"

# ---------------------------------------------------------------------------
# Phase 2: Rebuild CONTEXT.md with NOW.md injected at top
# ---------------------------------------------------------------------------

cat > CONTEXT.md << 'HEADER'
# Agent Context

> Auto-generated from individual memory files. Do not edit directly — edit the source files and re-run build-context.sh.

---

HEADER

cat "$NOW_FILE" >> CONTEXT.md
echo "" >> CONTEXT.md
echo "---" >> CONTEXT.md
echo "" >> CONTEXT.md

echo "## User" >> CONTEXT.md
echo "" >> CONTEXT.md
for f in User/*.md; do
    [ -f "$f" ] || continue
    sed '/^---$/,/^---$/d' "$f" | sed '/^$/N;/^\n$/d' | sed 's/^/- /' >> CONTEXT.md
    echo "" >> CONTEXT.md
done

echo "## Agent Fleet" >> CONTEXT.md
echo "" >> CONTEXT.md
for f in Agents/*.md; do
    [ -f "$f" ] || continue
    name=$(basename "$f" .md)
    title="$(echo "$name" | cut -c1 | tr '[:lower:]' '[:upper:]')$(echo "$name" | cut -c2-)"
    echo "### $title" >> CONTEXT.md
    echo "" >> CONTEXT.md
    sed '/^---$/,/^---$/d' "$f" | sed '/^$/N;/^\n$/d' >> CONTEXT.md
    echo "" >> CONTEXT.md
done

echo "## Active Projects" >> CONTEXT.md
echo "" >> CONTEXT.md
for f in Project/*.md; do
    [ -f "$f" ] || continue
    name=$(basename "$f" .md)
    title=$(echo "$name" | sed 's/-/ /g' | awk '{for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) tolower(substr($i,2))}1')
    echo "### $title" >> CONTEXT.md
    echo "" >> CONTEXT.md
    sed '/^---$/,/^---$/d' "$f" | sed '/^$/N;/^\n$/d' >> CONTEXT.md
    echo "" >> CONTEXT.md
done

echo "## Working Preferences" >> CONTEXT.md
echo "" >> CONTEXT.md
for f in Feedback/*.md; do
    [ -f "$f" ] || continue
    sed '/^---$/,/^---$/d' "$f" | sed '/^$/N;/^\n$/d' >> CONTEXT.md
    echo "" >> CONTEXT.md
done

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

cat >> CONTEXT.md << 'FOOTER'
---

## Session Startup Checklist

1. Read NOW.md (or the NOW section above) for current fleet state
2. Check ACTIVITY.md for recent entries since your last session
3. Check Agent Inbox/{your-agent}.md and AGENT-CHANNEL.md for pending messages
4. Check `git log --oneline -5` for recent vault changes
5. Log a `session-start` entry to ACTIVITY.md **below the marker line**
6. Pick up where the last session left off
7. Log `session-end` when done — stale open sessions pollute Active Work
FOOTER

echo "CONTEXT.md rebuilt from $(ls User/*.md Agents/*.md Project/*.md Feedback/*.md Reference/*.md 2>/dev/null | wc -l | tr -d ' ') source files"
