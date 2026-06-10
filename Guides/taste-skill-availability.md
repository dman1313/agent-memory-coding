---
type: tool-pointer
created: 2026-06-10
updated: 2026-06-10
updated-by: MacH
source: https://github.com/leonxlnx/taste-skill
---

# taste-skill (Leonxlnx) — available to the fleet

External skill pack by `leonxlnx/taste-skill` (MIT, 2026). For landing pages, portfolios, redesigns, brand/image comps, and image-first code workflows. **Not** for dashboards, data tables, or multi-step product UI.

## What it is

13 skills in two categories:

- **Implementation skills** (output code): `design-taste-frontend` (v2, default), `design-taste-frontend-v1` (pin only if v2 breaks you), `gpt-taste` (Codex/strict motion), `image-to-code` (image → analyze → code), `redesign-existing-projects`, `high-end-visual-design` (soft-skill), `industrial-brutalist-ui`, `minimalist-ui`, `full-output-enforcement`, `stitch-design-taste` (DESIGN.md export + Google Stitch compatible).
- **Image-generation skills** (output images only): `imagegen-frontend-web`, `imagegen-frontend-mobile`, `brandkit`. These are **prompt art direction** for *any* image-gen tool (FAL, ChatGPT Images, Codex image mode, etc.), not a model or API.

## How to use

Install with `npx skills add https://github.com/leonxlnx/taste-skill --skill "<install-name>"` (Codex/Cursor/Claude Code). Or copy `SKILL.md` into a project, a config dir, or a conversation.

## Where it lives on this Mac (MacH install)

A **12-skill subset** is installed in `~/.hermes/skills/creative/taste-skill/`:

| Subdir | Install name | Lines | Reach for when… |
|---|---|---:|---|
| `taste-skill/` | `design-taste-frontend` | 1,206 | Default for any new landing page, portfolio, or redesign. Reads brief, infers design language, tunes 3 dials. |
| `redesign-skill/` | `redesign-existing-projects` | 178 | Existing project that looks like LLM slop; audit-first. |
| `soft-skill/` | `high-end-visual-design` | 98 | Premium/calm/expensive aesthetic. Apple-y, brand-led. |
| `minimalist-skill/` | `minimalist-ui` | 85 | Linear/Notion vibes, editorial, restrained palette. |
| `brutalist-skill/` | `industrial-brutalist-ui` | 92 | Swiss type, mechanical, experimental layout. |
| `output-skill/` | `full-output-enforcement` | 49 | Model keeps truncating output. Pair with any other skill. |
| `gpt-tasteskill/` | `gpt-taste` | 74 | Codex/strict: AIDA structure, GSAP ScrollTriggers, gapless bento. |
| `image-to-code-skill/` | `image-to-code` | 1,228 | Image → analyze → code workflow. Generates design images itself, then implements. |
| `imagegen-frontend-web/` | `imagegen-frontend-web` | 987 | Landing page image comps — one horizontal image per section. Use with FAL/Codex image mode. |
| `imagegen-frontend-mobile/` | `imagegen-frontend-mobile` | 1,465 | Mobile screen comps in phone mockups. Use with FAL/Codex image mode. |
| `brandkit/` | `brandkit` | 798 | Brand identity boards, logo systems, visual worlds. |
| `stitch-skill/` | `stitch-design-taste` | 184 | DESIGN.md export (pairs with our `design-md` skill); Stitch-compatible rules. |

**Skipped (only one):** `taste-skill-v1` — v1 exists only for projects pinned to the exact pre-v2 behavior. README says default to v2 unless something breaks. Not installed.

## Correction log (2026-06-10, MacH)

My first pass skipped 7 skills with reasons that were partly wrong. Dwayne asked about it; re-evaluated and installed the 6 that had weak skip reasons:

- `gpt-taste` — I said "dup of default, stricter." Wrong. It has Codex-specific rules the default lacks (Python-driven randomization, AIDA structure, strict GSAP ScrollTriggers).
- `image-to-code-skill` — I said "wrong workflow." Wrong. The skill is the analysis+code half; it pairs fine with our FAL/Codex image gen.
- `imagegen-frontend-web` / `imagegen-frontend-mobile` / `brandkit` — I said "we use FAL, not these." Wrong. These are **prompt art direction** for any image-gen tool. Pair them with FAL.
- `stitch-skill` — I said "Google Stitch only." Misread. It's "compatible with Stitch" + produces a `DESIGN.md` file — which we already have a `design-md` skill for, so the export is directly useful.

Lesson saved: when I want to skip something to reduce surface area, the reason has to be loadable for the *user*, not just for me. A "stricter dup" judgment should name the rule conflict, not just call it a dup.

## Overlap with existing skills

- **vs `software-development/frontend-ui-engineering`** — both target production-quality UI. Taste-skill is more opinionated about *aesthetic* (anti-slop); `frontend-ui-engineering` is broader (components, state, responsive). Both load; taste-skill wins for landing/portfolio work.
- **vs `creative/saas-landing-page-razzle-dazzle`** — orthogonal. Razzle-dazzle prescribes a specific high-conversion SaaS pattern (Unsplash + animations) that taste-skill would flag as default-LLM slop. Use one or the other based on the design read.

## When to reach for taste-skill

- Building a new landing page, portfolio, marketing site, or brand comp → `design-taste-frontend` (code) or `imagegen-frontend-web` / `brandkit` (images)
- Mobile app screens → `imagegen-frontend-mobile`
- Redesigning an existing UI that looks generic/AI-generated → `redesign-existing-projects`
- Aesthetic is dictated ("make it brutalist", "premium feel") → `industrial-brutalist-ui` / `high-end-visual-design` / `minimalist-ui`
- Codex/Codex-like agent + strict motion + AIDA → `gpt-taste`
- Have reference images and want the site to match → `image-to-code`
- Want to export the design rules to a `DESIGN.md` → `stitch-design-taste` (works without Google Stitch)
- Output is being truncated → `full-output-enforcement` (pair with anything)

**Do not reach for it** for: dashboards, admin panels, data tables, multi-step product UI, internal tools — taste-skill explicitly scopes itself out of those.

## Related

- `../schema/AGENTS` § 9 Leverage — rules for skill loading
- `../Project/vault-purpose` — why we share tools across the fleet
- External: <https://github.com/leonxlnx/taste-skill>
