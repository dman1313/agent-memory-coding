# MrClean Audit Report — 2026-06-11

## Scope
Full Hermes system cleanup audit across cron jobs, disk caches, providers, scripts, cron output archive, and config auto-prune settings.

---

## Stage 1 & 2 — Inventory & Validation

### 1. Cron Jobs (14 total, 1 one-shot)

| Job | Schedule | Script | Status | Issues |
|-----|----------|--------|--------|--------|
| DREAM Nightly Reflection | 0 3 * * * (3am daily) | none | ok | Runs at same time as gdrive-backup (both 3am) |
| Sync Shared Memory | 0 */6 * * * (4x daily) | sync_shared_memory.py | ok | — |
| Daily Night Ignore Reminders | 0 23 * * * (11pm daily) | none | ok | Uses xiaomi/mimo-v2-pro (potential foreign provider) |
| Morning Reflection | 0 9 * * * (9am daily) | none | ok | — |
| Evening Reflection | 0 20 * * * (8pm daily) | none | ok | — |
| Wolf Daily Scan | 0 8 * * 1-5 (weekdays 8am) | none | ok | Uses xiaomi/mimo-v2-pro |
| hermes-gdrive-backup | 0 3 * * * (3am daily) | none | ok | Same time as DREAM — potential contention |
| Movie Recommender | 0 12 1,15 * * (twice-monthly) | none | ok | Only 2 runs completed |
| HAL Daily Brief | 0 14 * * * (2pm daily) | none | ok | **delivery error**: Telegram send failed (RuntimeError: interpreter shutdown) |
| hermes-brain-backup | 0 3 * * 0 (weekly Sun 3am) | none | ok | Only 3 runs completed |
| CFTC COT Crude Oil Scanner | 45 21 * * 5 (weekly Fri 9:45pm) | cot-scanner.py | ok | No-agent script, runs fine |
| Consolidated System Health Monitor | 0 */6 * * * (4x daily) | none | ok | Runs agent_health_diagnostic.py inline |
| **IGCSE Biology Concept Pipeline** | **0 * * * * (every hour!)** | **concept-pipeline.sh** | **error** | **RUNNING 353 times. ERROR: concept-progress.json not found. Workdir exists but missing state file.** |
| June 30 Countdown | 0 15 * * * (3pm daily) | none | ok | Temporary — target date June 30, 2026 |
| Second Brain Sync | 0 */3 * * * (8x daily) | sync-second-brain.sh | ok | — |
| agent-memory-daily | 0 20 * * * (8pm daily) | none | ok | — |
| DRAM Exit Reminder | once at 2026-12-01 09:00 | none | pending | One-shot, hasn't fired yet |

#### Key findings:
- **IGCSE Biology Concept Pipeline**: Erroring every hour — 353 runs completed, last status "error" with FileNotFoundError for `concept-progress.json`. The workdir exists but the progress tracking file is missing. This is running 24x/day and failing silently.
- **HAL Daily Brief**: Intermittent Telegram delivery error (`RuntimeError('cannot schedule new futures after interpreter shutdown')`). Job content succeeds, but delivery fails occasionally.
- **DREAM + gdrive-backup overlap**: Both at `0 3 * * *` — likely fine since they use different models/providers, but potential resource contention at 3am.
- **No script path resolution errors**: All 4 script-referencing jobs have valid scripts in `~/.hermes/scripts/`.

### 2. Disk Usage — Caches

| Cache | Size | Safe to Clear? | Notes |
|-------|------|---------------|-------|
| ~/.npm/_npx/ | **1.9 GB** | ✅ YES | NOT cleared by `npm cache clean --force`. Single `9806d7724c607a8d` dir ~1.9G |
| ~/.npm/_cacache/ | **834 MB** | ✅ YES | Cleared by `npm cache clean --force` |
| ~/.npm/_logs/ | 340 KB | ✅ YES | Trivial |
| ~/.cache/pip/ | 0 B | ✅ YES | Already empty |
| ~/.cache/uv/ | **143 MB** | ✅ YES | Archive-v0 = 97M, simple-v21 = 46M |
| ~/.cache/huggingface/ | **1.6 GB** | ✅ YES | Hub models cache, mostly 1.6G |
| ~/.cache/node/ | 22 MB | ✅ YES | Just corepack |
| ~/.cache/typescript/ | 0 B | ✅ YES | Empty |
| ~/.cache/pnpm/ | 0 B | ✅ YES | Empty |
| **Total reclaimable** | **~4.5 GB** | | |

