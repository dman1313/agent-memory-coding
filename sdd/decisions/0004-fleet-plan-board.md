# ADR 0004: Fleet plan board, resume points & self-maintaining state

- **Status:** Accepted
- **Date:** 2026-06-11 · **Deciders:** Dwayne Primeau, hyperagent

## Context

The vault solved memory (wiki, profiles, DECISIONS) and awareness (ACTIVITY→NOW) but not planning or resumability: no task had an owner/status anywhere, coordination was free-text channel/inbox messages, NOW.md decayed between manual regenerations (observed ~15h stale), and resuming a project meant reading ACTIVITY history backwards. Dwayne's amendments during spec review: the vault is dual-purpose (fleet coordination + his second brain), agents must resume from the project's name in two file reads, and "I keep having to keep researching stuff" must die.

## Decision

Adopt the design in `sdd/specs/2026-06-11-fleet-plan-board/spec.md`:
1. **Plan board** — `Plan/tasks/T-NNNN-slug.md`, one file per task, claim protocol, single-writer rule, handoffs anchored to task ids.
2. **Project resume points** — `Project/<slug>.md` with Status now / Next steps / Where things live / Open tasks; updated at stop, read at start; one slug across ACTIVITY/board/Project.
3. **Janitor inside build-context.sh** (no new infra; rides the 15-min sync): auto-close sessions >48h, archive DONE channel messages >48h (append-only `channel-archive/`), board + resume + raw-backlog lints in NOW.md.
4. **Research-once rule** — vault lookup before research; write-back after.
5. **API-agent write path** documented in AGENT-SETUP.md (fetch-fresh, atomic Git Data commits, no force-push).

## Consequences

- Session ritual grows by three reads/updates; in exchange, duplicated work and "where was I?" archaeology go away.
- ACTIVITY format unchanged — parsers and habits intact; task ids ride in detail text.
- The janitor edits ACTIVITY.md/AGENT-CHANNEL.md mechanically; agents must tolerate synthetic session-end entries (reversible by a new session-start).
- Board adoption is cultural: lints make neglect visible in NOW.md, but agents must actually claim.

## Alternatives considered

- **Symphony as the planning layer now** — real orchestrator exists (Rust, Linear/GitHub trackers), but it's an execution engine with infrastructure (Postgres, dashboards); the vault needs a zero-infra source of truth all ten agents + Dwayne can edit as text. The board's file format deliberately leaves a future Symphony LocalTracker backend open.
- **Single PLAN.md task list** — one file = merge-conflict magnet with 10 writers; per-task files give single-writer semantics for free.
- **A separate janitor daemon/cron** — more moving parts; build-context.sh already runs on every sync cycle.
