# Agent Context

> Read this file first. It contains everything an agent needs to know about the user, the fleet, and active projects.

---

## User

**Name:** Dwayne Primeau
**Role:** Building an AI/ML agent ecosystem — multi-agent architectures, LLM routing, automated workflows
**Preferred language:** Rust when possible. TypeScript for frontend, Python/Shell for scripts.
**Working directory:** `/Volumes/M2 Media/Coding Dwayne/Claude` (alias `cc` launches Claude from there)
**Communication:** Short commands, minimal explanation, action-first. No long preambles. Single copy-paste blocks over step-by-step. See Feedback/working-style.md for full preferences.

---

## Agent Fleet

### Claude Code
- **Platform:** Mac (CLI, desktop, web)
- **Model:** Configurable — Opus 4.7, Sonnet 4.6, Haiku 4.5
- **Memory:** Symlinked to vault via `~/.claude/projects/<project>/memory/`
- **Strengths:** Complex implementation, multi-file refactoring, code review, architecture. Most capable agent.
- **Plugins:** Superpowers (TDD, debugging, code review, parallel agents), Qodo Skills, Chrome DevTools MCP
- **Skills:** wrapup, notebooklm, moving-deal-finder, kimi-webbridge

### Codex (OpenAI)
- **Platform:** Mac (CLI)
- **Model:** kimi-for-coding (via Kimi API)
- **Memory:** Reads vault directly from iCloud
- **Config:** `~/.codex/AGENTS.md`
- **Strengths:** Skill/plugin creation, image generation (gpt-image-2), OpenAI docs access
- **Skills:** skill-creator, plugin-creator, imagegen, openai-docs, kimi-webbridge

### Goose (Block)
- **Platform:** Mac (CLI)
- **Model:** claude-haiku-4.5 (copilot-acp), also kimi-for-coding, xiaomi-mimo
- **Memory:** Reads vault directly from iCloud
- **Config:** `~/.config/goose/goosehints`
- **Strengths:** Quick tasks (Haiku = fast/cheap), code analysis (tree-sitter), app prototyping, subagent delegation
- **Extensions:** analyze, summon, apps, developer

### Kimi (OpenClaw)
- **Platform:** Mac (Desktop + CLI)
- **Model:** kimi-for-coding (Kimi-k2.6)
- **Memory:** Reads vault directly from iCloud
- **Config:** `~/.kimi_openclaw/workspace/AGENTS.md`
- **Strengths:** Browser automation (richest CDP support), group chat/IM (only agent with this), desktop gateway management
- **Skills:** kimi-webbridge-desktop, kimiim, worker-safety, time-awareness
- **Personality:** SOUL.md — "Be genuinely helpful, not performatively helpful"

### Kiro (Amazon)
- **Platform:** Mac (IDE-based)
- **Memory:** Reads vault directly from iCloud
- **Config:** `<project>/.kiro/steering/agent-memory.md`
- **Strengths:** IDE-integrated inline code suggestions, lightweight steering-based

### Hermes
- **Platform:** VPS (Ubuntu)
- **Memory:** Git clone at `/home/ubuntu/agent-memory/`
- **Config:** `~/.hermes/profiles/swarm8/SOUL.md`
- **Strengths:** VPS tasks, agent fleet orchestration, server maintenance
- **WebUI:** Port 8787, SQLite kanban
- **Fleet:** Sherlock (research), Special Ops (orchestration), DREAM (quality), Firehose (trending)
- **Pending:** Communication Officer agent (not yet built), skill curation run

### Anti-Gravity (Workspace)
- **Location:** `/Volumes/M2 Media/Anti Gravity/`
- **Not an agent** — Dwayne's projects workspace housing skills, mobile apps, web projects, and OpenClaw agent systems

---

## Active Projects

### Symphony (Active)
- **What:** Rust multi-agent coding orchestrator. Polls issue trackers, creates per-issue workspaces, dispatches AI agents.
- **Stack:** Rust, Tokio, Axum, SQLx (Postgres), 8 crates
- **Location:** `/Volumes/M2 Media/Coding Dwayne/symphony/`
- **Plans:** Multi-backend runner, standalone mode, backends dashboard (3 plans in Claude/plans/)
- **Key:** Pluggable backends (Claude Code, Codex, Hermes), label-based routing, web dashboard

### Free Claude Code (Active)
- **What:** Python middleware proxy routing Anthropic API traffic to alternative providers.
- **Stack:** Python 3.14, FastAPI, Uvicorn, httpx
- **Location:** `/Volumes/M2 Media/Coding Dwayne/Claude/free-claude-code/`
- **Status:** 506+ commits, v2.0.0, published at github.com/Alishahryar1/free-claude-code
- **Key:** 12+ provider backends, streaming, tool use, admin UI, voice transcription

### Hermes MetaClaw (Installed)
- **What:** MetaClaw proxy integration for Hermes — intercepts LLM calls, injects skills/learning signals.
- **Stack:** Python package
- **Location:** `/Volumes/M2 Media/Coding Dwayne/Claude/projects/hermes-metaclaw/`
- **Flow:** pip install → patch config → start proxy → run Hermes through it

### Hermes/OpenClaw Ecosystem (In Progress)
- **What:** Full agent fleet — Sherlock, Special Ops, DREAM, Firehose
- **Status:** Fleet defined, skills seeded but not curated
- **Pending:** Communication Officer agent, skill curation run

