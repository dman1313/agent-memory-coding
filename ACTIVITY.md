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
> **Agent names:** claude-code, codex, goose, kimi, kiro, hermes, antigravity, MacH

2026-06-03T09:34:06Z | hermes | session-start | general | Vault synced, reading fleet state for new session
2026-06-02T23:30:00Z | MacH | session-start | agent-memory | Greeting session — pulled vault, read NOW.md + AGENT-CHANNEL.md, responding to pending messages
<!-- ENTRIES BELOW THIS LINE -->
2026-06-05T12:01:19Z | hermes | blocker-resolve | hermes-dashboard | Dashboard port 9999 back up (200) — was down June 3
2026-06-05T12:01:19Z | hermes | blocker | provider-routing | DeepSeek/xiaomi provider blocked — HTTP 451 cross-border isolation errors for 24h+, cron jobs silently failing
2026-06-05T12:01:19Z | hermes | note | wolf-trading-agent | Wolf daily scan ran 08:00 UTC — previous day was all NEUTRAL/noise, Twitter+Reddit scanners degraded
2026-06-05T12:01:19Z | hermes | note | general | DREAM nightly audit ran 03:00 UTC — 3 proposals pending review (mimo rotation, cleanup schedule)
2026-06-05T12:01:19Z | hermes | note | general | Disk recovered to 79% (was 87% June 3) — log rotation working
2026-06-03T14:10:00Z | hermes | blocker | hermes-dashboard | Dashboard port 9999 DOWN — process not listening (detected in daily brief)
2026-06-03T14:10:00Z | hermes | note | general | Disk at 87% and climbing ~1%/day — needs cleanup before 90%
2026-06-03T14:10:00Z | hermes | note | general | Wolf Trading Agent cron scan ran 09:24 UTC — results unclear, no signals published
2026-06-02T22:42:00Z | MacH | session-start | agent-memory | Initial fleet connection — cloned agent-memory vault, read NOW.md/AGENT-CHANNEL.md/MEMORY.md, registered as fleet agent
2026-06-02T19:15:00Z | hermes | milestone | hermes-dashboard | Dashboard exposed at hermesdash.humangood.ai via Cloudflare tunnel + auth proxy (port 9119)
2026-06-02T18:30:00Z | hermes | note | agent-memory | Agent memory vault re-activated — daily NOW.md/ACTIVITY.md maintenance set up
2026-06-02T18:30:00Z | hermes | session-start | general | Dashboard re-started, agent memory daily routine, model routing check

2026-05-31T07:30:00Z | hermes | milestone | second-brain | Wired second-brain vault to Hermes: cloned, set vault path, created sync script, updated agent memory
2026-05-31T07:15:00Z | hermes | milestone | ai-trader | Expanded AI-Trader client: strategy, discussion, feed, rebalance commands + Wolf bridge script. Portfolio value fix (was $49K, now $98K)
2026-05-31T07:00:00Z | hermes | milestone | study-pipeline | IGCSE Biology pipeline v2 rebuilt — query-based study guides, proper validation, short focus strings, flashcard fix
2026-05-31T06:45:00Z | hermes | decision | study-pipeline | Switched from nlm report create to nlm notebook query for focused study guides (reports too generic)
2026-05-31T06:30:00Z | hermes | decision | ai-trader | Bypassed weekend market hours for simulated trades (price=0)
2026-05-31T06:00:00Z | hermes | session-start | general | Session: IGCSE pipeline fix, AI-Trader expansion, second brain setup
2026-05-25T12:45:00Z | claude-code | milestone | vault-activity-feed | Karpathy LLM Wiki plugin patched for GLM 5.1 (Z.AI Anthropic endpoint), installed in vault. All agents notified via AGENT-CHANNEL.
2026-05-25T12:00:00Z | claude-code | milestone | vault-activity-feed | Activity feed system designed and implementation plan created
2026-05-31T08:35:00Z | hermes | milestone | atomicmemory | Installed AtomicMemory: Docker core (DeepSeek LLM + MiniLM embeddings), CLI, Hermes plugin. Semantic memory operational.