**Disk status**: 79G total, 57G used (75%). 20G free.

### 3. Providers

| Provider | Status | Models | Notes |
|----------|--------|--------|-------|
| deepseek | Active | 4 models (deepseek-chat, deepseek-reasoner, deepseek-v4-flash, deepseek-v4-pro) | Primary provider, heavily used |
| xiaomi | Active | 4 models (mimo-v2-omni, mimo-v2-pro, mimo-v2.5, mimo-v2.5-pro) | Used by 2 cron jobs. **Potential foreign provider concern** |
| custom[0]: perceptron.inc | Active | 3 models (isaac-0.2-2b-preview, isaac-0.2-1b, perceptron-mk1) | Small models via perceptron.inc |
| custom[1]: together.xyz | Active | 6 models (DeepSeek-V4-Pro, GLM-5.1, Kimi-K2.6, Qwen3.6-Plus, Qwen3.7-Max, Llama-4-Maverick) | Together AI via API key |

**No dead providers found** — all listed providers have active model lists. No failing health checks detected without testing endpoints directly.

### 4. Stale Scripts

Scripts in `~/.hermes/scripts/` **not referenced** by any cron job (--script field) or skill SKILL.md:

| Script | Size | Modified | Notes |
|--------|------|----------|-------|
| options-flow-scanner.py | 18 KB | 2026-06-08 | Recently modified — possibly in active development |
| physics-pipeline.sh | 6 KB | 2026-06-01 | Recently modified |
| dropbox_photo_sync.py | 358 B | 2026-04-29 | Very old, tiny |
| dropbox_wiki_sync.py | 344 B | 2026-04-29 | Very old, tiny |
| evening-breath-checkin.py | 4 KB | 2026-05-24 | Moderate age |
| wolf-daily-scan.sh | 2 KB | 2026-05-22 | Superseded by Wolf cron job (uses inline prompt) |

Some of these may be referenced by future cron jobs or ad-hoc usage. The dropbox scripts (Apr 29) look like the clearest candidates for removal.

### 5. Cron Output Archive

- **Total files**: 686
- **Files >7 days old**: 297
- **Total disk**: 4.1 MB
- **Per-job breakdown**: 6 job output directories with old files

The archive is only 4.1M total — cleaning 297 old files would reclaim negligible space but reduce clutter.

### 6. Config Auto-Prune

| Setting | Status | Note |
|---------|--------|------|
| checkpoints.auto_prune | ✅ **Enabled** | retention_days: 7, max_snapshots: 50 |
| sessions.auto_prune | ✅ **Enabled** | retention_days: 90, vacuum_after_prune: true |

Both auto_prune settings are already enabled — no action needed.

---

## Stage 3 — Scoring

| # | Finding | Burden | Noise | Waste | Confusion | Risk | Score |
|---|---------|--------|-------|-------|-----------|------|-------|
| 1 | Concept Pipeline erroring hourly (353 runs, missing progress.json) | HIGH | HIGH | HIGH | LOW | LOW | **9/10** |
| 2 | ~./npm/_npx/ = 1.9GB stale npx cache | LOW | LOW | HIGH | LOW | LOW | **8/10** |
| 3 | ~/.cache/huggingface/ = 1.6GB models cache | LOW | LOW | HIGH | LOW | LOW | **7/10** |
| 4 | ~/.npm/_cacache/ = 834MB npm cache | LOW | LOW | MED | LOW | LOW | **7/10** |
| 5 | HAL Daily Brief delivery error (intermittent) | LOW | MED | LOW | MED | LOW | **5/10** |
| 6 | Stale scripts not referenced by cron/skill (3-6 scripts) | LOW | LOW | LOW | MED | LOW | **4/10** |
| 7 | Concept Pipeline runs hourly (too frequent for batch pipeline) | MED | LOW | MED | LOW | LOW | **4/10** |
| 8 | 297 old cron output files (>7 days, 4.1M total) | LOW | LOW | LOW | LOW | LOW | **2/10** |
| 9 | two 3am cron jobs (DREAM + gdrive-backup) overlap | LOW | LOW | LOW | LOW | LOW | **1/10** |

