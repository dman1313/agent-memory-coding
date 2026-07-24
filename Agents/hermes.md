---
name: agent-hermes
description: Hermes Agent — VPS-based, Nous Research, agent fleet orchestrator
metadata:
  type: agents
  updated: 2026-07-21
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

## Recent Resolutions (2026-07-24)

- **Same 4 services DOWN Day 11**: Human Good AI :5000, Agent Ready :8766, WeKnora :8089, FreeLLMAPI :3002. No auto-restart since Jul 17 reboot.
- **Swap clean Day 7**: 780Ki/1.9Gi (0%). Gateway 2.47GB RSS (15.3%).
- **DREAM Jul 24**: Self-improvement loop broken 2 nights (no audit since Jul 21). Telegram topic 725 dead ("Chat not found"). GLMS exhausted until Aug 3.
- **Wolf Jul 24**: 11 signals all NEUTRAL/WATCH. GOOGL 0.477 WATCH (post-earnings), U 0.461 WATCH, META 0.260 NEUTRAL. 3 published to AI-Trader. Twitter dead (CreditsDepleted).
- **Previous briefs GHOST Jul 22 AND Jul 23**: Both 1-2 lines, zero health metrics. Two consecutive days unchecked.
- **Fleet silence Day 42**: No non-HAL agent activity since hyperagent Jun 12.
- **URSSAF Q2 9 days past**: Deadline Jul 15 — no confirmation.
- **108 apt updates pending**. System uptime 7 days.
- **Self-improving-agent**: All zeros Day 71 (since May 13).
- **Provider=None**: 1 job (IGCSE only). Default provider = MiMo v2.5-pro (working).
- **NOW.md**: 26h stale, within tolerance. Plan board 0/7/0.
- **4 stale inboxes**: claude, codex, hermes-mac, hermes-vps all >7d.

## Recent Resolutions (2026-07-21)
- **MiMo cross-border block RESOLVED**: Zero 451 errors. Xiaomi MiMo v2.5-pro working again. IGCSE pipeline (provider=None → MiMo) should function now.
- **Swap clean Day 4**: 524Ki/1.9Gi (0%). Held since Jul 17 reboot. Gateway 2.3GB RSS (14.5%).
- **Same 4 services DOWN Day 8**: Human Good AI :5000, Agent Ready :8766, WeKnora :8089, FreeLLMAPI :3002.
- **DREAM Jul 21**: GLMS offline until Aug 3. GitHub auth expired again. Model routing fixed Jul 18.
- **Wolf Jul 21**: All NEUTRAL (GOOGL 0.299, META 0.225, U 0.200). Twitter 0 tweets. Nothing published.
- **Fleet silence Day 39**: No non-HAL agent activity since hyperagent Jun 12.
- **Provider=None**: 1 job (IGCSE only). Default provider = MiMo v2.5-pro (working).
- **104 apt updates pending**. System uptime 4 days.
- **Self-improving-agent**: All zeros for 69 days (since May 13).
- **NOW.md**: 26h stale, regenerated.
- **Previous brief**: Real (436 lines), not a ghost.

## Model Routing

| Lane | Model / Client | Provider | Use |
|---|---|---|---|
| Startup/default | MiMo v2.5-pro | Xiaomi | All ordinary intake, conversation, research, planning, admin, and first attempts |
| Heavy escalation | GPT-5.6 | OpenAI Codex | Only when MiMo is insufficient, uncertainty remains, or stakes are material |
| Interactive build | Cursor Agent | Cursor CLI | Repository implementation and iterative edit/test/debug cycles |
| Delegated build | GLM 5.2 | Z.AI | Coding subagents, parallel implementation, bounded substantial code work |

Routing rule: **MiMo starts → GPT-5.6 escalates → Cursor / GLM 5.2 build.**

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

## Recent Resolutions (2026-07-17)
- **Swap CLEAN (0B)**: System reboot ~13:11 UTC cleared swap. Gateway 300MB RSS (down from 1.67GB). OOM threat resolved for now. But 4 services didn't auto-restart.
- **Same 4 services DOWN**: Human Good AI :5000, Agent Ready :8766, WeKnora :8089, FreeLLMAPI :3002. Didn't survive reboot — need manual restart.
- **DREAM Jul 17**: Cleanup-before-analysis Day 9. Zen Telegram broken 4 days. Firecrawl unconfigured week 7. MEMORY.md healthy.
- **Wolf Jul 17**: All NEUTRAL (day 5). U 0.200, BRK.B 0.184, AMD 0.159. Published U/NFLX/CRM. NFLX flagged as WSB contrarian bounce play.
- **Fleet silence Day 35**: No non-HAL agent activity since hyperagent Jun 12.
- **114 apt updates pending**. System uptime 54 min (fresh boot).
- **Self-improving-agent**: All zeros for 65 days (since May 13).
- **Previous brief (Jul 16) was real**: 410 lines, full metrics.

