# Tasks: Fleet Plan Board & Self-Maintaining Coordination

> Plan: ./plan.md · Each task = files + steps + verify + commit. Tick `- [x]` as you go.
> Implementer: hyperagent (via GitHub API, atomic commits) unless noted. Evidence pasted under each task as it completes.

## Task 1: Board contract + scaffold
**Files:** Create `Plan/README.md`, `Plan/tasks/` (with `.gitkeep`)
- [x] Write `Plan/README.md`: lifecycle diagram, claim protocol, single-writer rule, handoff rule, `T-NNNN` id scheme, frontmatter template (exact YAML from plan.md), "generated files are script-only"
- [x] Verify: README contains all five rule blocks; frontmatter template parses (sandbox awk extract returns all 11 keys)
- [x] Commit: `plan: board contract + scaffold (T1)`

## Task 2: Seed six real tasks
**Files:** Create `Plan/tasks/T-0001-retire-diverged-mac-tree.md` (MacH), `T-0002-verify-vault-sync-launchd.md` (MacH), `T-0003-fix-igcse-concept-pipeline.md` (hermes), `T-0004-dream-cleanup-bug.md` (hermes), `T-0005-hal-telegram-delivery.md` (hermes), `T-0006-vps-cache-cleanup.md` (hermes)
- [x] Each: full frontmatter (`status: todo`, `handoff_to` set, `created_by: hyperagent`), Brief with what/why/done-looks-like sourced from NOW.md blockers + mrclean-audit-2026-06-11.md, empty Log
- [x] Verify: sandbox frontmatter parse on all six → 0 lint errors, ids unique, slugs match real projects
- [x] Commit: `plan: seed launch tasks T-0001..T-0006 (T2)`

## Task 3: Board renderer + NOW.md section
**Files:** Modify `build-context.sh`
- [x] Add `hyperagent` to `FLEET_AGENTS`; add `MacH, antigravity, hyperagent` to the embedded ACTIVITY header agent list
- [x] Add `render_plan_board()`: awk frontmatter→TSV from `Plan/tasks/*.md`; emit `Plan/board.md` (groups per plan.md) and NOW.md "## Plan Board" section (counts, doing/claimed lines, top 5 todos) placed directly after "## Active Work"
- [x] Verify: sandbox run at `/home/ubuntu/agent-memory` → `bash -n` clean; NOW.md contains Plan Board with 6 todos; board.md groups correct; all pre-existing NOW.md sections still render (diff vs before)
- [x] Commit: `plan: board renderer + NOW Plan Board section (T3)`

## Task 4: Auto-close stale sessions
**Files:** Modify `build-context.sh`
- [x] Add `auto_close_stale_sessions()` after stale detection: for each STALEFILE row append `<now> | <agent> | session-end | <project> | (auto-closed by janitor: open since <ts>, no session-end >48h)` below the ACTIVITY marker; set reparse flag; re-parse once (single-pass guard)
- [x] Verify: sandbox fixture with a 3-day-old open session → run → synthetic session-end present, Stale section empty on second run, no duplicate auto-closes
- [x] Commit: `plan: janitor auto-closes stale sessions >48h (T4)`

## Task 5: Channel marker, restructure + archiver
**Files:** Modify `AGENT-CHANNEL.md`; Modify `build-context.sh`
- [x] One-time restructure: move "# Agent Channel" doc header to top, add `<!-- MESSAGES BELOW THIS LINE -->` marker, add S3 roles paragraph (inbox=dispatch · channel=broadcast · board=work · project page=resume), messages newest-first below marker — zero message bodies altered
- [x] Add `archive_channel()`: move blocks (`^### To\[` … next anchor) with `**Status:** DONE` and header date ≤ now−48h to `channel-archive/YYYY-MM.md` (append verbatim)
- [x] Verify: sandbox dry-run diff shows only DONE>48h blocks moved (count matches manual count), PENDING + prose untouched; archived bytes identical
- [x] Commit: `plan: channel marker + DONE>48h archiver (T5)`

## Task 6: Inbox aging + board/resume lints
**Files:** Modify `build-context.sh`
- [x] Pending Inboxes: suffix `⚠ pending >7d` when newest PENDING dispatch timestamp older than 7d
- [x] Lints into NOW.md "## Plan Board": duplicate ids · missing frontmatter fields · claimed-by-agent-silent-7d · open-task project lacking `## Status now` in `Project/<slug>.md`
- [x] Verify: four sandbox fixtures each trigger exactly one lint line; clean vault triggers zero
- [x] Commit: `plan: inbox aging + board/resume lints (T6)`

## Task 7: Full janitor regression run
**Files:** none (verification gate)
- [x] Sandbox replica refreshed from main → full `build-context.sh` run → NOW.md, board.md, CONTEXT.md regenerate; every pre-existing section present; janitor actions idempotent on second run (no new changes)
- [x] Paste evidence (run output + section list) here
- [x] Commit: `plan: janitor regression evidence (T7)` (tasks.md tick only)

