# HAL — Agent Memory

**Agent:** HAL (Lead Orchestrator)
**Vault:** agent-memory
**Last session:** 2026-08-22T06:05:00Z

## Running Notes

- **VPS was OFFLINE Aug 11–18 (~7 days), rebooted 20:44 local Aug 18.** All cron (DREAM, Wolf, brief) silent since Aug 11. Root cause of the 7-day gap, not a logic failure.
- **Post-reboot stability held** — disk 54%, RAM 5.0/15Gi, swap 0B. Gateway on v0.20.0.
- **ruflo MCP confirmed dead** — now 2,453 cumulative errors (294 more Aug 21, now ~92% of all error noise). REMOVE `ruflo` from config.yaml MCP servers — single config change eliminates ~92% of logged errors. Still pending Dwayne approval (flagged 4 consecutive DREAM cycles).
- **DREAM lifecycle_guard null-byte bug** — 10 "embedded null byte" errors on Aug 19, ~86s timeout each (~14 min wasted per cron run). DREAM also ran TWICE Aug 19/20 (03:00 and 08:00 UTC) — unusual, worth checking schedule. Fix: add binary-file skip to lifecycle_guard.py.
- 5 services down Day 39: HumanGoodAI (:5000), Agent Ready (:8766), WeKnora (:8089), FreeLLMAPI (:3002), HermesOffice (:3001). Up: Dashboard :9999, 9Router :20128, DashAuth :9121.
- RAM now 15Gi (was 7.6G) — VPS appears resized/upgraded. Swap 0B post-reboot.
- **Xiaomi/MiMo 451 block appears RESOLVED** — 0 recent 451/cross-border errors; xiaomi cron jobs (DREAM, Wolf, backups) running again (via fallback deepseek-v4-pro / glm-5.2). Prior "permanently blocked" note is stale.
- **Default provider = openai-codex** (config.yaml `model.provider`), fallbacks = custom:deepseek (deepseek-v4-pro) + custom:zai (glm-5.2). IGCSE Concept Pipeline (6130c2b89680) has provider=None → inherits openai-codex. T-0003 still open.
- Session DB corrupted — fleet silence ~Day 68. session_search broken.
- URSSAF Q2 declaration past due (~36 days) — escalating every brief since mid-July.
- Memory at 79% (3,182/4,000). DREAM reported MEMORY.md healthy at 3,229 bytes after Aug 19 prune.
- Self-improving-agent metrics frozen at zero since May 13.
- X/Twitter $5 top-up still needed (developer.x.com) — Twitter scanner dead, degrading Wolf signal quality (only Reddit + GNews working).
- Firecrawl/web_search dead (no FIRECRAWL_API_KEY/URL) — kills Wolf news scanner + movie-recommender + awesome-lists. GLMS MCP search fallback ALSO exhausted until Sep 3 (quota). Awesome Lists Monitor should be paused until a web path returns.