---

## Stage 4 — Ranked Cleanup Plan

### Quick Wins

| # | Item | Evidence | Action | Expected Gain | Confidence |
|---|------|----------|--------|---------------|------------|
| 1 | **Fix Concept Pipeline error** | `FileNotFoundError: concept-progress.json` — 353 runs, erroring hourly | Create the missing `concept-progress.json` file with default state, OR fix the script to handle missing file gracefully, OR pause the job until the state file is restored | Stops 24x/day silent failures; saves ~24 agent runs/day | HIGH (95%) |
| 2 | **Clear ~/.npm/_npx/** | 1.9GB single stale npx dir (`9806d7724c607a8d`) that `npm cache clean` doesn't touch | `rm -rf ~/.npm/_npx/` | Recovers ~1.9GB disk | HIGH (99%) |
| 3 | **Clear ~/.cache/huggingface/** | 1.6GB model cache, safe to purge | `rm -rf ~/.cache/huggingface/` | Recovers ~1.6GB disk | HIGH (99%) |
| 4 | **Clear npm cache** | 834MB _cacache | `npm cache clean --force --cache ~/.npm` | Recovers ~834MB disk | HIGH (99%) |
| 5 | **Reduce Concept Pipeline frequency** | Runs every hour (`0 * * * *`), only generates ONE concept per run | Change schedule to `0 */3 * * *` (every 3 hours) or `0 */6 * * *` | Saves ~20 runs/day when fixed | MED (80%) |

### Medium Items

| # | Item | Evidence | Action | Expected Gain | Confidence |
|---|------|----------|--------|---------------|------------|
| 6 | **Fix HAL Telegram delivery error** | `RuntimeError('cannot schedule new futures after interpreter shutdown')` | Investigate gateway shutdown timing; possibly restart Telegram gateway service or add retry logic | Reduces noise, ensures briefs delivered | MED (60%) |
| 7 | **Clear stale cron output** | 297 files >7 days old (4.1M total) | `find ~/.hermes/cron/output -type f -mtime +7 -delete` (batched) | Minor disk recovery, cleaner listing | HIGH (99%) |
| 8 | **Remove/archive truly stale scripts** | `dropbox_photo_sync.py`, `dropbox_wiki_sync.py` — last mod Apr 29, no references | Move to `_archived/` or remove | Reduces confusion, ~700 bytes | HIGH (95%) |

### High-Risk (Needs Approval)

| # | Item | Evidence | Action | Expected Gain | Confidence |
|---|------|----------|--------|---------------|------------|
| 9 | **Investigate xiaomi provider dependency** | 2 cron jobs use `mimo-v2-pro` on `xiaomi` provider | Verify xiaomi provider is actually functional (no test results available). If failing, switch to deepseek | Ensures cron reliability | MED (50%) |
| 10 | **Remove unverified stale scripts** | `options-flow-scanner.py`, `physics-pipeline.sh`, `wolf-daily-scan.sh` — script files not referenced by any cron or skill | Verify if these are used ad-hoc or manually before archiving | Reduces directory clutter | LOW (40%) |

---

## Verification Plan

1. After creating `concept-progress.json`: monitor next 3 runs for `last_status: ok`
2. After clearing caches: run `df -h /` to confirm space recovered
3. After fixing HAL delivery: check `last_delivery_error` is null on next run
4. After archiving scripts: verify no cron/skill references were missed

---

## Blocked Items

- **Provider health tests**: Not performed — would need to send test API calls to deepseek, xiaomi, perceptron.inc, and together.xyz endpoints. Recommend `provider-api-health-check` skill for full audit.
- **Concept-progress.json restoration**: Need to understand what the pipeline expects as initial state — requires reading `concept-pipeline.sh` to determine default content.
