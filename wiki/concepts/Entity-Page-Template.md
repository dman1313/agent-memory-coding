---
type: concept
created: 2026-05-29
updated: 2024-05-23
sources: ["[[sources/config]]"]
tags: [method]
aliases:
  - "Entity Page Structure"
  - "实体页面模板"
---


# Entity Page Template

## Definition
The Entity Page Template is a mandatory structural framework for all pages located in the `entities/` directory of the wiki. It ensures consistency and data integrity by requiring specific frontmatter metadata and a standardized set of five content sections.

## Key Characteristics
- **Mandatory Frontmatter**: Requires specific fields including `type` (must be "entity"), `created` date, `sources`, and `tags`.
- **Standardized Sections**: Enforces five required sections: Basic Information, Description, Related Entities, Related Concepts, and Mentions in Source.
- **Evidence-Based**: Designed to ensure that all entity documentation is grounded in concrete facts and supported by verbatim source evidence.
- **Strict Classification**: Integrated with the system's classification rules to maintain taxonomy integrity.

## Applications
- Standardizing the creation of new entity pages within the wiki.
- Auditing existing entity pages to ensure they meet the minimum documentation requirements.
- Facilitating automated linting and validation of the knowledge base.

## Related Concepts
- [[concepts/concept-page-template|Concept Page Template]]
- [[concepts/classification-rules|Classification Rules]]

## Related Entities
- [[concepts/Wiki-Schema|Wiki-Schema]]

## Mentions in Source
- "Pages in entities/ MUST follow this structure: Frontmatter fields: type: entity — page category (MUST be exactly \"entity\")"