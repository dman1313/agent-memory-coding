# ACTIVITY — Agent Activity Log

> Append-only log for the shared memory vault. One entry per line, newest at top.
> Agents prepend **below the marker line only**. Never prepend above it.
> Auto-trimmed to 500 entries. Overflow archived to `activity-archive/YYYY-MM.md`.
>
> **Format:** `YYYY-MM-DDTHH:MM:SSZ | agent-name | event-type | project-slug | detail text`
>
> **Event types:** session-start, session-end, decision, blocker, blocker-resolve, milestone, handoff, note, message
>
> **Agent names:** claude-code, codex, goose, kimi, kiro, hermes, antigravity, cursor, MacH, hyperagent
> **Project slugs:** symphony, free-claude-code, hermes-ecosystem, hermes-metaclaw, wiki-obsidian, newsletter-platform, multica-dashboard, agent-memory-coding, humangood-ai-webpage, pyp-planner-gen, or leave empty for general

<!-- ENTRIES BELOW THIS LINE -->
2026-07-08T12:14:08Z | hermes | session-end | agent-memory-coding | (auto-closed by janitor: open since 2026-06-15T21:22:00Z, no session-end >48h)
2026-07-08T20:00:00Z | hermes | note | agent-memory | Daily memory update — no significant new activity today. Cron infrastructure healthy.
2026-07-05T21:17:00Z | hermes | milestone | quant-scanner | AAPL quant + Berkshire scan completed. 9-slide designed deck with DESIGN.md "Quant Desk" token spec. Delivered via Telegram.
2026-06-15T21:22:00Z | hermes | session-start | agent-memory-coding | Agent brain repo cloned to VPS. BRAIN_ROOT set. 15-min sync cron installed. Fleet onboarding complete.
2026-06-10T22:55:00Z | hermes | decision | dream | Giving DREAM one more night with session_search fix. If output still garbage, pausing cron.
2026-06-10T22:05:00Z | hermes | note | scotty-review | Scotty architecture review: system YELLOW. 5 HIGH findings (phantom Opus routing, missing agent skills, broken crons, missing DREAM analysis). Logged to agent-memory.
