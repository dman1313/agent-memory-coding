---
name: agent-antigravity
description: Anti-Gravity — Dwayne's projects workspace: skills, mobile apps, web sites, OpenClaw agents
metadata:
  type: agents
---

# Anti-Gravity

**Location:** `/Volumes/M2 Media/Anti Gravity/`
**Purpose:** Dwayne's main projects workspace for AI skills, mobile apps, and web projects.

## Skills (`Anti Gravity/Skills/`)

### Active Skills
- **skill-creator** — Meta-skill for creating, testing, A/B testing, and iterating other skills. Full lifecycle: capture intent → write SKILL.md → test prompts → benchmark → eval viewer → iterate.
- **karpathy-guidelines** — Behavioral guidelines from Karpathy's LLM coding observations. Think Before Coding, Simplicity First, Surgical Changes, Goal-Driven Execution.
- **moving-deal-finder** — Search international moving companies, compare prices, draft RFQ emails. Pre-configured for France → Malaysia move.
- **newsletter-pipeline** — Transform Telegram voice/text into newsletter + social media package. Transcribes, researches via Sherlock, drafts for multiple platforms, stores in Supabase, creates Mailchimp campaigns.
- **antigravity-skill-creator** — Standalone system prompt for generating skills with YAML frontmatter, progressive disclosure, folder hierarchy.

### Output Artifacts
- **moving-emails/** — 10 pre-drafted RFQ emails + company comparison + quote tracker

### Placeholders
- **Linkined/** — Empty, LinkedIn-related skill (not started)
- **News Letter** — Empty file (accidental)

## Projects

### Stoicos (`Anti Gravity/stoicos/`)
React Native / Expo mobile app (Stoic philosophy). Expo 54, NativeWind, Zustand, Expo Router. Has morning routine and evening review screens.

### Workout (`Anti Gravity/Workout/`)
React Native workout/health app + **6-role OpenClaw agent system**:

| Agent | Role |
|-------|------|
| Personal Assistant | Executive PA, categorizes tasks, maintains Master_Task_List.md |
| Health Coach | Tracks habits, prompts recovery, logs workouts |
| Meditation Coach | Breathing windows, journaling |
| Day Trading Coach | Pre-market checklists, risk management |
| Options Trading Coach | Maps max loss/breakeven/DTE, defaults to defined-risk |
| Dwayne's PA (Telegram) | Communication proxy, logs tasks, pushes urgent alerts |

Also includes: Firehose skill (Ahrefs API for trend intelligence), cron schedule (4 automated triggers), standing orders (safety rules).

### Webpage (`Anti Gravity/Webpage/`)
4 web projects (all Vite + React + Tailwind):
- **HumanGood** — Main site with GSAP animations, includes Multica platform
- **HumanGood AI v1** — Kimi-generated design
- **HumanGood AI v2** — Static HTML, Netlify/Cloudflare ready
- **Self Care Depot** — Clinical-grade health supplies site

## Skills Other Agents Can Learn From
- **skill-creator** — Any agent can use this methodology to create better skills
- **newsletter-pipeline** — Pipeline pattern (transcribe → research → draft → quality gates → publish) applicable to any content workflow
- **Workout's 6-agent system** — Multi-agent coordination pattern with standing orders, cron triggers, and role separation

## Current Work

- Acknowledged roster checks from Dashboard and marked inbox messages as DONE.
- Cleared the stale session in the activity log.
- Standing by for tasks.

## Projects

| Project | My role | Status | Last touched |
|---|---|---|---|
| Stoicos | Primary | Active | |
| Workout app | Primary | Active | |
| HumanGood website | Primary | Active | |

## Recent Decisions

_(log decisions here as you make them — 5 most recent, newest first)_

## Handoff Notes

_(what the next session or another agent needs to know)_

## Memory Log

_(running notes I want to remember across sessions)_
