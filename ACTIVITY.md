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
