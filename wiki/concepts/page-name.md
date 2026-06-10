---
type: concept
created: 2026-05-30
sources: ["[[concepts/Naming-Conventions]]"]
updated: 2026-05-30
tags: [term]
aliases:
  - "Slugification"
  - "URL-friendly naming"
---

# page-name

## Definition
The process of converting a string of text into a "slug," which is a URL-friendly, lowercase version of a title typically using hyphens to separate words. In the context of the [[concepts/Wiki-Schema|Wiki Schema]], this is the primary method for generating consistent and predictable filenames for all wiki pages.

## Key Characteristics
- **Case Insensitivity**: All characters are converted to lowercase to avoid issues with case-sensitive file systems.
- **Hyphenation**: Spaces and special characters are replaced by hyphens (`-`) to ensure compatibility with web standards and file paths.
- **Normalization**: Removes non-alphanumeric characters to prevent broken links or encoding errors.
- **Predictability**: Ensures that a specific title always results in the same filename, facilitating easy bidirectional linking.

## Applications
- **Filename Generation**: Used to transform a page title like "Wiki Structure" into `wiki-structure.md`.
- **URL Pathing**: Creating clean, readable paths for navigation within a digital knowledge base.
- **Index Mapping**: Allowing the [[concepts/Wiki-Structure|Wiki Structure]] to map human-readable titles to their corresponding system files.

## Related Concepts
- [[concepts/Naming-Conventions|Naming Conventions]]
- [[concepts/Wiki-Structure|Wiki Structure]]
- [[concepts/Classification-Rules|Classification Rules]]

## Related Entities
- [[concepts/Wiki-Schema|Wiki-Schema-Configuration]]

*(No source content available for this page)*