---
front-matter-title: Contributing to the BHN Data Team Wiki  
author: Bradley Wing
last_updated: 2025-09-19 
status: active  
tags:
  - contributor-guide
  - onboarding
  - documentation-standards
permalink: /contributor-notes/
layout: home
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-11
last_reviewed: 2025-09-11
schema_version: 1.0  
---

# Contributing to the BHN Data Team Wiki

Thank you for supporting the documentation that powers our reporting systems and program logic. This wiki is version-controlled to preserve clarity, teachability, and continuity across platforms and contributors.

---

## Who Can Contribute

Contributors may include members of the BHN Data Team, program leadership, and other BHN staff working on reporting or documentation efforts. All updates are reviewed to ensure alignment with team conventions.

---

## Principles

- **DRY Compliance**: Don’t repeat documentation across files. Reference shared sources when possible.
- **Modularity**: Use clear folder structures and titles that isolate distinct logic, workflows, or standards. Preserve empty folders with `.gitkeep` to support future content and contributor clarity.
- **Minimalist Comments**: SQL and code comments should be brief and point to corresponding markdown documentation. See [FAMCare-SQL-Toolkit](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit.git) repo for this implementation.
- **Program vs Data Team Logic**: Place program-specific documentation under [`/programs/`]({{site.baseurl}}/programs/). Data Team logic, templates, and documentation other than standards belong in [`/data-team-processes/`]({{site.baseurl}}/data-team-processes/).
- **Standards Documentation**: Place documentation on standards under [`/wiki-architecture/`]({{site.baseurl}}/wiki-architecture/).

---

## How to Contribute

1. **Branch from `main`** for any updates.
2. **Edit or create `.md` files** using markdown style that matches existing docs.
3. **Use frontmatter** to add metadata when relevant (e.g., `front-matter-title`, `program_scope`, `tags`, etc.).
4. **Include changelog notes** inline or via pull request descriptions.
5. **Open a pull request**, with clear explanation of what was changed and why.
6. **Preserve empty folders with `.gitkeep`** because Git does not track empty directories. If you're creating a folder (e.g., `_includes/`, `_layouts/`, or `/assets/scripts/`) that will remain empty until future content is added, include a `.gitkeep` file inside it. This signals architectural intent and ensures the folder is versioned. Once content is added, `.gitkeep` can be removed as a cleanup step.

If you're adding a new program folder, template, or reporting asset, coordinate with the Data Team first to avoid duplication and maintain navigability.

---

## Frontmatter Standards

All documentation pages should begin with YAML frontmatter to support metadata, auditability, and navigation. Use the following conventions:

- Use `front-matter-title` instead of `title` to avoid Markdown linter conflicts.
- Include `author`, `change-control`, `dependencies`, `last_reviewed`, `last_updated`, `lifecycle`, `program-scope`, `programs`, `reviewed_by`, `schema_version`, `status`, `tags`, `permalink`, and `layout` nodes.

See [`documentation-standards.md`]({{site.baseurl}}/documentation-standards/) for full schema and examples.

---

## Changelog Requirements

Each documentation file must include a changelog section to track edits, refactors, and enhancements. Follow these standards:

- Use reverse chronological order.
- Start each entry with a standardized verb (e.g., Adds, Fixes, Refactors).
- Prefer present tense for clarity.
- Use GitHub-flavored diff syntax for optional clarity.
- Include a "Forthcoming Changes" section if relevant.

Refer to [`documentation-standards.md`]({{site.baseurl}}/documentation-standards/) for formatting rules and tag definitions.

---

## Markdown Formatting Standards

Follow the Markdown style guide outlined in [`documentation-standards.md`]({{site.baseurl}}/documentation-standards/). Key conventions include:

- Use backticks for field names, table names, and logic references.
- Use fenced code blocks for longer logic snippets.
- Use HTML comments for internal contributor notes.
- Use blockquotes for guidance or assumptions.
- Use collapsible `<details>` sections for long tables and sparingly in other cases.

Tables, headings, and links should follow consistent formatting for readability and auditability.

---

## Review & Merge

All contributions are reviewed by the Data Team for clarity, consistency, and alignment with documentation standards. Once approved, changes are merged into `main`.

If edits affect shared templates, YAML schemas, or SQL logic, reviewers may request additional context or changelog notes.

---

## Writing Standards

- Keep paragraphs short and scannable.
- Use headings (`##`, `###`) to break up content.
- Use bullet lists or tables where they support understanding.
- Avoid embedding images unless essential. Use [`assets/images/`]({{site.baseurl}}/images/) for uploads.
- Mermaid diagrams can be placed inline or saved in [`assets/mermaid/`]({{site.baseurl}}/mermaid/).

---

## Questions or Support

Contact the Data Team via Teams or email if you're unsure where something belongs or want help structuring a contribution.

Thanks for helping build documentation that teaches, adapts, and endures.

## Changelog

- **2025-09-23**: Adds link to `/wiki-architecture/` so that contributors know where to find documentation on various standards.
- **2025-09-22**: Fixes link to [FAMCare-SQL-Toolkit](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit.git) GitHub main landing page.
- **2025-09-20**: Adds a note about use of `.gitkeep` to prompt git to track any empty directory with this file added.
- **2025-09-19**: Adds `layout:` field to frontmatter. Fixes links.
