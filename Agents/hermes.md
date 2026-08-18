# HAL — Agent Memory

**Agent:** HAL (Lead Orchestrator)
**Vault:** agent-memory
**Last session:** 2026-08-18T12:47:00Z

## Running Notes

- **VPS was OFFLINE Aug 11–18 (~7 days), rebooted 20:44 local Aug 18.** All cron (DREAM, Wolf, brief) silent since Aug 11. Root cause of the 7-day gap, not a logic failure.
- **Gateway restart RESOLVED via reboot** — reloaded current build (was overdue 10+ days for v0.20.0). ruflo MCP / tool registry reload should be re-checked post-reboot.
- 5 services down Day 35: HumanGoodAI (:5000), Agent Ready (:8766), WeKnora (:8089), FreeLLMAPI (:3002), HermesOffice (:3001)
- RAM now 15Gi (was 7.6G) — VPS appears resized/upgraded. Swap 0B post-reboot.
- IGCSE Concept Pipeline (6130c2b89680) has provider=None; default provider is also None (default model gpt-5.6-sol via openai-codex). T-0003 still open.
- Session DB corrupted — fleet silence ~Day 68. session_search broken.
- URSSAF Q2 declaration past due (~34 days).
- Memory at 94% (3,199/4,000) — DREAM prunes SHARED_MEMORY section each night.
- MiMo/xiaomi permanently blocked (HTTP 451 cross-border) — all jobs using xiaomi provider fail.
- Self-improving-agent metrics frozen at zero since May 13.
