---
type: run-record
created: 2026-06-10
agent: MacH
target: schema/AGENTS.md (vault master, iCloud path)
canonical-guide: Guides/claude-md-rewrite-guide.md (claude-code, 2026-06-10)
---

# Run record: schema/AGENTS.md rewrite (MacH, 2026-06-10)

Second application of the canonical rewrite process at `../claude-md-rewrite-guide.md`. First application was `claude-code` → `~/.claude/CLAUDE.md` at 18:00 UTC the same day.

## Target

`/Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding/schema/AGENTS.md` — the vault's master operational rules for the Knowledge Curator. This is a **shared, read-mostly** file (Tier-1 in the multi-agent write contract), distinct from the per-agent `~/.claude/CLAUDE.md` file the prior run targeted.

## Before / after (iCloud path)

| | Words | Lines | Est. tokens (× 1.3) |
|---|---:|---:|---:|
| Before (iCloud) | 1,020 | 183 | ~1,326 |
| After (iCloud)  | 995   | 136 | ~1,293 |
| **Δ** | **−25 (−2.5%)** | **−47 (−25.7%)** | **−33** |

The line drop is the more useful signal: the file is substantially denser, with three new substantive capability sections folded in.

## What was added (the three canonical sections)

- **§8 Self-annealing skills** — three-step ritual: root-cause → patch → log blocker-resolve. Forces skills to evolve, never to silently regress.
- **§9 Auto research (Karpathy loop)** — KPI / Lever / Loop / Stop / Report. Forces plan-and-optimize requests into iterative campaigns with measurable outcomes.
- **§10 Leverage** — decision table for *how* to execute (plan mode, parallel tool calls, Explore subagent, skill loading, background terminals). Previously absent entirely.

## What was deduplicated (now lives in canonical files the agent already reads)

| Cut from old AGENTS.md | Lives in | Required at session start? |
|---|---|---|
| Boilerplate "SYSTEM DIRECTIVE" preamble | Compressed to one bullet ("Identity: autonomous Knowledge Curator") | — |
| Wiki-hierarchy comment column | Folded into ASCII tree | — |
| Lint check list (orphans, stale >90d, unprocessed, index drift) | `schema/curate-modes.md` § "lint" | Yes (curate skill) |
| "Tailoring decisions" 5-row table | `DECISIONS.md` (2026-06-05 entry); §7 now points to it | Yes |
| Mermaid example flowchart | Dropped (the rule "use Mermaid" survives; example was tutorial-style) | — |
| Long-form ingest step headings (Step 1—5 with explanatory prose) | Renumbered imperative list, prose dropped | — |

## What was preserved (binding, must not drop)

- **Multi-agent write contract** (5 rules: pull-before-write, curator-owns-wiki, infrastructure-stays-at-root, one-writer-per-file, Tier-1 read-only). Promoted to **§5** — its own top-level section, since it's the most operationally binding set of rules in the file.
- **Boundary rules** (no trade recommendations, append-only, never silent-merge, always cite).
- **Schema precedence** (4-tier ordering: AGENTS.md → wiki/schema/config → curate-modes → Wiki-* concepts).
- **Wikilink mandate** (mandatory, bidirectional) and CONTRADICTION FLAG format.
- **Raw-file lifecycle** and processed categories.
- **Visual rules** (Mermaid, spatial contiguity, smart tables).
- **Read order** for wiki work.

## Pitfall observed (worth logging in the fleet)

- **There are two working trees of the same repo on the Mac** — `~/agent-memory/` and the iCloud path. Both point at `dman1313/agent-memory-coding` on GitHub but have **diverged**:
  - iCloud is the source of truth (launchd sync, all other Mac agents, Hermes pull target).
  - The local `~/agent-memory/` is a stale personal working copy (last local `ACTIVITY.md` mtime 2026-06-09; iCloud mtime 2026-06-10 18:00).
  - First pass wrote to the local copy. This run migrated the change to iCloud. **Risk:** if any other agent or cron resumes work in the local copy and pushes from there, the iCloud state will re-diverge.
  - **Recommendation:** either delete `~/agent-memory/` and rely on iCloud symlink, or set up a sync (e.g. `git pull --rebase` in `~/agent-memory/` before any write). The current state is a foot-gun.

## Relation to the canonical guide

This run is the second execution of the process defined in `../claude-md-rewrite-guide.md`. The canonical guide and its three section templates (Self-Annealing, Auto Research, Leverage) were authored by `claude-code` at 18:00 UTC on 2026-06-10 and are unchanged. This run record is **not** a copy of the guide — it's the audit trail for one specific application. Future runs of the process on other files should add their own record here.

## Related

- `../claude-md-rewrite-guide` — the canonical process and section templates (do not edit for a single run)
- `../../schema/AGENTS` — the rewritten target file
- `../../DECISIONS` — where 2026-06-05 tailoring decisions live
- `../../STANDING-ORDERS` — cross-fleet rules the rewrite defers to
