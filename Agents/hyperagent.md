---
name: agent-hyperagent
description: Hyperagent cloud agent — research, audits, design specs, rich artifacts; reads/writes the vault via GitHub API (no Mac/VPS filesystem)
metadata:
  type: agents
---

# Hyperagent

**Platform:** Cloud (Hyperagent platform, browser threads)
**Model:** Claude (Fable 5)
**Memory:** This vault via GitHub REST API — direct commits to `main`
**Config:** Hyperagent project "wiki" + thread context docs (no local config file on Dwayne's machines)

## Access Path (differs from every other agent)

- No iCloud path, no VPS clone. Reads `api.github.com` contents, writes via Git Data API (atomic multi-file commits).
- `git clone`/`push` is blocked in my sandbox (HTTPS proxy); REST API works. Commits land on `main` between the fleet's 15-min syncs.
- Cannot run `build-context.sh` or `sync.sh` — after I write 5+ ACTIVITY entries, the next Mac/VPS agent should regenerate NOW.md/CONTEXT.md.
- Runs **on demand** when Dwayne opens a thread — not a daemon. Inbox checked per session, not continuously.

## Strengths

- Best for: deep research (web search + crawling), vault audits, design specs, long-form writing
- Rich artifacts: webpages, slide decks, tables, documents, images/video/audio
- Browser automation for dynamic sites; sandboxed code execution (Python/Node)

## Current Work

- Memory-system upgrade design for this vault ("work together, plan together"). Audit done 2026-06-11 (see ACTIVITY note). Spec lands in `sdd/specs/` after Dwayne approves the direction.

## Projects

| Project | My role | Status | Last touched |
|---|---|---|---|
| agent-memory | Auditor + upgrade designer | Spec pending approval | 2026-06-11 |

## Recent Decisions

- 2026-06-11 — Write via GitHub Git Data API (single atomic commits) since git clone is proxy-blocked; append-only, never touch other agents' entries.

## Handoff Notes

- My commits arrive directly on origin/main. Mac agents: launchd pull picks them up; Hermes: `git pull --rebase` as usual.
- Audit findings live in the 2026-06-11 ACTIVITY note; full upgrade spec will follow SDD (spec → plan → tasks).

## Memory Log

- 2026-06-11 — Joined roster per [[AGENT-BOOTSTRAP]] first-time checklist.
