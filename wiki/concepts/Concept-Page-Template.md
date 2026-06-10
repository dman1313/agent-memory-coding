---
type: concept
created: 2026-05-29
updated: 2026-05-29
sources: ["[[sources/config]]"]
tags: [method]
aliases:
  - "Concept Page Structure"
  - "概念页面模板"
---


# Concept Page Template

## Definition
The Concept Page Template is a standardized formatting method for documenting abstract ideas, theories, or terms within the `concepts/` directory of the Wiki. It ensures consistency across theoretical entries by mandating specific frontmatter and structural sections.

## Key Characteristics
- **Standardized Frontmatter**: Requires specific fields including `type: concept` and a valid subtype tag (theory, method, technology, term, or other).
- **Structured Sections**: Focuses on Definition, Key Characteristics, and Applications to ensure theoretical clarity.
- **Traceability**: Mandates a "Mentions in Source" section to link the concept back to original verbatim evidence.
- **Relational Linking**: Requires the use of specific wiki-link paths to connect concepts to other theoretical ideas and practical entities.

## Applications
- Used by Wiki maintainers to create new pages for theoretical frameworks.
- Applied during the auditing process to ensure all concept pages meet the schema requirements.
- Used to transform raw notes into structured knowledge base entries for better searchability and linking.

## Related Concepts
- [[concepts/Entity-Page-Template|Entity Page Template]]
- [[concepts/Classification-Rules|Classification Rules]]
- [[concepts/Wiki-Structure|Wiki Structure]]

## Related Entities
- [[concepts/Wiki-Schema|Wiki Schema Configuration]]

## Mentions in Source
- "Pages in concepts/ MUST follow this structure: Frontmatter fields: type: concept — page category (MUST be exactly \"concept\")"