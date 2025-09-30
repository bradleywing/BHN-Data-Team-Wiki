---
front-matter-title: Sidebar Configuration Guide
author: Bradley Wing
last_updated: 2025-09-22
status: active
program_scope: none
programs:
  - none
tags:
  - architecture
  - navigation
  - contributor-guidance
permalink: /sidebar-config/
layout: home
nav_order: 6
parent: Wiki Architecture
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-22
last_reviewed: 2025-09-22
schema_version: 1.0
---

# Sidebar Configuration Guide

This guide explains how sidebar navigation is governed across the BHN documentation ecosystem. It supports contributor onboarding, auditability, and long-term sustainability.

---

## Current Navigation Strategy

We use a centralized `navigation.yaml` file located at: `\_data\navigation.yaml`. This file defines the sidebar hierarchy, order, and visibility of pages across the wiki. It overrides frontmatter-based navigation fields such as `parent:` and `nav_order:`.

---

## Frontmatter Fields (Legacy or Future Use)

Although currently ignored by the sidebar, most pages include the following fields for future-proofing and contributor clarity:

```yaml
parent: string              # References parent page `front-matter-title`
                            #   of another page to group the current page
                            #   in the side bar.
nav_order: integer          # Sets the order of the page within its parent
                            #   group. Lower numbers appear first.
```

## Folder-Level Pages

Each folder that should render a landing page in the wiki includes an `index.md`. These files:

- Are required for Jekyll to serve content at the folder path
- May include `front-matter-title:` and `nav_order:` in frontmatter for clarity and future compatibility
- Are listed explicitly in `_data/navigation.yaml` if they should appear in the sidebar

To help contributors identify folder-level pages, each `index.md` includes a comment header like:

```markdown
<!-- Folder-level landing page for /docs/programs/ -->
```

This improves auditability and reduces confusion when multiple files share the same name.

## Contributor Guidance

When adding a new page:

- Add the file to the appropriate folder
- Include a descriptive title: in the frontmatter
- Add the page to _data/navigation.yaml if it should appear in the sidebar
- Optionally include parent: and nav_order: for future compatibility
- Use comment headers to clarify file purpose (e.g., folder landing page, tag index, etc.)

## Future Considerations

We may revisit this strategy if:

- Theme migration away from git-wiki-theme favors frontmatter-based navigation
- Sidebar automation becomes feasible via tags, folder structure, or Liquid logic
- Contributor workflows benefit from decentralized control or dynamic filtering

## Changelog

- **2025-09-26**: Updates the `nav_order:` field in the frontmatter.
- **2025-09-23**: Adds `program_scope:` and `program:` fields to frontmatter.
- **2025-09-22**: Adds initial Markdown file.
