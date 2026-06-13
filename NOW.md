# NOW — Current State

_Generated: 2026-06-13T00:08:53Z_

## Active Work
_(none)_

## Plan Board
_0 in motion · 7 todo · 0 blocked · 6 done — full board: Plan/board.md · contract: Plan/README.md_
- todo P1 **T-0002** — Verify com.dwayne.vault-sync launchd job is actually running (→ MacH)
- todo P1 **T-0003** — Fix IGCSE Biology concept pipeline (missing concept-progress.json, 353 failed runs) (→ hermes)
- todo P2 **T-0001** — Retire the diverged ~/agent-memory working tree on the Mac (→ MacH)
- todo P2 **T-0008** — Curator pass — 8 orphan sources, 5 dead template links, backlink hygiene (→ claude-code)
- todo P2 **T-0013** — Keeper full-path runs >60s — rewrite stale janitor as JS-native (no tarball, no bash) (→ hyperagent)

## Stale Open Sessions (>48h, no session-end)
_(none)_

## Session Hygiene (7d)
_Unpaired sessions get auto-closed and named here — log your session-end. [L2, vault-fitness]_
- **MacH**: 4 start(s) / 1 end(s)
- **claude-code**: 5 start(s) / 4 end(s) · 1 auto-closed by janitor
- **hermes**: 4 start(s) / 1 end(s) · 1 auto-closed by janitor

## Pending Inboxes
- **claude**: Roster check claude: inbox is live.
- **codex**: Roster check codex: inbox is live. ⚠ pending >7d
- **hermes-mac**: Roster check: please acknowledge that hermes-mac inbox is live.
- **hermes-vps**: Roster check hermes-vps: inbox is live.

## Dashboard Messages (48h)
_(none)_

## Blockers
- **hermes · provider-routing**: DeepSeek/xiaomi provider blocked — HTTP 451 cross-border isolation errors for 24h+, cron jobs silently failing _(2026-06-05T12:01:19Z)_

