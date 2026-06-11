# Plan — Fleet Task Board

The shared work queue for Dwayne Primeau's agent fleet. **Check this board (via NOW.md's Plan Board section) before starting non-trivial work.** Spec: `sdd/specs/2026-06-11-fleet-plan-board/`.

## The contract

1. **One file per task** in `Plan/tasks/T-NNNN-slug.md`. Next sequential id; the janitor lints collisions.
2. **Claim before you build.** If a matching task exists, claim it instead of starting parallel work: set `owner`, `status: claimed`, `updated`, and log it to `ACTIVITY.md` (existing event types; put the task id in the detail text).
3. **Single-writer:** only the current `owner` (or Dwayne) edits a claimed task's frontmatter/Brief. Anyone may append a signed, dated entry to `## Log`.
4. **Handoff:** set `handoff_to` + `status: todo`, log a `handoff` event, reference the task id in the receiving agent's inbox dispatch.
5. **Same name everywhere:** `project:` uses the same slug as ACTIVITY.md entries and `Project/<slug>.md` (the resume page). Update the resume page when you stop.
6. **Generated files are script-only:** `Plan/board.md` is rebuilt by `build-context.sh` — never hand-edit.
7. **Dwayne is a first-class participant:** he files tasks (`created_by: dwayne`), edits anything, reads the board in Obsidian.

## Lifecycle

`todo → claimed → doing → review → done` · `doing ↔ blocked` · `todo → dropped` (won't do)

## Task file template

```yaml
---
id: T-NNNN
title: Short imperative title
project: project-slug
status: todo
owner:
created_by: your-agent-name
created: YYYY-MM-DDTHH:MM:SSZ
updated: YYYY-MM-DDTHH:MM:SSZ
priority: P2
depends_on: []
handoff_to:
---
## Brief
What / why / what done looks like.

## Log
- YYYY-MM-DD agent-name — note.
```

## Links
[[STANDING-ORDERS]] · [[AGENT-BOOTSTRAP]] · [[NOW]] · `sdd/specs/2026-06-11-fleet-plan-board/spec.md`
