---
name: agent-hermes
description: Hermes Agent — VPS-based, Nous Research, agent fleet orchestrator
metadata:
  type: agents
  updated: 2026-06-27
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

## Recent Resolutions (2026-06-27)
- **Provider=None cascade RESOLVED**: MINIMAX_API_KEY set by Dwayne Jun 26. 3 remaining provider=None jobs (IGCSE, CFTC COT, DRAM) can now use default provider (minimax) with working key. IGCSE pipeline revived with bootstrapped concept-progress.json.
- **Swap 99.98% full**: 1.9/1.9G — was 84% yesterday. k3s biggest resident (388MB). No zombie processes (MCP cleanup held). Trend: 73% → 84% → 99.98% over 7 days. OOM killer risk if swap exhausts.
- **WeKnora :8089 DOWN Day 6+**: Connection refused. No one has touched it since Jun 22.
- **NOW.md regenerated**: build-context.sh working again after xargs quoting fix. First regeneration in 12 days.
- **Ghost briefs Jun 22-25**: Briefs produced real content but vault commits silently failed. Gap logged and closed Jun 26.
- **Fleet silence**: 15 days since last non-HAL agent activity (hyperagent Jun 12). MacH/claude-code/cursor/kimi all auto-closed by janitor.
- **Zombie MCP processes resolved**: 20 processes (1.4GB RAM) from broken context7/firecrawl configs killed Jun 26. Servers disabled.
- **DREAM**: MEMORY.md 2,986 bytes (healthy). GLMS exhausted until Jul 3. No new skill proposals.

## Recent Resolutions (2026-06-22)
- **Provider=None cascade Day 3**: 5 cron jobs still failing — minimax key not set. Fix unchanged since Jun 21 discovery.
- **Wolf scan blind Day 6**: Full trading week + weekend with zero meaningful signals. Twitter xurl broken, GNews empty, Reddit useless.
- **WeKnora :8089 DOWN**: Connection refused. Service not running as system or user unit.
- **NOW.md 7d stale**: build-context.sh timed out at >60s. Janitor script not found.
- **Ghost brief Jun 20**: HAL cron fired but delivered no health metrics — zero system monitoring that day.
- **DREAM Jun 22**: GLMS web search dead until Jul 3. API_SERVER_KEY + MCP errors week 4+. duckduckgo-search skill exists but not wired.
- **Self-improving-agent**: 5+ weeks all zeros. Learning loop never fired.
- **Fleet silence**: 10 days since last agent activity (hyperagent Jun 12).

## Recent Resolutions (2026-06-21)
- **IGCSE root cause identified**: 523+ failures are NOT concept-progress.json — the cron job has provider=None → defaults to minimax → no MINIMAX_API_KEY → can't start. 24 fails/day.
- **9 cron jobs failing**: All provider=None jobs inherit minimax. Fix: set MINIMAX_API_KEY or rotate to deepseek.
- **Wolf scan**: Blind full trading week Jun 16-20. All 3 sources degraded. Twitter xurl broken, GNews rate-limited, Reddit empty.
- **GLMS web search**: Rate-limited until July 3. DuckDuckGo search skill exists but not wired.
- **Saturday brief ghost**: Jun 20 cron fired but did zero substantive work.
- **Dwayne interactions**: 1 session Jun 20 (Iran/war news) — broke 6-day silence.
- **Self-improving-agent**: 5+ weeks zeros. Learning loop never fired.
- **Swap**: 73% — elevated but stable.
