---
type: concept
created: 2026-05-29
updated: 2026-05-29
sources: ["[[sources/config]]"]
tags: [method]
aliases:
  - "Wiki 组织结构"
  - "Knowledge Base Hierarchy"
---


# Wiki Structure

## Definition
Wiki Structure is the organizational methodology of a knowledge base that divides content into a strict directory-based hierarchy. It separates information into distinct categories—entities, concepts, and sources—to maintain a clear distinction between concrete objects and abstract ideas, ensuring predictable information retrieval for Large Language Models (LLMs).

## Key Characteristics
- **Directory Segregation**: Content is physically and logically partitioned into `entities/`, `concepts/`, and `sources/` directories.
- **Ontological Distinction**: Clearly separates concrete instances (entities) from theoretical frameworks or definitions (concepts).
- **Predictability**: Provides a systematic framework that allows LLMs to locate and categorize information based on predefined rules.
- **Centralized Control**: Utilizes a central index and log to track the overall state of the knowledge base.

## Applications
- **LLM Knowledge Management**: Organizing data so an AI agent can consistently distinguish between a "Person" (entity) and a "Theory" (concept).
- **Wiki Scaling**: Preventing content clutter in large knowledge bases by enforcing a strict filing system.
- **Schema Enforcement**: Implementing automated linting and validation based on the folder location of a page.

## Related Concepts
- [[concepts/classification-rules|Classification Rules]]
- [[concepts/naming-conventions|Naming Conventions]]

## Related Entities
- [[concepts/Wiki-Schema|Wiki-Schema]]

## Mentions in Source
- "Entity pages: entities/ (person, organization, project, product, event, location, other)"
- "Concept pages: concepts/ (theory, method, technology, term, other)"
- "Source pages: sources/"