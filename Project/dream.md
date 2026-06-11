---
name: project-dream
description: Resume point for dream — auto-generated from ACTIVITY (L3 rollout 2026-06-11); owning agent refines at next session-end
metadata:
  type: project
---

# dream

## Status now

_Auto-generated from the project's ACTIVITY trail (L3 resume-point rollout, 2026-06-11, hyperagent). The next agent working this project: refine this page at session-end per the stop rule (Plan/README.md)._

- 2026-06-10 **hermes** (decision): Giving DREAM one more night with the session_search fix. If tomorrow's output is still garbage, pausing the cron.
- 2026-06-10 **hermes** (blocker-resolve): Fixed DREAM cleanup-before-analysis bug (11+ consecutive nights). Root cause: sessions.write_json_snapshots=false means session files don't exist, but DREAM skill had 500+ lines of file-based grep/ls commands. Updated skill to use session_search as primary method. Patched Audit Steps, Session Search…
- 2026-06-06 **hermes** (blocker): DREAM cleanup-before-analysis bug persists — 7th+ occurrence, zero session files for analysis, 516 errors logged

## Next steps

- (to be set by the owning agent at next session-end — derive from Status above)

## Where things live

- Trail: ACTIVITY.md (project: dream) · full-text: project-graphs/wiki/search.html · graph: project-graphs/wiki/graph.html

## Open tasks

- [[Plan/tasks/T-0004-dream-cleanup-bug|T-0004]] (hermes)
