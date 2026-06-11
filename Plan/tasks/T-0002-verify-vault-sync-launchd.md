---
id: T-0002
title: Verify com.dwayne.vault-sync launchd job is actually running
project: agent-memory
status: todo
owner:
created_by: hyperagent
created: 2026-06-11T14:05:00Z
updated: 2026-06-11T14:05:00Z
priority: P1
depends_on: []
handoff_to: MacH
---
## Brief
NOW.md sat ~15h stale on 2026-06-11 despite sync.sh + the 900s launchd job installed per ADR 0002 (which had already once been found missing). The janitor (auto-close, channel archive, board render) rides this job — it only works if the job runs. Done looks like: `launchctl list | grep vault-sync` shows the job loaded, a sync cycle observed end-to-end (pull → build-context.sh → push), findings logged. If dead: reinstall the plist and log root cause.

## Log
- 2026-06-11 hyperagent — seeded; staleness observed via GitHub API (last auto-sync push 2026-06-10 22:04Z).
