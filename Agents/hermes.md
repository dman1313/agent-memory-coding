---
name: agent-hermes
description: Hermes Agent — VPS-based, Nous Research, agent fleet orchestrator
metadata:
  type: agents
  updated: 2026-05-31
---

# Hermes

**Platform:** VPS (Ubuntu, kernel 6.8.0-117-generic)
**Host:** /home/ubuntu
**Memory:** Git clone at `~/agent-memory/`
**Config:** `~/.hermes/config.yaml` (default profile)
**Gateway:** systemd user service (`hermes-gateway.service`)
**Telegram:** @betaclawv1_bot ("openclaw"), thread 723 (health), thread 725 (wellness)

## Model Routing

| Tier       | Model              | Provider |
|------------|--------------------|----------|
| Light      | MiMo v2.5-pro     | Xiaomi   |
| Medium     | DeepSeek v4-flash  | DeepSeek |
| Heavy      | DeepSeek v4-pro    | DeepSeek |
| Code       | Kimi K2.6          | Moonshot |
| GLM 5.1    | coding plan only   | Z.AI     |
| Fallback   | DeepSeek PAYG      | DeepSeek |

## Skills (300+)

Organized under `~/.hermes/skills/`. Key categories:
- **trading/** — ai-trader, wolf-trading-agent, quant-stock-scanner, alpaca-volume-scanner
- **research/** — sherlock, deep-research, academic-pipeline, perplexity-research
- **agents/** — hal, dream, coding-officer, qa-agent, shepherd-agent, special-ops
- **devops/** — kanban-orchestrator, ci-cd-and-automation, cloudflare-tunnel-setup
- **creative/** — claude-design, popular-web-designs, excalidraw, manim-video
- **productivity/** — google-workspace, notion, obsidian, powerpoint

## Services Running

| Service | Port | Purpose |
|---------|------|---------|
| 9Router  | 20128 | LLM routing |
| WeKnora  | 8089  | Knowledge base |
| FreeLLMAPI | 3002 | Free LLM API |
| Hermes Office | 3001 | 3D workspace |
| Agent Ready | 8766 | Middleware |
| Caddy | 80/443 | Reverse proxy |

## Cron Jobs (16 active)

- DREAM nightly reflection (3am)
- Wolf daily scan (8am M-F)
- CFTC COT scanner (Fri 21:45)
- IGCSE Biology pipeline (hourly)
- HAL daily brief (2pm)
- Morning/evening Zen reflections
- System health monitor (every 6h)
- Shared memory sync (every 6h)
- GDrive + brain backups

## Current Capabilities (as of 2026-05-31)

### AI-Trader (ai4trade.ai)
- Agent ID: 7729, portfolio ~$98K
- CLI: status, positions, trade, strategy, discussion, feed, rebalance, heartbeat
- Wolf→AI-Trader bridge for auto-publishing signals
- Safety: rate limiting, duplicate detection, circuit breaker, position limits

### Study Pipeline
- IGCSE Biology via NotebookLM (nlm CLI)
- Per-concept: study guide (query-based), flashcards, slides, video
- Pipeline script: `~/.hermes/scripts/concept-pipeline.sh`
- Skill: sherlock-study-boy

### Second Brain Vault
- Path: `~/Documents/Obsidian Vault/second-brain/`
- Git: dman1313/second-brain
- Structure: wiki/, journal/, crm/, raw/
- Sync: `~/.hermes/scripts/sync-second-brain.sh`

## Shared Memory

- `~/agent-memory/` — shared with Mac agents via Git
- Always read NOW.md at session start
- Update ACTIVITY.md with milestones/decisions
- Commit and push after changes

## Strengths
- Best for: orchestration, scheduling, research, trading, knowledge management
- Has 300+ skills covering most domains
- Cron-based automation (16 active jobs)
- Multi-platform messaging (Telegram, Discord)
