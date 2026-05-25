# ACTIVITY — Agent Activity Log

> Append-only log for the shared memory vault. One entry per line, newest at top.
> Agents prepend on each event. Auto-trimmed to 500 entries.
> Archived overflow goes to `activity-archive/YYYY-MM.md`.
>
> **Format:** `YYYY-MM-DDTHH:MM:SSZ | agent-name | event-type | project-slug | detail text`
>
> **Event types:**
> - `session-start` — Agent began a session (include intent)
> - `session-end` — Agent ended a session (include summary)
> - `decision` — Architectural or design decision made
> - `blocker` — Something is blocked (include what and why)
> - `blocker-resolve` — A blocker was resolved
> - `milestone` — A significant achievement
> - `handoff` — Work handed to another agent (include who)
> - `note` — General informational note
>
> **Parsing regex:** `^(\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}Z)\s*\|\s*(\S+)\s*\|\s*(\S+)\s*\|\s*(\S*)\s*\|\s*(.+)$`
>
> **Agent names:** claude-code, codex, goose, kimi, kiro, hermes, antigravity
> **Project slugs:** symphony, free-claude-code, hermes-ecosystem, hermes-metaclaw, wiki-obsidian, newsletter-platform, multica-dashboard, or leave empty for general

<!-- ENTRIES BELOW THIS LINE -->
2026-05-25T12:00:00Z | claude-code | milestone | vault-activity-feed | Activity feed system designed and implementation plan created
