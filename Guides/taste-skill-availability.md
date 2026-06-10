---
type: tool-pointer
created: 2026-06-10
added-by: MacH
source: https://github.com/leonxlnx/taste-skill
---

# taste-skill (Leonxlnx) — available to the fleet

External skill pack by `leonxlnx/taste-skill` (MIT, 2026). For landing pages, portfolios, redesigns, and brand/image comps. **Not** for dashboards, data tables, or multi-step product UI.

## What it is

13 skills in two categories:

- **Implementation skills** (output code): `design-taste-frontend` (v2, default), `design-taste-frontend-v1` (pin only if v2 breaks you), `gpt-taste` (stricter Codex variant), `image-to-code` (image → analyze → code), `redesign-existing-projects`, `high-end-visual-design` (soft-skill), `industrial-brutalist-ui`, `minimalist-ui`, `full-output-enforcement`, `stitch-design-taste` (Google Stitch only).
- **Image-generation skills** (output images only): `imagegen-frontend-web`, `imagegen-frontend-mobile`, `brandkit`.

## How to use

Install with `npx skills add https://github.com/leonxlnx/taste-skill --skill "<install-name>"` (Codex/Cursor/Claude Code). Or copy `SKILL.md` into a project, a config dir, or a conversation.

## Where it lives on this Mac (MacH install)

A 6-skill subset is installed in `~/.hermes/skills/creative/taste-skill/`:

| Subdir | Install name | Lines | Reach for when… |
|---|---|---:|---|
| `taste-skill/` | `design-taste-frontend` | 1,206 | Default for any new landing page, portfolio, or redesign. Reads the brief, infers design language, tunes 3 dials. |
| `redesign-skill/` | `redesign-existing-projects` | 178 | Existing project that looks like LLM slop; audit-first. |
| `soft-skill/` | `high-end-visual-design` | 98 | Premium/calm/expensive aesthetic. Apple-y, brand-led. |
| `minimalist-skill/` | `minimalist-ui` | 85 | Linear/Notion vibes, editorial, restrained palette. |
| `brutalist-skill/` | `industrial-brutalist-ui` | 92 | Swiss type, mechanical, experimental layout. |
| `output-skill/` | `full-output-enforcement` | 49 | Model keeps truncating output. Use alongside any other skill. |

**Skipped (intentionally):** `gpt-taste` (duplicate of default, stricter), `image-to-code-skill` (workflow includes its own image gen, not our path), all `imagegen-*` (we use FAL/Codex image-mode, not these), `stitch-skill` (Google Stitch only), `taste-skill-v1` (v2 is default unless something breaks).

## Overlap with existing skills

- **vs `software-development/frontend-ui-engineering`** — both target production-quality UI. Taste-skill is more opinionated about *aesthetic* (anti-slop), `frontend-ui-engineering` is broader (covers component architecture, state, responsive). Both load; the more-specific taste-skill wins for landing/portfolio work.
- **vs `creative/saas-landing-page-razzle-dazzle`** — orthogonal. Razzle-dazzle prescribes a specific high-conversion SaaS pattern (Unsplash + animations) that taste-skill would flag as default-LLM slop. Use one or the other based on the design read.

## When to reach for taste-skill

- Building a new landing page, portfolio, marketing site, or brand comp
- Redesigning an existing UI that looks generic/AI-generated
- Output is being truncated and you need `full-output-enforcement`

**Do not reach for it** for: dashboards, admin panels, data tables, multi-step product UI, internal tools, anything where utility > aesthetic — taste-skill explicitly scopes itself out of those.

## Related

- `../schema/AGENTS` § 9 Leverage — rules for skill loading
- `../Project/vault-purpose` — why we share tools across the fleet
- External: <https://github.com/leonxlnx/taste-skill>
