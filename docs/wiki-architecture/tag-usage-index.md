---
front-matter-title: Tag Usage Index
author: Bradley Wing
last_updated: 2025-09-21
status: active
program_scope: none
programs:
  - none
tags:
  - contributor-guidance
  - taxonomy-reference
  - tag-governance
  - documentation-standards
permalink: /tag-usage-index/
layout: home
nav_order: 5
parent: Wiki Architecture
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-20
last_reviewed: 2025-09-20
schema_version: 1.0  
---

# Tag Usage Index

This index helps contributors find documentation by topic, scope, or contributor intent. Tags are defined in frontmatter and support navigation, auditability, and onboarding.

## Tags in Use

| Tag               | Linked Pages               |
|-------------------|----------------------------|
| `contributor-guide` | [`CONTRIBUTING`](https://github.com/Behavioral-Health-Network/BHN-Data-Team-Wiki/blob/f74312d945377dbfca899e0286142830affcef43/CONTRIBUTING.md) |
| `documentation-standards` | [`documentation-standards.md`]({{site.baseurl}}/documentation-standards/) |
| `reporting-logic` | [`page`]({{site.baseurl}}/page-name/) |
| `program-scope` | [`page`]({{site.baseurl}}/page-name/) |
| `schema-versioning` | [`documentation-standards.md`]({{site.baseurl}}/documentation-standards/) |
| `audit-hooks` |  [`CONTRIBUTING`](https://github.com/Behavioral-Health-Network/BHN-Data-Team-Wiki/blob/f74312d945377dbfca899e0286142830affcef43/CONTRIBUTING.md) |

> This index is manually maintained. When adding a new tag to frontmatter, please update this file to support contributor navigation.

## Changelog

- **2025-09-26**: Updates the `nav_order:` field in the frontmatter. Fixes links to `CONTRIBUTING.md`.
- **2025-09-25**: Updates `permalink:` field to align with the link added to index.md in /wiki-architecture/.
- **2025-09-21**: Adds `tag-governance` tag. Adds `nav_order:` and `parent:` fields to frontmatter.
- **2025-09-20**: Adds initial Markdown file.
