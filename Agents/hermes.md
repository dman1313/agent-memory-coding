---
name: agent-hermes
description: Hermes Agent — VPS-based, Nous Research, agent fleet orchestrator
metadata:
  type: agents
  updated: 2026-06-16
---

# Hermes

**Platform:** VPS (Ubuntu, kernel 6.8.0-124-generic)
**Host:** /home/ubuntu
**Memory:** Git clone at `~/agent-memory/`
**Config:** `~/.hermes/config.yaml` (default profile)
**Gateway:** systemd user service (`hermes-gateway.service`)
**Telegram:** @betaclawv1_bot ("openclaw"), thread 723 (health), thread 725 (wellness)
**Dashboard:** hermesdash.humangood.ai (Natural theme), auth proxy on :9121
**HD1 (3D):** hd1.humangood.ai (Hermes Office 3D), systemd: hermes-office, hermes-office-adapter

## Model Routing

| Tier       | Model              | Provider   |
|------------|--------------------|------------|
| Light      | MiMo v2.5-pro     | Xiaomi     |
| Medium     | DeepSeek v4-flash  | DeepSeek   |
| Heavy      | DeepSeek v4-pro    | DeepSeek   |
| Code       | Coding Officer     | Kimi CLI primary, Claude Code backup |
| GLM 5.1    | coding plan only   | Z.AI       |
| Fallback   | DeepSeek PAYG      | DeepSeek   |

## Skills (300+)

Organized under `~/.hermes/skills/`. Key categories:
- **trading/** — ai-trader, wolf-trading-agent, quant-stock-scanner, alpaca-volume-scanner, commodity-market-intelligence
- **research/** — sherlock, deep-research, academic-pipeline, perplexity-research
- **agents/** — hal, dream, coding-officer, qa-agent, shepherd-agent, special-ops, mrclean
- **devops/** — kanban-orchestrator, ci-cd-and-automation, cloudflare-tunnel-setup
- **creative/** — claude-design, popular-web-designs, excalidraw, baoyu-*, taste-skill (13 sub-skills)
- **productivity/** — google-workspace, notion, obsidian, powerpoint, master-newsletter
- **autonomous-ai-agents/** — claude-code, codex, kimi-cli, opencode, hermes-agent, take-control

## Services Running

| Service | Port | Purpose |
|---------|------|---------|
| 9Router  | 20128 | LLM routing |
| WeKnora  | 8089  | Knowledge base |
| FreeLLMAPI | 3002 | Free LLM API |
| Hermes Office | 3001 | 3D workspace |
| Agent Ready | 8766 | Middleware |
| Caddy | 80/443 | Reverse proxy |

## Cron Jobs (16+ active)

- DREAM nightly reflection (3am)
- Wolf daily scan (8am M-F)
- CFTC COT scanner (Fri 21:45)
- IGCSE Biology pipeline (hourly)
- HAL daily brief (8am Paris)
- Morning/evening Zen reflections
- System health monitor (every 6h)
- Shared memory sync (every 6h)
- GDrive + brain backups
- Dashboard agent memory daily (20:00 UTC)

## Current Capabilities (as of 2026-06-10)

### AI-Trader (ai4trade.ai)
- Agent ID: 7729, portfolio ~$100K paper
- CLI: status, positions, trade, strategy, discussion, feed, rebalance, heartbeat
- Wolf→AI-Trader bridge for auto-publishing signals
- Safety: rate limiting, duplicate detection, circuit breaker, position limits

### Quant / Trading
- Momentum scanner: `~/.hermes/scripts/momentum-scanner.py` (yfinance+Finnhub)
- Options: bull call spreads (debit), bull put spreads (credit) with real bid/ask
- Commodity COT: WTI+Brent positioning >2σ flags
- Quant NN prototype at `~/quant-nn/`

### Study Pipeline
- IGCSE Biology via NotebookLM (nlm CLI)
- Per-concept: study guide, flashcards, slides, video
- AI in Education notebook: 4cf3cf93 (12 sources)
- Study Boy: sherlock-study-boy skill

### Shared Wiki Vault
- Path: `~/agent-memory/` (Git: dman1313/agent-memory-coding)
- This is the shared wiki for the entire agent fleet
- Always read NOW.md at session start, update ACTIVITY.md
- Pull before write, commit+push after changes
- Second Brain (personal): `~/Documents/Obsidian Vault/second-brain/`

### AI Brain
- NotebookLM "H1 AI Brain" (e0da9697)
- Summaries pushed via wrapup skill

## External Systems

- **Google Workspace:** OAuth'd, token at `~/.hermes/google_token.json`
- **X/Twitter:** @humangoodai via xurl (needs $5 top-up)
- **Notion:** HumanGood workspace (curl-based, ntn CLI not installed)
- **Together AI:** image gen provider, MCP server "together-docs"
- **GitHub:** PAT configured, dman1313 org

## Services (9Router, WeKnora, etc.)

- 9Router :20128, WeKnora :8089, FreeLLMAPI :3002, Hermes Office :3001, Agent Ready :8766, Caddy

## Strengths
- Best for: orchestration, scheduling, research, trading, knowledge management
- Has 300+ skills covering most domains
- Cron-based automation (16+ active jobs)
- Multi-platform messaging (Telegram)
- Lead orchestrator (HAL) for the agent fleet

## Recent Resolutions (2026-06-17)
- **Xiaomi provider**: Recovered June 11 — zero HTTP 451 errors. Confirmed clean by DREAM nightly.
- **DREAM cleanup bug (T-0004)**: Fixed — session_search as primary method, running clean since June 12.
- **Wolf scan infrastructure**: Day 3 blind. Twitter xurl broken on all 10 accounts. GNews bug FOUND AND FIXED Jun 17 — parameter was `token` not `apikey` (silent failure since integration). Quota exhausted today, should work tomorrow. Reddit DuckDuckGo backend broken since May.
- **Self-improving-agent**: Learning loop has never fired (all metrics zero since May 13 — 5+ weeks).
- **Dwayne interactions**: Zero user sessions June 16–17 (48-hour quiet window per DREAM).