## Recent Activity (48h)
- 2026-06-12T22:05:31Z | **hermes** · agent-memory · session-end | (auto-closed by janitor: open since 2026-06-10T21:45:00Z, no session-end >48h)
- 2026-06-12T17:02:43Z | **claude-code** · claude-md-rewrite · session-end | (auto-closed by janitor: open since 2026-06-10T17:00:00Z, no session-end >48h)
- 2026-06-12T07:58:00Z | **hyperagent** · agent-memory · note | Closed T-0004 on the board (hermes resolved DREAM bug at 06:00Z, logged milestone + blocker-resolve to ACTIVITY, said board updated in session-end but did not edit the task card — hyperagent closing from ACTIVITY evidence per vault custodian role).
- 2026-06-11T23:10:00Z | **hyperagent** · agent-memory · note | vault_keeper.js fast-path deployed: fresh vault (age<55min) exits in 381ms via single NOW.md API call; stale path uses KEEPER_SKIP_CONTEXT=1 bash replica but still ~58-63s. T-0013 filed for JS-native rewrite. Fast path handles 95% of cases; stale path fallback via session token works when credential timeout hits.
- 2026-06-11T22:25:00Z | **hyperagent** · agent-memory · milestone | T-0012 done (fitness iteration 4, L4): claim nudges live in vault_keeper.js — P1 unclaimed >48h gets one rate-limited inbox reminder (max 2, then escalate to Dwayne). Fixture-verified. Four levers shipped today: search, session hygiene, resume coverage, claim nudges. Trend: Reference/vault-fitness.md.
- 2026-06-11T21:55:00Z | **hyperagent** · agent-memory · milestone | T-0011 done (fitness iteration 3, L3): resume coverage 2/14 -> 14/14. Definition fixed (real project = >=3 entries/14d; 18 sprawl slugs tracked); 11 resume pages auto-generated from each
- 2026-06-11T21:20:00Z | **hyperagent** · agent-memory · milestone | T-0010 done (fitness iteration 2, lever L2): NOW.md gains Session Hygiene (7d) naming agents with unpaired sessions / janitor auto-closes; AGENT-BOOTSTRAP rules updated. Baseline 50% pairing -> target 90%; weekly trend in Reference/vault-fitness.md. Next lever: L3. Replica-verified, all NOW sections regress clean.
- 2026-06-11T20:46:00Z | **hyperagent** · wiki-obsidian · milestone | T-0009 done: vault search shipped — project-graphs/wiki/search.html, 100 docs indexed (wiki 71 + tasks 9 + projects 13 + decisions 7), self-contained w/ ranked excerpts, paths, type filters. Fitness-loop iteration 1 complete; next lever L2 (session-end compliance). Trend: Reference/vault-fitness.md.
- 2026-06-11T20:40:00Z | **hyperagent** · wiki-obsidian · note | Claimed T-0009 (todo -> claimed -> doing) per Plan/README.md; Dwayne go-ahead in Vault Keeper thread.
- 2026-06-11T20:24:00Z | **hyperagent** · wiki-obsidian · note | Committed Guides/ingestion-directions.md (paste-ready curator ingestion block per schema/AGENTS.md + curate-modes.md, requested by Dwayne) and indexed the Guides/ folder in MEMORY.md (was unindexed — 4 guides added).
- 2026-06-11T19:18:00Z | **hyperagent** · agent-memory · session-end | Done: Vault Fitness Loop launched (spec Approved per Dwayne directive): KPI instrument scripts/vault-keeper/vault_fitness.js, baseline + iteration log at Reference/vault-fitness.md, lever backlog L1-L7, T-0009 seeded (search page, iteration 1). Keeper runs the loop weekly.
- 2026-06-11T19:16:00Z | **hyperagent** · agent-memory · milestone | Fitness baseline: 71 wiki pages, 7.7 links/page, resume coverage 4/32 (slug sprawl — L3), session ritual 22 starts/11 ends in 7d (50% — L2), board adoption 0 non-keeper claims, raw+stamps clean, NOW 51m. Full table: Reference/vault-fitness.md.

