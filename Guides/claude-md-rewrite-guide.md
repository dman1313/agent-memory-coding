# AGENTS.md Rewrite Guide

How the AGENTS.md was audited, compressed, and extended. Use this as a reference for future rewrites or when adapting to a different agent platform.

---

## Compression Method

### What was cut (and why)

| Section removed | Reason |
|---|---|
| Session Startup (5 bullets, 3 conditions) | Hermes system prompt already injects startup context (AGENTS.md, SOUL.md, USER.md, daily memory, MEMORY.md). Redundant. |
| Memory file descriptions + "curated wisdom" prose | System prompt already lists memory files and their purpose. Kept only the security rule (MEMORY.md = main session only) and the "write it down" imperative. |
| Group Chats — when to speak (8 bullets) | System prompt covers "when to respond" / "stay silent (HEARTBEAT_OK)" verbatim. |
| Group Chats — reactions (6 bullets + explanation) | System prompt covers emoji reaction rules. |
| "Avoid the triple-tap" / "Participate, don't dominate" | System prompt covers this. |
| Platform Formatting (Discord/WhatsApp) | System prompt covers formatting rules per platform. |
| "Make It Yours" section | No binding instruction — aspirational filler. |
| "Related" link | No binding instruction. |
| Tools section (voice storytelling, TOOLS.md) | System prompt says "Skills provide your tools. Check SKILL.md." Voice storytelling is a preference, not an agent instruction. |
| Heartbeat vs Cron explanation prose | Kept the decision rule in one line; cut the 12-bullet explanation. |
| "Things to check" expanded list with examples | Compressed to "rotate: email, calendar, mentions, weather." |
| "Proactive work" verbose bullets | Compressed to one line. |
| Memory Maintenance 4-step process | System prompt already covers "Review and update MEMORY.md during heartbeats." Cut the numbered tutorial. |
| Emoji headers (🧠, 📝, 💓, etc.) | Token waste — no semantic value for the LLM. |

### What was kept (binding instructions not in system prompt)

1. **BOOTSTRAP.md handling** — first-run lifecycle unique to this workspace
2. **MEMORY.md security rule** — main-session-only load (group chat leak prevention)
3. **"Write it down" principle** — explicit imperative to persist, not hold in context
4. **heartbeat-state.json** — specific tracking file the system prompt doesn't mention
5. **Reach out / stay quiet thresholds** — concrete time-based rules
6. **Red Lines** — compressed but preserved (trash > rm, ask before destructive)

### What was added

1. **Self-Annealing Skills** — error → patch → log cycle. Prevents recurring mistakes.
2. **Auto Research (Karpathy Loop)** — KPI-driven iterative optimization instead of brainstorming.
3. **Leverage** — when to use plan mode, parallel calls, explore subagents, skills, execute_code.

---

## Before / After Metrics

| Metric | Before | After | Savings |
|---|---|---|---|
| Lines | 218 | 45 | 79% |
| Characters | 7,850 | 2,313 | 71% |
| Words | 1,229 | 335 | 73% |
| Est. tokens (wc -w × 1.3) | ~1,598 | ~435 | **73%** |

Net savings: **~1,163 tokens per session** loaded into context.

---

## Items Removed — Restore Checklist

If any of these become relevant (e.g., system prompt changes, new platform), restore from the original:

- [ ] **Voice storytelling guidance** — if TTS (`sag`) is installed and you want the agent to proactively suggest voice output for stories/summaries
- [ ] **TOOLS.md reference** — if you add camera names, SSH details, or voice preferences that aren't in skills
- [ ] **Heartbeat vs Cron full decision matrix** — if the agent starts choosing wrong (heartbeat for exact timing, cron for batched checks)
- [ ] **"Things to check" full list** — if the agent skips checks (currently compressed to 4 items; original had email/calendar/mentions/weather with descriptions)
- [ ] **Memory maintenance step-by-step** — if the agent doesn't maintain MEMORY.md during heartbeats
- [ ] **Group chat "human rule"** — if the agent starts over-participating in groups (currently covered by system prompt but could drift)
- [ ] **Reaction guidance details** — if the agent uses reactions incorrectly on Discord/Slack

---

## How to Apply This Method to Other Files

1. **Read the full file.** Don't skip sections.
2. **Read the system prompt** (or equivalent runtime context). Identify every concept it already covers.
3. **Diff them.** Anything in both = cut from the file. Anything only in the file = keep.
4. **Convert prose to imperative bullets.** "HAL should do X because Y is important" → "Do X."
5. **Cut emoji headers and explanatory scaffolding.** The LLM doesn't need "🧠" to understand a section about memory.
6. **Add missing behavioral directives.** If the agent should do something and no file says so, add it as a bullet.
7. **Measure before/after.** `wc -w file.md | awk '{print $1 * 1.3}'` for token estimate.
8. **Keep a restore checklist.** Document what was cut so it can be re-added if needed.

---

## Related Skills Used

- `persona-doc-compression` — compression method and bloat pattern identification
- `caveman-compress` — format reference for extreme compression (not used here — this rewrite preserves readability)