## Recent Resolutions (2026-07-16)
- **Swap 99.97% RED**: 704Ki free. Gateway 1.67GB RSS (20.8%). OOM killer imminent — worse than yesterday (90.3%). Dwayne needs to approve swap increase or gateway restart.
- **Same 4 services DOWN**: Human Good AI :5000, Agent Ready :8766, WeKnora :8089, FreeLLMAPI :3002. Dashboard :9999, 9Router :20128, Hermes Office :3001, Dashboard auth :9121 all UP.
- **DREAM Jul 16**: Cleanup-before-analysis Day 8+. Zen Telegram broken 72h+. Web search blind until Aug 3.
- **Wolf Jul 16**: All NEUTRAL. U 0.200, BRK.B 0.187, VIX 0.142. Published U/BRK.B/VIX to AI-Trader. Low-conviction day.
- **Fleet silence Day 34**: No non-HAL agent activity since hyperagent Jun 12.
- **114 apt updates pending**. System uptime 4.5 days.
- **Provider=None**: 3 jobs (CFTC COT, IGCSE, DRAM) → openai-codex (OAuth). Should be OK.
- **Self-improving-agent**: All zeros for 64 days (since May 13).
- **Memory utilisation**: 94% (MEMORY.md).

## Recent Resolutions (2026-07-15)
- **Swap 90.3%**: 1.8G/1.9G (192Mi free). Gateway 1.5GB RSS (19.2%). Above 90% threshold — YELLOW. Not at OOM-killer risk yet but creeping.
- **4 services DOWN**: Human Good AI :5000, Agent Ready :8766, WeKnora :8089, FreeLLMAPI :3002. Dashboard :9999, 9Router :20128, Hermes Office :3001, Dashboard auth :9121 all UP.
- **Web search dead until Aug 3**: GLMS monthly limit exhausted. Firecrawl has no API key. All agents working blind.
- **Zen Telegram broken**: Topic 725 "Chat not found" — morning/evening reflections not delivering (3e370a88f365, 1587f2840b6d).
- **Wolf Jul 15**: All NEUTRAL. U 0.484 (WATCH), CRM 0.220, NFLX 0.176. Published U/CRM/META to AI-Trader. No STRONG BUY. Twitter still dead.
- **URSSAF Q2 deadline**: Today (Jul 15). Flagged.
- **Fleet silence Day 33**: No non-HAL agent activity since hyperagent Jun 12.
- **110 apt updates pending**. System uptime 3 days.
- **Self-improving-agent**: All zeros for 63 days (since May 13). Learning loop never fired.
- **Provider=None**: 3 jobs (CFTC COT, IGCSE, DRAM) → openai-codex (OAuth). Should be OK.
- **NOW.md 26h stale**: build-context.sh regeneration attempted. Plan board: 0/7/0.
- **Memory utilisation**: 94% (MEMORY.md).

## Recent Resolutions (2026-07-09)
- **Swap Day 30**: 1.9G/1.9G (308Ki free). Gateway 2.1GB RSS. WeKnora :8089 DOWN Day 30. No OOM yet but imminent risk.
- **IGCSE pipeline SILENT**: No output since Jul 5. 4 full days. Not failing — stopped running. T-0003 still unclaimed.
- **Wolf scan Jul 9**: All 17 NEUTRAL. wolf_to_trader.py ImportError persists (flagged Jun 27). 3 published via workaround.
- **GLMS web tools dead until Aug 3**: 14 rate-limit errors overnight. DREAM drafted pre-flight gate proposal.
- **Fleet silence Day 27**: No non-HAL activity. Plan board 0/7/0. 4 stale inboxes.
- **Self-improving agent**: All zeros for 57 days (since May 13). Learning loop never fired.
- **79 apt updates pending**. System uptime 27 days.
- **Jul 8 brief was real** (439 lines). Jul 7 was ghost.

## Recent Resolutions (2026-07-05)
- **Swap Day 17**: 1.9G/1.9G (24Ki free — WORSE). OOM killer imminent. Needs sudo swapoff/fallocate — Dwayne approval required. 17 days and counting.
- **MCP zombies slightly down**: 24 context7/firecrawl processes (was 34 yesterday). Still 1.5GB RSS. Resurrection pattern confirmed — they are spawned by MCP launcher despite `enabled: false`. `pkill -f context7-mcp; pkill -f firecrawl-mcp` temporarily frees RAM until launcher respawns them.
- **Wolf publish BROKEN**: `wolf_to_trader.py` ImportError — AITraderClient class name mismatch. Fix needed before Monday pre-market. Wolf cron hallucinated success Jul 3.
- **WeKnora :8089 DOWN Day 22**: Connection refused. No action taken in 22 days.
- **FreeLLMAPI :3002 returning 404**: New finding. Was previously returning 200. Worth investigating.
- **Dashboard :9999 UP Day 3**: Holding at 200.
- **DREAM Jul 5**: Audit chain intact. 48 DeepSeek broken pipes Jul 4 (CloudFront CDN, midnight cron cluster). MEMORY.md healthy at 3,482 bytes. DRAM slides workflow got positive feedback. Recommended research-to-slides skill.
- **Jul 4 HAL cron was GHOST**: 3-line response, no health metrics. System health unchecked that day.
- **70 apt updates pending**. System uptime 23 days.
- **Fleet silence Day 23**: No non-HAL agent activity since hyperagent Jun 12.
- **Plan board**: 0 in motion, 7 todo. No progress in 23 days.

