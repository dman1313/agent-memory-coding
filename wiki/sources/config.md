---
type: source
created: 2026-05-29
updated: 2026-05-29
source_file: "[[wiki/schema/config.md]]"
tags: [Wiki Structure, Entity Page Template, Concept Page Template, Classification Rules, Naming Conventions, Wiki Schema]
aliases: ["Wiki Schema Config", "Wiki 架构配置"]
---

# Wiki Schema Configuration - Summary

## Source
- Original file: [[wiki/schema/config.md]]
- Ingested: 2026-05-29

## Core Content
The [[concepts/Wiki-Schema|Wiki Schema Configuration]] is the primary governance document that dictates how an LLM constructs and maintains the knowledge base. It establishes a rigorous [[concepts/Wiki-Schema|Wiki Schema]] to prevent data degradation and ensure high-quality, bidirectional linking. The document defines a strict [[concepts/Wiki-Structure|Wiki Structure]] by separating content into entities, concepts, and sources. 

It mandates the use of specific [[concepts/Entity-Page-Template|Entity Page Template]] and [[concepts/Concept-Page-Template|Concept Page Template]] to maintain consistency across all pages. Furthermore, it implements strict [[concepts/Classification-Rules|Classification Rules]] for tagging and specific [[concepts/Naming-Conventions|Naming Conventions]] (such as slugified filenames and preservation of original languages) to ensure the wiki remains standardized, searchable, and verifiable.

## Key Entities
- [[concepts/Wiki-Schema|Wiki Schema Configuration]]

## Key Concepts
- [[concepts/Wiki-Structure|Wiki Structure]]
- [[concepts/Entity-Page-Template|Entity Page Template]]
- [[concepts/Concept-Page-Template|Concept Page Template]]
- [[concepts/Classification-Rules|Classification Rules]]
- [[concepts/Naming-Conventions|Naming Conventions]]
- [[concepts/Wiki-Schema|Wiki Schema]]

## Main Points
- **Structural Rigidity**: Enforces a clear separation between entities (concrete objects) and concepts (abstract ideas) via directory-level organization.
- **Evidence-Based Documentation**: Requires verbatim quoting in "Mentions in Source" sections to ensure all data is grounded in source material.
- **Integrity Controls**: Utilizes a strict tag validation system where any subtype not explicitly permitted in the schema is automatically removed.
- **Standardized Linking**: Mandates full-path wiki-links (e.g., `[[concepts/Wiki-Schema|Wiki Schema Configuration]]`) to prevent broken references.