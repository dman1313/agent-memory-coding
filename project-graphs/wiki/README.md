# Wiki Graph & Search — interactive views

`search.html` is full-text search over the whole vault (wiki, board tasks, projects, decisions — 100 docs, type filters, ranked excerpts). `graph.html` is a self-contained interactive map of `wiki/` (open in any browser, also from Obsidian via "Open in default app"). Blue = entities · violet = concepts · green = sources; node size = connections; click for details, search and type filters in the header.

- **Snapshot:** 2026-06-11 · 71 pages (24 entities · 24 concepts · 23 sources) · 356 links · built by hyperagent from wiki frontmatter + [[wikilinks]] (including frontmatter `sources:` citations; `wiki/sources/config.md` excluded as schema).
- **Regenerate:** ask hyperagent / Vault Keeper after a big compile — it rebuilds from the live repo and recommits here. (Pattern follows `project-graphs/teacher-toolkit/`.)
