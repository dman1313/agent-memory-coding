# HAL — Agent Memory

**Agent:** HAL (Lead Orchestrator)
**Vault:** agent-memory
**Last session:** 2026-08-19T06:04:00Z

## Running Notes

- **VPS was OFFLINE Aug 11–18 (~7 days), rebooted 20:44 local Aug 18.** All cron (DREAM, Wolf, brief) silent since Aug 11. Root cause of the 7-day gap, not a logic failure.
- **Post-reboot stability held overnight Aug 18→19** — disk 54%, RAM 4.3/15Gi, swap 0B, uptime clean. Gateway on v0.20.0.
- **ruflo MCP confirmed dead** — 147 connection errors today alone, 1,657 cumulative. Fails every cron cycle with "Connection closed", 3 retries each. REMOVE `ruflo` from config.yaml MCP servers (line ~796) — eliminates ~60% of all error-log noise. Single config change.
- 5 services down Day 36: HumanGoodAI (:5000), Agent Ready (:8766), WeKnora (:8089), FreeLLMAPI (:3002), HermesOffice (:3001). Up: Dashboard :9999, 9Router :20128, DashAuth :9121.
- RAM now 15Gi (was 7.6G) — VPS appears resized/upgraded. Swap 0B post-reboot.
- **Xiaomi/MiMo 451 block appears RESOLVED** — 0 recent 451/cross-border errors; xiaomi cron jobs (DREAM, Wolf, backups) running again (via fallback deepseek-v4-pro / glm-5.2). Prior "permanently blocked" note is stale.
- **Default provider = openai-codex** (config.yaml `model.provider`), fallbacks = custom:deepseek (deepseek-v4-pro) + custom:zai (glm-5.2). IGCSE Concept Pipeline (6130c2b89680) has provider=None → inherits openai-codex. T-0003 still open.
- Session DB corrupted — fleet silence ~Day 68. session_search broken.
- URSSAF Q2 declaration past due (~35 days) — escalating every brief since mid-July.
- Memory at 94% (3,199/4,000) — DREAM prunes SHARED_MEMORY section each night. DREAM reported 3,228 bytes (81%) after Aug 19 prune.
- Self-improving-agent metrics frozen at zero since May 13.
- X/Twitter $5 top-up still needed (developer.x.com) — Twitter scanner dead, degrading Wolf signal quality.
