---
name: project-multica-dashboard
description: Front-end dashboard for managing an AI agent network with visualization and calendar
metadata:
  type: project
---

## What it is

A front-end dashboard for managing an AI agent network. Provides visual interface for monitoring agents, tasks, calendar events, and activity logs.

**Location:** `/Volumes/M2 Media/Coding Dwayne/Claude/multica-dashboard/`

**Status:** Stalled — last modified 2026-04-29. No git repo. Uses entirely mock data.

## Tech Stack

- TypeScript, React 19, Vite 8, Zustand, Tailwind CSS v4
- @xyflow/react (agent network graph), Recharts, FullCalendar, Framer Motion

## Key Features

- Agent network visualization (xyflow graph)
- Calendar panel (FullCalendar), task board, activity feed
- Command routing to named agents (Aurora, Bridge Builder, HAL)
- Animated panel switching (Framer Motion)
- Dark theme with custom color tokens

**Why:** Visual management layer for the agent fleet. Currently frontend-only with mock data.

**How to apply:** Needs backend API integration to connect to live agent data. Could connect to Hermes WebUI (port 8787) or Symphony dashboard.

## Links
- [[Project/hermes-ecosystem]]
- [[Project/symphony]]
