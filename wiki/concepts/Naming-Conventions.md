---
type: concept
created: 2026-05-29
updated: 2026-05-29
sources: ["[[sources/config]]"]
tags: [method]
aliases:
  - "Naming Standards"
  - "命名规范"
---


# Naming Conventions

## Definition
Naming Conventions are a set of standardized rules defining how files and entities are titled to ensure systemic consistency, prevent translation errors, and maintain interoperability across a knowledge base.

## Key Characteristics
- **Slugified Filenames**: Requires lowercase letters with hyphens for all file paths.
- **Language Preservation**: Mandates that entity and concept names remain in their original source language to maintain accuracy.
- **Strict Linking Syntax**: Enforces the use of full paths combined with display names (e.g., `[[concepts/page-name|page-name]]`) to prevent broken links.
- **Language Agnosticism**: Ensures primary identifiers are decoupled from the wiki's display language.

## Applications
- **Wiki Maintenance**: Used to organize the file system and prevent naming collisions.
- **Link Integrity**: Applied when creating internal cross-references to ensure the Lint system can validate paths.
- **Knowledge Integration**: Used when importing data from multiple languages into a single centralized repository.

## Related Concepts
- [[concepts/Wiki-Structure|Wiki-Structure]]

## Related Entities
- No related entities

## Mentions in Source
- "Filenames: lowercase-with-hyphens (slugified)"
- "Entity/concept names: Preserve original language from source, NEVER translate"
- "Wiki-links: Use full paths [[concepts/page-name|page-name]] or [[concepts/page-name|page-name]]"