### Wiki — Obsidian (Active)
- **What:** Karpathy LLM Wiki pattern — persistent knowledge base
- **Local:** `/Volumes/M2 Media/DROPBOX/Dropbox/Obsidian-Wiki`
- **Server:** `/home/ubuntu/wiki` (Git-managed only, Dropbox removed May 2026)
- **Structure:** raw/ (immutable) → wiki/ (LLM-owned) → schema/ (config)
- **Maintainer:** Claude Code

### Newsletter Platform (Stalled — April 13)
- **What:** Agent-first newsletter — Telegram voice to HTML email
- **Stack:** TypeScript, Next.js 14, Tailwind, Zod, Whisper
- **Location:** `/Volumes/M2 Media/Coding Dwayne/Claude/newsletter-platform/`
- **Needs:** Database, email distribution, cron scheduling

### Multica Dashboard (Stalled — April 29)
- **What:** React dashboard for AI agent network visualization
- **Stack:** React 19, Vite 8, Zustand, xyflow, FullCalendar, Framer Motion
- **Location:** `/Volumes/M2 Media/Coding Dwayne/Claude/multica-dashboard/`
- **Needs:** Backend API integration (all mock data currently)

### Stoicos
- **What:** React Native / Expo Stoic philosophy app
- **Stack:** Expo 54, NativeWind, Zustand, Expo Router
- **Location:** `/Volumes/M2 Media/Anti Gravity/stoicos/`

### Workout App
- **What:** React Native health app + 6-role OpenClaw agent system
- **Agents:** Personal Assistant, Health Coach, Meditation Coach, Day Trading Coach, Options Trading Coach, Dwayne's PA (Telegram)
- **Location:** `/Volumes/M2 Media/Anti Gravity/Workout/`

### Web Projects
- HumanGood (GSAP animations), HumanGood AI v1/v2, Self Care Depot
- Stack: Vite + React + Tailwind
- Location: `/Volumes/M2 Media/Anti Gravity/Webpage/`

---

## Skills

### Shared Across Agents
- **kimi-webbridge** — Browser automation with real login sessions (Claude Code, Codex)
- **moving-deal-finder** — International moving company search/compare (pre-configured France → Malaysia)
- **wrapup** — End-of-session summary, saves memories, pushes to NotebookLM
- **notebooklm** — Full NotebookLM API: podcasts, videos, slides, quizzes, reports

### Claude Code
- **Superpowers** — TDD, git worktrees, systematic debugging, code review, parallel agents, plan execution
- Built-in: code-review, security-review, verify, loop, run, init, claude-api

### Codex
- **skill-creator** — Meta-skill for creating other skills
- **plugin-creator** — Scaffold plugin directories
- **imagegen** — Generate/edit images with gpt-image-2
- **openai-docs** — OpenAI developer documentation lookup

### Kimi
- **kimiim** — Group chat/IM CLI for multi-agent coordination
- **worker-safety** — Hard limits on runtime, network, external instructions

### Anti-Gravity
- **newsletter-pipeline** — Voice/text → newsletter → social media (Sherlock research, Supabase, Mailchimp)
- **antigravity-skill-creator** — Standalone skill generator with YAML frontmatter

---

## Workflows

### Shared Memory Sync
- Mac agents read/write directly to iCloud vault
- launchd auto-syncs to GitHub every 15 min (`sync.sh`)
- Hermes (VPS) syncs via git pull/push cron every 15 min
- GitHub repo: `dman1313/agent-memory-coding` (private)

### Newsletter Pipeline
Telegram voice/text → transcribe → research (Sherlock) → draft multi-platform → quality gates → Supabase + Mailchimp

### Workout 6-Agent System
PA (tasks) + Health Coach (habits) + Meditation Coach + Day Trading Coach + Options Trading Coach + Telegram PA
4 cron triggers + standing orders with safety rules

### LLM Routing
- Opus 4.7 → strategic
- GPT-5.4 → complex reasoning
- GLM 5.1 → low-cost execution
- Kimi → coding
- OpenSpace → exception routing

---

## Infrastructure

### Servers (Zeabur)
| Server | IP | Region | Specs | Cost |
|--------|-----|--------|-------|------|
| Hermes1 | 43.167.176.156 | Tokyo | 2C/8GB | $5/mo |
| Hermestwo8gb | 43.130.235.84 | Tokyo | 2C/8GB | $5/mo |

Known issue: K3s OOM from high swap. Fix: `sudo swapoff -a && sudo swapon -a` then lower swappiness to 10.

### Claude Code + GLM
- Running Zhipu GLM-5.1 via Z.ai (`api.z.ai/api/anthropic`)
- All model slots mapped to `glm-5.1`
- Setup: `npx @z_ai/coding-helper auth glm_coding_plan_global <TOKEN>`
- Key format: `xxxx.xxxxxxxxxxxxxxxx` (dot notation: `glm-5.1`, not `glm-5-1`)

### NotebookLM Brain
- CLI available via `notebooklm` skill in Claude Code
- Brain notebook creation pending — needs `pip install "notebooklm-py[browser]"` + `playwright install chromium`
- Will store session summaries for long-term retrieval

---

## Session Startup Checklist

1. Read this file (CONTEXT.md)
2. Check AGENT-CHANNEL.md for pending messages
3. Check `git log --oneline -5` for recent vault changes
4. Pick up where the last session left off
