---
type: concept
created: 2024-05-22
updated: 2026-06-02
sources:
tags: [method]
aliases:
  - "Wiki Schema"
  - "Wiki Governance Framework"
  - "Wiki 架构方案"
  - "Wiki-Schema-Configuration"
  - "Wiki 架构配置"
  - "Schema Config"
  - "Wiki Schema Configuration"
---


# Wiki Schema

## Definition
The Wiki Schema is a governance framework that dictates how a Large Language Model (LLM) constructs and maintains a knowledge base. It establishes a directory-based organizational structure that separates information into entities, concepts, and sources to ensure standardized categorization, searchability, and verifiability.

## Key Characteristics
- **Structural Separation**: Organizes content into distinct categories (entities, concepts, and sources) to prevent data overlap.
- **Template Enforcement**: Mandates the use of specific page templates (such as [[concepts/Concept-Page-Template|Concept Page Template]]) to ensure consistency across the knowledge base.
- **Graph-Based Connectivity**: Requires bidirectional linking to create a dense, navigable knowledge graph.
- **Strict Standardization**: Implements rigorous [[concepts/Naming-Conventions|Naming Conventions]] and [[concepts/Classification-Rules|Classification Rules]] to maintain system-wide integrity.
- **Consistency Maintenance**: Defines necessary file structures and merging rules to enable a structured environment where information is easily discoverable.

## Applications
- **Automated Knowledge Base Construction**: Used by LLMs to systematically transform unstructured data into a structured wiki.
- **Information Governance**: Provides a set of rules to prevent "wiki drift" or inconsistent naming as the knowledge base scales.
- **Data Retrieval Optimization**: Ensures that information is stored in predictable locations, improving the efficiency of RAG (Retrieval-Augmented Generation) systems.

## Related Concepts
- [[concepts/Classification-Rules|Classification Rules]]
- [[concepts/Naming-Conventions|Naming Conventions]]
- [[concepts/Wiki-Structure|Wiki Structure]]
- [[concepts/Concept-Page-Template|Concept Page Template]]
- [[concepts/Entity-Page-Template|Entity Page Template]]

## Related Entities
- [[concepts/Wiki-Schema|Wiki Schema Configuration]]

## Mentions in Source
- "This file governs how the LLM builds and maintains your Wiki."
- "The Wiki Schema configuration defines a structural framework for organizing information into entities, concepts, and sources."