## Recent Decisions (7d)
- 2026-06-11T13:24:00Z | **hyperagent** · agent-memory | Spec amendment 2 per Dwayne: identity-first resume flow (I'm MacH — what was I working on? Read the content, start from there; two file reads: Agents/{name}.md -> Project/<slug>.md) + research-once rule M8 (check vault before researching: resume page -> wiki/index -> Reference/ -> DECISIONS; write findings back; ACTIVITY note names where). The vault is the central place for everyone. Spec updated in place (M2/M7/M8, criteria 8).
- 2026-06-11T13:06:00Z | **hyperagent** · agent-memory | Spec approved by Dwayne w/ amendment: this vault is dual-purpose — fleet coordination layer AND Dwaynes second brain. Fleet collects information for/with Dwayne here, and always writes state back keyed by project name: every active project keeps a resume point at Project/<slug>.md (Status now / Next steps / Where things live / Open tasks), updated when an agent stops, read first when an agent resumes. Corrects nuance of my 2026-06-11 audit note re: vault-purpose.md — it wasnt wrong, it was half the story.
- 2026-06-10T22:55:00Z | **hermes** · dream | Giving DREAM one more night with the session_search fix. If
- 2026-06-10T21:50:00Z | **hermes** · agent-memory | Added Shared Wiki Vault protocol (section 22b) to SOUL.md — vault is now mandatory at every session start/end. No more ghost sessions.
- 2026-06-10T18:25:00Z | **MacH** · agent-memory | Confirmed the iCloud vault path is the source of truth for the fleet (launchd sync, all other Mac agents, Hermes pull target). The local ~/agent-memory/ working tree is a stale personal copy that diverged ~24h ago. Will write to iCloud going forward and flag the divergence to Dwayne.
- 2026-06-10T05:34:27Z | **claude-code** · wiki-obsidian | Adopted 4 research recommendations (ADR 0002): multi-agent write contract, schema-alignment at ingest, pre-write self-lint, page lifecycle states. Hybrid search deferred to ~300 pages. Installed com.dwayne.vault-sync launchd job (15 min).
- 2026-06-09T22:05:00Z | **claude-code** · classroom-mirror | Contract signed (19 criteria): webcam classroom tool redesigned ethically — Mode 1 consented LIMS-coded child via zones, Mode 2 aggregate-only; no faces, no video stored, no emotion inference, local-only Mac. First real run of agent-ready-coding-loop v2.2

## Recent Milestones (7d)
- 2026-06-11T22:25:00Z | **hyperagent** · agent-memory | T-0012 done (fitness iteration 4, L4): claim nudges live in vault_keeper.js — P1 unclaimed >48h gets one rate-limited inbox reminder (max 2, then escalate to Dwayne). Fixture-verified. Four levers shipped today: search, session hygiene, resume coverage, claim nudges. Trend: Reference/vault-fitness.md.
- 2026-06-11T21:55:00Z | **hyperagent** · agent-memory | T-0011 done (fitness iteration 3, L3): resume coverage 2/14 -> 14/14. Definition fixed (real project = >=3 entries/14d; 18 sprawl slugs tracked); 11 resume pages auto-generated from each
- 2026-06-11T21:20:00Z | **hyperagent** · agent-memory | T-0010 done (fitness iteration 2, lever L2): NOW.md gains Session Hygiene (7d) naming agents with unpaired sessions / janitor auto-closes; AGENT-BOOTSTRAP rules updated. Baseline 50% pairing -> target 90%; weekly trend in Reference/vault-fitness.md. Next lever: L3. Replica-verified, all NOW sections regress clean.
- 2026-06-11T20:46:00Z | **hyperagent** · wiki-obsidian | T-0009 done: vault search shipped — project-graphs/wiki/search.html, 100 docs indexed (wiki 71 + tasks 9 + projects 13 + decisions 7), self-contained w/ ranked excerpts, paths, type filters. Fitness-loop iteration 1 complete; next lever L2 (session-end compliance). Trend: Reference/vault-fitness.md.
- 2026-06-11T19:16:00Z | **hyperagent** · agent-memory | Fitness baseline: 71 wiki pages, 7.7 links/page, resume coverage 4/32 (slug sprawl — L3), session ritual 22 starts/11 ends in 7d (50% — L2), board adoption 0 non-keeper claims, raw+stamps clean, NOW 51m. Full table: Reference/vault-fitness.md.
- 2026-06-11T14:44:00Z | **hyperagent** · agent-memory | BOARD LIVE: Plan/README.md is the contract; NOW.md now shows the board. At your next session start: read your Project/<slug>.md resume page, check the board, claim before you build, write back what you learn.
- 2026-06-11T14:36:00Z | **hyperagent** · wiki-obsidian | T-0007 done: retro-stamped 42 archived raw files (processed: true + processed_at + note) — re-digestion landmine closed; janitor stamp-missing count 42 -> 0. First task through the full board lifecycle (todo -> claimed -> doing -> done).
- 2026-06-11T13:26:00Z | **hyperagent** · agent-memory | plan.md + tasks.md written for fleet-plan-board (12 tasks): board renderer + janitor inside build-context.sh (sandbox-verifiable), channel archiver, resume points, rules updates, 6 seeded ops tasks (2 MacH, 4 hermes). Suspicion logged: NOW.md ~15h stale despite sync.sh design — launchd vault-sync job may be down again; seeded as T-0002. Implementation next.
- 2026-06-11T13:08:00Z | **hyperagent** · agent-memory | Fleet Plan Board spec committed (Status: Approved): Plan/ task board w/ claim protocol + single-writer rule, Project/<slug>.md resume points, NOW.md board section, janitor hygiene riding the existing 15-min sync, API-agent write path, seeded launch tasks. Spec: sdd/specs/2026-06-11-fleet-plan-board/spec.md. Next per SDD: plan.md + tasks.md.
- 2026-06-10T19:10:00Z | **MacH** · taste-skill | Installed 6 of 13 taste-skill skills to ~/.hermes/skills/creative/taste-skill/ (default + redesign + soft + minimalist + brutalist + output). Skipped gpt-taste (dup), image-to-code (wrong workflow), imagegen-*/brandkit (we use FAL), stitch (Google only), v1 (default to v2). Noted overlap with frontend-ui-engineering (both will load; taste-skill wins on landing/portfolio tasks) and saas-landing-page-razzle-dazzle (orthogonal). Vault pointer at Guides/taste-skill-availability.md so fleet can see
- 2026-06-10T05:27:03Z | **claude-code** · wiki-obsidian | Restored schema/+sdd/+Reference/+skills to root (accidental move into raw/); reconciled 117 dirty files; found launchd sync job MISSING; queried NotebookLM wiki-research notebook — answers saved to raw/notebooklm-wiki-research-2026-06-10.md (5 CHALLENGEs incl. flat-file mutation danger, hybrid search)
- 2026-06-10T01:35:00Z | **kiro** · agent-memory-coding | Wiki compile complete: Domain 2 (Human Good/AI) fully extracted; Domain 1 (school ~75 transcripts) batched into 3 period sources; Domain 3 (misc) 4 sources. raw/ inbox clean — only operational subdirs remain.

## Last Seen (fleet)
- **hermes**: 2026-06-12T22:05:31Z — session-end: (auto-closed by janitor: open since 2026-06-10T21:45:00Z, no session-end >48h)
- **claude-code**: 2026-06-12T17:02:43Z — session-end: (auto-closed by janitor: open since 2026-06-10T17:00:00Z, no session-end >48h)
- **hyperagent**: 2026-06-12T07:58:00Z — note: Closed T-0004 on the board (hermes resolved DREAM bug at 06:00Z, logged milestone + blocker-resolve to ACTIVITY, said board updated in session-end but did not edit the task card — hyperagent closing from ACTIVITY evidence per vault custodian role).
- **kimi**: 2026-06-11T14:11:28Z — session-end: (auto-closed by janitor: open since 2026-06-04T12:12:18Z, no session-end >48h)
- **cursor**: 2026-06-11T14:11:28Z — session-end: (auto-closed by janitor: open since 2026-06-05T20:30:00Z, no session-end >48h)
- **MacH**: 2026-06-10T19:25:00Z — blocker-resolve: Dwayne challenged my first-pass skip list. Re-evaluated: 6 of 7 skips had weak reasons (called gpt-taste a dup, missed that imagegen-* are prompt direction for any image-gen tool, misread stitch as Stitch-only). Installed all 6 plus updated Guides/taste-skill-availability.md with a correction log. Only taste-skill-v1 stays out (correct reason). Total MacH install: 12 of 13 skills, 6,444 SKILL.md lines. Patched: ~/.hermes/skills/creative/taste-skill/* (6 new subdirs) and the vault pointer.
- **kiro**: 2026-06-10T01:35:00Z — session-end: Done: Full wiki compile — 93 raw files → 20 entities, 13 concepts, 19 sources. Raw inbox cleared; files in processed/meetings/ (85), articles/ (3), docs/ (2). index.md + log.md updated.
- **antigravity**: 2026-06-06T05:23:30Z — session-end: Done: Acknowledged roster checks on Dashboard, cleared pending inbox/messages, closed stale session, and rebuilt vault context.
- **codex**: 2026-06-05T19:10:25Z — milestone: Adjusted result layout so result text and image stay side-by-side on tablet/desktop widths while stacking on mobile.
