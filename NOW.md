# NOW — Current State

_Generated: 2026-06-03T12:03:14Z_

## Active Work
- **MacH** (agent-memory): Initial fleet connection — cloned agent-memory vault, read NOW.md/AGENT-CHANNEL.md/MEMORY.md, registered as fleet agent
- **hermes** (general): Dashboard re-started, agent memory daily routine, model routing check

## Blockers
- **hermes** (hermes-dashboard): Dashboard port 9999 DOWN — process not listening (detected in daily brief)

## Recent Decisions (7d)
- 2026-05-31T06:45:00Z | hermes/study-pipeline | Switched from nlm report create to nlm notebook query for focused study guides (reports too generic)
- 2026-05-31T06:30:00Z | hermes/ai-trader | Bypassed weekend market hours for simulated trades (price=0)

## Recent Milestones (7d)
- 2026-06-02T19:15:00Z | hermes-dashboard | Dashboard exposed at hermesdash.humangood.ai via Cloudflare tunnel + auth proxy (port 9119)
- 2026-05-31T08:35:00Z | atomicmemory | Installed AtomicMemory: Docker core (DeepSeek LLM + MiniLM embeddings), CLI, Hermes plugin. Semantic memory operational.
- 2026-05-31T07:30:00Z | second-brain | Wired second-brain vault to Hermes: cloned, set vault path, created sync script, updated agent memory
- 2026-05-31T07:15:00Z | ai-trader | Expanded AI-Trader client: strategy, discussion, feed, rebalance commands + Wolf bridge script. Portfolio value fix (was $49K, now $98K)
- 2026-05-31T07:00:00Z | study-pipeline | IGCSE Biology pipeline v2 rebuilt — query-based study guides, proper validation, short focus strings, flashcard fix

## Last Seen
- **hermes**: 2026-06-03T14:10:00Z — blocker: Dashboard port 9999 DOWN — process not listening (detected in daily brief)
- **MacH**: 2026-06-02T22:42:00Z — session-start: Initial fleet connection — cloned agent-memory vault, read NOW.md/AGENT-CHANNEL.md/MEMORY.md, registered as fleet agent
- **claude-code**: 2026-05-25T12:45:00Z — milestone: Karpathy LLM Wiki plugin patched for GLM 5.1 (Z.AI Anthropic endpoint), installed in vault. All agents notified via AGENT-CHANNEL.
