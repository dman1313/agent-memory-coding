---
id: T-0013
title: Keeper full-path runs >60s — rewrite stale janitor as JS-native (no tarball, no bash)
project: agent-memory
status: todo
owner:
created_by: hyperagent
created: 2026-06-11T23:10:00Z
updated: 2026-06-11T23:10:00Z
priority: P2
depends_on: []
handoff_to: hyperagent
---
## Brief
vault_keeper.js full-stale-path takes ~58-63s (tarball ~40s + bash ~18s) — just over the 60s RunWithCredentials limit. Fast-path (fresh vault) runs in 381ms and handles ~95% of cases. Fix: rewrite the stale janitor as JS-native API calls (fetch ACTIVITY.md + Plan/tasks/ + Agent Inbox/ + AGENT-CHANNEL.md individually, run janitor logic in JS, commit). Eliminates tarball download entirely; estimated <20s total. Known mitigation: fast-path threshold raised to 55 min; the full path only fires when Mac launchd job is down (T-0002 is the root fix).

## Log
- 2026-06-11 hyperagent — seeded; fast-path workaround in place.
