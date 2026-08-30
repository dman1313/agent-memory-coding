# HAL — Agent Memory

**Agent:** HAL (Lead Orchestrator)
**Vault:** agent-memory
**Last session:** 2026-08-30T06:02:00Z

## Running Notes

- **Day 47 (Aug 30).** 13th consecutive zero-user day (Aug 18-30). System GREEN: disk 55%, RAM 4.9/15Gi, swap ~0. 5 services down unchanged (HumanGoodAI, AgentReady, WeKnora, FreeLLMAPI, HermesOffice). DREAM non-silent overnight with 3 NEW signals on top of the 6 standing blockers: (1) mimo latency regression 29→75s, (2) freellmapi crash-loop, (3) Telegram brief outage. DREAM's top-3 quick fixes if Dwayne returns: disable ruflo MCP (247 errs/day), fix SkillOpt (re-clone + pip install -e), disable freellmapi. Wolf skipped today (Sunday); next run Monday pre-market. URSSAF Q2 now ~45d overdue. X $5 top-up still open.

- **Day 46 (Aug 29).** **Wolf "3/3 published" claim (Aug 28) was FALSE.** DREAM's overnight filesystem check found the AI-Trader output dir doesn't exist; I verified directly (`~/.hermes/skills/trading/ai-trader/output/` missing). The Wolf cron wrote "✅ published" in its response but `wolf_to_trader.py` never persisted. Same "report-success-without-persisting" failure mode DREAM caught in its own audit. Publish gap is NOT broken — it's now a silent false-report, worse than a visible skip. Fix: Wolf cron must verify the output dir + files exist before claiming publish. New DREAM item: GDrive backup degrading — OAuth `invalid_grant` (Aug 28) → `embedded null byte` terminal crash (Aug 29), needs investigation beyond re-auth.
- **Day 45 (Aug 28).** No user sessions 11 straight days (Aug 18-28). **Wolf publish gap BROKEN** — Aug 28 scan (11 signals, NVDA 0.487 WATCH on Nvidia–HuggingFace $12.9B catalyst) published 3/3 to AI-Trader (NVDA, MRNA, MSTR); first successful publish in 4 days. ⚠️ Superseded Day 46: this "publish" was a false report, no output files existed. DREAM non-silent overnight and caught its own 2-night audit-file gap (Aug 26-27 claimed "verified" but no file written) — self-improvement loop silently broke, now repaired. ruflo MCP now 3,915 errors. New DREAM item: Google Drive backup OAuth expired (112MB tarball can't upload).
- **Day 44 (Aug 27).** No user sessions 10 straight days (Aug 18-27). DREAM SILENT overnight (no new findings). Wolf scan ran clean (13 signals, NVDA 0.483 WATCH top, rest NEUTRAL) but publish to AI-Trader skipped 3rd consecutive day — cron response hollow, never runs wolf_to_trader.py. Fix (force publish step in cron prompt) still pending Dwayne go-ahead.
- **Day 43 (Aug 26).** No user sessions 9 straight days (Aug 18-26). DREAM switching to one-liner status reports to stop burning tokens on unchanged infra issues.
- **Wolf publish gap — 2nd consecutive day.** Aug 26 scan ran fresh (NVDA 0.477 WATCH, MRNA 0.363, GOOGL 0.217, U 0.149, PLTR 0.135, RDDT 0.067) but the cron stopped at JSON validation again and never ran `wolf_to_trader.py`. AI-Trader output dir empty. The scan works; the publish step is silently skipped. Fix: force publish step in cron prompt or run wolf_to_trader.py directly after scan.
- **Day 42 (Aug 25).** No user sessions 8 straight days (Aug 18-25) — longest streak in audit history. Dwayne has not acknowledged any brief or applied any pending fix.
- **Wolf cron producing hollow responses.** Aug 25 scan ran (15 signals, NVDA 0.477 WATCH top, rest NEUTRAL) but the cron's final response was a one-liner ("already verified in previous turn") — no signal summary, no AI-Trader publish confirmation. AI-Trader output dir empty. Signal pipeline degrading; needs a check on the wolf_to_trader.py publish step.
- 5 services down Day 42 unchanged (HumanGoodAI :5000, Agent Ready :8766, WeKnora :8089, FreeLLMAPI :3002, HermesOffice :3001). Up: Dashboard :9999, 9Router :20128, DashAuth :9121.

- **VPS was OFFLINE Aug 11–18 (~7 days), rebooted 20:44 local Aug 18.** All cron (DREAM, Wolf, brief) silent since Aug 11. Root cause of the 7-day gap, not a logic failure.
- **Post-reboot stability held** — disk 54%, RAM 5.0/15Gi, swap 0B. Gateway on v0.20.0.
- **ruflo MCP confirmed dead** — now 2,700+ cumulative errors (~86% of yesterday's 313). REMOVE `ruflo` from config.yaml MCP servers — single config change eliminates ~86-92% of logged errors. Still pending Dwayne approval (flagged 5 consecutive DREAM cycles).
- **DREAM lifecycle_guard null-byte bug** — 10 "embedded null byte" errors on Aug 19, ~86s timeout each (~14 min wasted per cron run). DREAM also ran TWICE Aug 19/20 (03:00 and 08:00 UTC) — unusual, worth checking schedule. Fix: add binary-file skip to lifecycle_guard.py.
- 5 services down Day 41: HumanGoodAI (:5000), Agent Ready (:8766), WeKnora (:8089), FreeLLMAPI (:3002), HermesOffice (:3001). Up: Dashboard :9999, 9Router :20128, DashAuth :9121.
- **DREAM escalation-fatigue flag (Aug 24):** same 3 infra issues escalated 6 consecutive nights with zero action (ruflo MCP 2,700+ errs, SkillOpt-Sleep broken since Aug 18, freellmapi crash-loop). DREAM: either approve auto-fixes or stop reporting. Proposed policy: auto-apply a fix after 3 consecutive DREAM escalations.
- RAM now 15Gi (was 7.6G) — VPS appears resized/upgraded. Swap 0B post-reboot.
- **Xiaomi/MiMo 451 block appears RESOLVED** — 0 recent 451/cross-border errors; xiaomi cron jobs (DREAM, Wolf, backups) running again (via fallback deepseek-v4-pro / glm-5.2). Prior "permanently blocked" note is stale.
- **Default provider = openai-codex** (config.yaml `model.provider`), fallbacks = custom:deepseek (deepseek-v4-pro) + custom:zai (glm-5.2). IGCSE Concept Pipeline (6130c2b89680) has provider=None → inherits openai-codex. T-0003 still open.
- Session DB corrupted — fleet silence ~Day 68. session_search broken.
- URSSAF Q2 declaration past due (~39 days) — escalating every brief since mid-July.
- Memory at 79% (3,182/4,000). DREAM reported MEMORY.md healthy at 3,229 bytes after Aug 19 prune.
- Self-improving-agent metrics frozen at zero since May 13.
- X/Twitter $5 top-up still needed (developer.x.com) — Twitter scanner dead, degrading Wolf signal quality (only Reddit + GNews working).
- Firecrawl/web_search dead (no FIRECRAWL_API_KEY/URL) — kills Wolf news scanner + movie-recommender + awesome-lists. GLMS MCP search fallback ALSO exhausted until Sep 3 (quota). Awesome Lists Monitor should be paused until a web path returns.
