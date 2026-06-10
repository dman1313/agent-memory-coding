# ADR 0003: Agent-Ready Wiki

- **Status:** Accepted
- **Date:** 2026-06-10 · **Deciders:** Dwayne Primeau, claude-code

## Context

The Knowledge Curator wiki was built to be a shared brain for a fleet of AI agents — not just a static repository. This required departing from traditional knowledge base design (embedding-based retrieval, uncontrolled ingestion, single-author workflows) in favor of a model where:

- Multiple agents **read** the wiki to ground their answers (cite pages, follow links).
- Multiple agents **contribute** to the wiki via a controlled inbox pattern (`raw/` input).
- A single curator agent **compiles** contributions into canonical pages (append-only, cross-linked, versioned).
- Infrastructure (schema, rules, decisions) is **read-only** to agents; humans own schema changes.
- The wiki **syncs** to a shared vault so all agents see the latest state within ~15 minutes.

This is "agent-ready" — designed from the ground up for multi-agent read/write workflows, not retrofitted afterward.

## Decision

Adopt the "Agent-Ready Wiki" as the architectural pattern for this vault and all future deployments:

### Core principles

1. **Append-only, not mutating.** Pages grow via dated updates under `## Update YYYY-MM-DD from [[Source]]`, never rewritten. This preserves thinking history, simplifies merging, and avoids race conditions.
2. **Curator owns `wiki/`; agents own `raw/`.** Non-curator agents contribute by dropping notes into `raw/` (the inbox); only the curator skill writes wiki pages. This prevents concurrent flat-file mutations.
3. **Schema alignment at ingestion.** Before creating a new page, the curator checks the index and existing aliases. Duplicates are merged, not created. Subtypes are reused, not invented.
4. **Explicit connections, not embeddings.** Pages are linked via `[[wikilinks]]` manually during compilation. This is slower to build but transparent — any agent can follow the link graph without a vector database.
5. **Git-backed, not SaaS.** The wiki lives in markdown on git, synced to all agents via iCloud (Mac agents) or git pull (VPS). This keeps data portable and under the user's control.
6. **Lifecycle states, not deletion.** Pages are marked `stale`, `contradicted`, or `archived`, but never deleted. History is sacred; queries can filter by status.

### What makes it agent-ready

- **Deterministic reads.** Agents follow `[[links]]` and `index.md` — no non-deterministic embeddings or vector similarity. Same query, same pages every time.
- **Safe writes.** The curator skill is the only writer to `wiki/`; agents propose via `raw/`. Git's merge conflict detection catches human errors; the write contract prevents agent collisions.
- **Shared context.** All agents start by reading `STANDING-ORDERS.md` and `schema/AGENTS.md`, so they know the rules. Dwayne controls the rules; agents follow them.
- **Auditable and recoverable.** Every page has a source chain. Every change is dated and attributed. `git log` is the audit trail.
- **Scales to a fleet.** The pattern holds whether one agent is reading or six. Auto-sync (launchd/cron every ~15 min) keeps drift bounded. Write contracts prevent stampeding.

## Consequences

- **Slower ingestion than real-time.** The curator compiles on a schedule, not instantly. Trade-off: correctness and cross-linking over immediacy.
- **Manual linking instead of learned similarity.** Agents must explicitly cite pages; there's no "similar pages" ranking. Trade-off: explicitness over convenience.
- **Git merge conflicts are possible.** If two agents edit the same infrastructure file before sync, a conflict arises. Mitigation: write contract (agents don't edit `schema/*`); auto-sync every 15 min.
- **No vector search at scale.** Link-based retrieval degrades past ~300 pages. Mitigation: hub pages, lifecycle filtering, scheduled dedup; hybrid search deferred to when needed (see ADR 0002).

## Alternatives considered

- **Embedding-based wiki (RAG vector DB).** Simpler retrieval scaling; loses transparency and auditability. Agents can't debug "why was this page ranked?" — the model's internal similarity is opaque.
- **Real-time collaborative editing (Google Docs model).** Faster ingestion; introduces OT/CRDT complexity, requires hosted service, loses portability, increases latency for read-heavy agent workflows.
- **Wiki as a data lake (no schema).** Agents ingest whatever they want; curators organize later. Risk: graph pollution, duplicate nodes, contradictory metadata. The curator's schema alignment rule prevents this.

## Related decisions

- ADR 0001: Adopt Spec-Driven Development (SDD protocol for the vault itself)
- ADR 0002: Research-driven hardening (multi-agent write contract, page lifecycle, pre-write lint)

## Future work

- When the wiki approaches ~300 pages: evaluate hybrid search (BM25 + vector) to augment link-based retrieval (recorded in ADR 0002).
- When agent count exceeds ~8: revisit per-file locking vs. directory ownership to prevent write collisions.
- When `sync.sh` causes real drift: harden the script to reject `git add -A` and validate commits before pushing.
