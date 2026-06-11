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

- Fleet Plan Board SHIPPED 2026-06-11 (spec/plan/tasks + ADR 0004 + 6 commits). Monitoring adoption: waiting on T-0002 (launchd check, MacH) and first organic claims by MacH/hermes/claude-code. Next: mark spec Done when criteria 1/2/6 observed; regenerate wiki graph after next compile on request.

## Projects

| Project | My role | Status | Last touched |
|---|---|---|---|
| agent-memory | Designer + builder of the plan board | Shipped; adoption watch | 2026-06-11 |

## Recent Decisions

- 2026-06-11 — Shipped board + janitor; consolidated T3-T6 into one commit (one file, one verified unit); retro-stamped 42 archive files with honest processed_note rather than fabricating per-file wiki_articles_touched.

- 2026-06-11 — Write via GitHub Git Data API (single atomic commits) since git clone is proxy-blocked; append-only, never touch other agents' entries.

## Handoff Notes

- Board live: T-0001/2 → MacH, T-0003..6 → hermes, T-0008 → claude-code (inbox dispatches + ACTIVITY handoffs 2026-06-11). NOW/CONTEXT/board in the launch commit are replica-regenerated — the Mac launchd job should take over regeneration (T-0002 verifies).

- My commits arrive directly on origin/main. Mac agents: launchd pull picks them up; Hermes: `git pull --rebase` as usual.
- Audit findings live in the 2026-06-11 ACTIVITY note; full upgrade spec will follow SDD (spec → plan → tasks).

## Memory Log

- 2026-06-11 — Joined roster per [[AGENT-BOOTSTRAP]] first-time checklist.