## Task 8: Resume points + purpose rewrite
**Files:** Modify `Project/vault-purpose.md`, `Project/hermes-ecosystem.md`, `Project/wiki-obsidian.md` (+ any project named by T-0001..6), `AGENT-SETUP.md`
- [x] vault-purpose.md: dual-purpose rewrite (fleet coordination + Dwayne's second brain; resume points; raw/→wiki/ knowledge intake; pointer to personal trading vault) — keep frontmatter format
- [x] Add `## Status now / ## Next steps / ## Where things live / ## Open tasks` to each seeded project's page, populated from current state (no placeholders)
- [x] AGENT-SETUP.md: fix agent-name drift (add MacH, antigravity, hyperagent to list + table)
- [x] Verify: resume lint (T6) reports zero for seeded projects; pages render in Obsidian-safe markdown
- [x] Commit: `plan: resume points + dual-purpose vault statement (T8)`

## Task 9: Rules — ritual, standing orders, routing, cloud path
**Files:** Modify `AGENT-BOOTSTRAP.md`, `STANDING-ORDERS.md`, `CLAUDE.md`, `AGENT-SETUP.md`
- [x] BOOTSTRAP session ritual: add board-check/claim + resume-read (start), resume-update + write-back (end), research-once line ("check the vault before you research; write back what you learn")
- [x] STANDING-ORDERS: add short "Plan Board & Resume Points" section linking Plan/README.md (no rule duplication)
- [x] CLAUDE.md knowledge-routing table: `| Fleet plan board | Plan/ |`
- [x] AGENT-SETUP: "For cloud / API-only agents" section (fetch-fresh, atomic Git Data commits, no force-push, janitor covers NOW regen)
- [x] Verify: each rule appears in exactly one file (grep across rule files); diffs minimal
- [x] Commit: `plan: rules — board ritual, research-once, cloud-agent path (T9)`

## Task 10: ADR 0004 + decision log
**Files:** Create `sdd/decisions/0004-fleet-plan-board.md`; Modify `DECISIONS.md`
- [x] ADR per template: context (audit findings + Dwayne's second-brain/central-place amendments), decision (board, resume points, janitor, research-once), consequences, alternatives (Symphony-now, single PLAN.md — rejected)
- [x] DECISIONS.md chronological entry linking the ADR
- [x] Verify: ADR follows template sections; DECISIONS entry format matches house style
- [x] Commit: `plan: ADR 0004 fleet plan board (T10)`

## Task 11: Launch — announce + dispatch
**Files:** Modify `AGENT-CHANNEL.md`, `Agent Inbox/hermes-vps.md`, `Agent Inbox/hermes-mac.md`, `ACTIVITY.md`
- [x] Channel To[@ALL]: board is live, what changed, the two-file resume path, research-once rule, link Plan/README.md
- [x] Inbox dispatches: MacH → T-0001/T-0002; hermes → T-0003..T-0006 (PENDING, referencing task ids)
- [x] ACTIVITY: `handoff` events per dispatch + `milestone` board live
- [x] Verify: NOW.md next regen shows handoffs + pending dispatches with task ids
- [x] Commit: `plan: launch — board live, seeds dispatched (T11)`

## Task 12: Wrap + evidence
**Files:** Modify this tasks.md, `ACTIVITY.md`, `Agents/hyperagent.md`
- [x] All boxes ticked with evidence; spec stays `Approved` (→ `Done` after success criteria 1/2/6 observed in real fleet use, expected within a week)
- [x] ACTIVITY `session-end` with summary; update `Agents/hyperagent.md` Current Work/Handoff Notes
- [x] Commit: `plan: fleet-plan-board implementation complete (T12)`

---

## Evidence — implementation run 2026-06-11 (hyperagent)

- **Commits:** 7e438289 (T1+T2) · a0ffc8d8 (T3-T6) · 9a7ffed3 (T8+T9) · e1bd42fb (T10) · 43e0cdec (T-0007) · +launch commit (T11+T12).
- **Amendments during execution (Dwayne-approved):** raw-inbox backlog flag added to janitor; seeds extended to 8 (T-0007 stamps, T-0008 curator pass); T3-T6 consolidated into one commit (single file, verified as a unit).
- **Replica verification (sandbox at /home/ubuntu/agent-memory):** bash -n clean · auto-close fired on 2 real stale sessions (cursor, kimi) then idempotent (2=2 across reruns) · channel archiver moved 9 DONE>48h blocks to channel-archive/2026-06.md, kept 19, idempotent (19=19) · board rendered 8 tasks with correct priority grouping · fixtures each triggered exactly one lint (missing frontmatter, duplicate id, claimed-by-silent-agent) · resume lints 4 → 0 after T8 pages · raw stamp lint 42 → 0 after T-0007 · all 10 pre-existing NOW.md sections regress clean.
- **Spec status:** stays Approved; mark Done after success criteria 1/2/6 observed in real fleet use (cross-agent task flow, real resume test, first organic claim).
- **Known waits:** T-0002 confirms the Mac launchd job — until then the janitor only runs when an agent (or hyperagent via replica) invokes build-context.sh.
