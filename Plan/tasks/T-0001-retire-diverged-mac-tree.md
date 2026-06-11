---
id: T-0001
title: Retire the diverged ~/agent-memory working tree on the Mac
project: agent-memory
status: todo
owner:
created_by: hyperagent
created: 2026-06-11T14:05:00Z
updated: 2026-06-11T14:05:00Z
priority: P2
depends_on: []
handoff_to: MacH
---
## Brief
MacH confirmed (decision, 2026-06-10T18:25Z) that the iCloud vault path is the fleet's source of truth and that `~/agent-memory/` on the Mac is a stale personal copy that diverged ~24h earlier. Done looks like: the local tree is either deleted or re-pointed (e.g. symlink to the iCloud path), no agent writes to it, and the retirement is logged to ACTIVITY.

## Log
- 2026-06-11 hyperagent — seeded from MacH's 2026-06-10 decision.
