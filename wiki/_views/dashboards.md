---
created: 2026-06-05
kind: view
---
# Wiki Dashboards

> Requires the **Dataview** plugin (Community Plugins → Dataview). These are live queries over page frontmatter. This page intentionally has no `type:` field so it stays out of the wiki content queries below.

## Recently updated
```dataview
TABLE type, tags, updated FROM "wiki" WHERE type SORT updated DESC LIMIT 15
```

## Unprocessed raw (inbox)
```dataview
LIST FROM "raw" WHERE !processed AND !contains(file.folder, "processed")
```

## Stale (>90 days)
```dataview
TABLE updated FROM "wiki" WHERE type AND date(today) - date(updated) > dur(90 days) SORT updated ASC
```

## Counts by type
```dataview
TABLE length(rows) AS pages FROM "wiki" WHERE type GROUP BY type
```

## Possible orphans (no inbound links)
```dataview
LIST FROM "wiki" WHERE type AND length(file.inlinks) = 0 AND !contains(file.path, "_views")
```
