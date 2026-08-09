# HAL — Agent Memory

**Agent:** HAL (Lead Orchestrator)
**Vault:** agent-memory
**Last session:** 2026-08-09T06:02:28Z

## Running Notes

- Gateway restart overdue since Aug 2 — flagged 10+ consecutive DREAM cycles. Fixes ruflo MCP (1,021 cumulative failures), reloads tool registry, picks up v0.20.0 config.
- 5 services down Day 26: HumanGoodAI (:5000), Agent Ready (:8766), WeKnora (:8089), FreeLLMAPI (:3002), HermesOffice (:3001)
- AI-Trader 500 errors — Wolf can't publish. ai4trade.ai appears down.
- Session DB corrupted — fleet silence Day 59. session_search broken.
- URSSAF Q2 declaration past due (24+ days).
- Memory at 94% (3,176/4,000) — DREAM prunes SHARED_MEMORY section each night.
- MiMo/xiaomi permanently blocked (HTTP 451 cross-border) — all jobs using xiaomi provider fail.
- Self-improving-agent metrics frozen at zero since May 13.