## Recent Resolutions (2026-07-02)
- **Swap Day 14**: 1.9G/1.9G (672Ki free). Zero zombies — Jun 26 cleanup held. Swap never recovered despite ~500MB address space freed. sudo swapoff/fallocate needs Dwayne approval.
- **WeKnora :8089 DOWN Day 19**: Still connection refused. No action taken.
- **Fleet silence Day 20**: No non-HAL agent activity since hyperagent Jun 12.
- **DeepSeek API degraded Day 6**: 26 broken pipes overnight (new high). Now affecting 11 different cron jobs. DREAM flagged this 6 nights in a row with no action. Retries working but burning tokens.
- **IGCSE pipeline still failing**: Provider=None cascade resolved (MINIMAX_API_KEY set), but script-level FileNotFoundError persists. Bootstrap from Jun 26 didn't fix underlying path issue.
- **Wolf scan Jul 2**: All 17 tickers NEUTRAL. SMCI top bullish (+0.50). Published SMCI/U/RDDT to AI-Trader. Twitter dead (CreditsDepleted). Reddit PRAW + GNews flowing.
- **DREAM Jul 2**: Zero user sessions Jul 1. MEMORY.md healthy at 3,475 bytes. Two dead cron jobs flagged for disable: June 30 Countdown + IGCSE Pipeline.
- **NOW.md 5 days stale** (Jun 27). build-context.sh times out.
- **Plan board**: 0 in motion, 7 todo. No progress in 20 days.
- **Self-improving-agent**: All zeros since May 13. Learning loop dead for 50 days.
- **Two dead cron jobs**: June 30 Countdown (target date passed) and IGCSE Pipeline (script missing) — pure noise, recommended disable.
- **62 apt updates pending**. System uptime 20 days (boot Jun 11).

## Recent Resolutions (2026-07-01)
- **Swap Day 12+**: 1.9G/1.9G (2.4Mi free). 13 zombie MCPs still alive from Jun 26 — killed ~11 (context7+firecrawl). sudo swapoff requires approval (not available in cron).
- **WeKnora :8089 DOWN Day 18+**: Still connection refused. No action taken.
- **Fleet silence Day 19**: No non-HAL agent activity since hyperagent Jun 12.
- **DeepSeek API degraded Day 5**: 24 broken pipes overnight. DREAM recommends provider rotation for critical cron jobs.
- **IGCSE pipeline still failing**: Provider=None cascade resolved (MINIMAX_API_KEY set), but script-level errors continue.
- **Wolf scan Jul 1**: All 16 tickers NEUTRAL. SMCI top bullish (+0.50). Published SMCI/TSLA/RDDT to AI-Trader. Twitter dead (CreditsDepleted).
- **DREAM Jul 1**: Zero user sessions Jun 30. MEMORY.md healthy at 2,967 bytes. Recommended reducing health monitor from 6x to 4x/day.
- **NOW.md 4 days stale** (Jun 27). build-context.sh times out.
- **Plan board**: 0 in motion, 7 todo. No progress in 19 days.
- **Self-improving-agent**: All zeros since May 13. Learning loop dead for 49 days.

## Recent Resolutions (2026-06-28)
- **Dashboard :9999 back UP**: Returns 200 after 20 days down (since Jun 8). Blocker cleared from NOW.md.
- **Swap 99.99% Day 7**: 44Ki free. OOM killer risk still present. Gateway 2.1GB RSS, k3s 382MB. Undersized swap file (1.9G) for 7.6G system. Needs 4G swap file or k3s reduction.
- **Jun 27 ghost brief**: HAL cron produced 1-line response — zero health monitoring, zero vault logging. Gap noted.
- **IGCSE pipeline still failing**: DREAM confirms "revived" claim was premature. Script errors (FileNotFoundError) continue despite concept-progress.json bootstrap. 777+ total failures since Jun 15.
- **WeKnora :8089 still DOWN Day 7+**: Connection refused. No one has touched it.
- **Fleet silence Day 16**: No non-HAL agent activity since hyperagent Jun 12.
- **MINIMAX_API_KEY active**: Set by Dwayne Jun 26. 3 provider=None jobs now have a working default provider. But IGCSE failures are script-level, not API-key-level.

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
