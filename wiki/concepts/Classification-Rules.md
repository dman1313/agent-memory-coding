---
type: concept
created: 2024-05-29
updated: 2024-05-29
sources: ["[[sources/config]]"]
tags: [method]
aliases:
  - "Categorization Guidelines"
  - "分类规则"
---


# Classification Rules

## Definition
Classification Rules are a set of strict guidelines used to determine the assignment of the `type` and `tags` fields for every page within the wiki to ensure consistent data organization and integrity.

## Key Characteristics
- **Strict Type Restriction**: Limits the `type` field to only three possible values: `entity`, `concept`, or `source`.
- **Finite Subtype Lists**: Provides a predefined list of valid tags based on the chosen type (e.g., entities must be one of: person, organization, project, product, event, location, or other).
- **Automated Validation**: Any tag not present in the approved subtype list is automatically removed by the system.
- **Data Integrity**: Prevents the creation of fragmented or non-standard categories.

## Applications
These rules are applied during the creation and updating of all wiki pages to ensure that the knowledge base remains searchable and logically structured.

## Related Concepts
- [[concepts/Wiki-Structure|Wiki-Structure]]
- [[concepts/Entity-Page-Template|Entity-Page-Template]]
- [[concepts/Concept-Page-Template|Concept-Page-Template]]

## Related Entities
- [[concepts/Wiki-Schema|Wiki-Schema-Configuration]]

## Mentions in Source
- "type field: entity | concept | source — the page category"
- "tags field: stores the subtype (entity_type or concept_type)"
- "Rule: tags MUST only contain values from the corresponding subtype list above. A tag not in the valid list will be removed by the system."