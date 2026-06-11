---
id: T-0007
title: Stamp processed:true on archived raw files (re-digestion landmine)
project: wiki-obsidian
status: done
owner: hyperagent
created_by: hyperagent
created: 2026-06-11T14:05:00Z
updated: 2026-06-11T14:35:00Z
priority: P1
depends_on: []
handoff_to:
---
## Brief
The 2026-06-10 batch compile moved ~90 raw files to raw/processed/ but did not write the `processed: true` frontmatter stamps (verified on 3 samples, 2026-06-11). The compile mode finds work by that stamp across raw/**, so a future run could try to re-digest the whole archive — the >10-files-ask-first rule is the only safety net. Done looks like: every .md under raw/processed/ carries `processed: true` + `processed_at` (+ a retro note), and the janitor's stamp-missing lint reads 0.

## Log
- 2026-06-11 hyperagent — claimed (todo → claimed → doing), logged to ACTIVITY.
- 2026-06-11 hyperagent — done: 42 files stamped (processed: true + processed_at + retro note) via API; janitor stamp-missing count 42 → 0. First task through the full board lifecycle.
- 2026-06-11 hyperagent — seeded from digestion walkthrough verification; will claim and execute via API.
