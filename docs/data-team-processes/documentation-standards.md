---
front-matter-title: Documentation Standards
author: Bradley Wing
last_updated: 2025-09-12
status: active
tags:
  - contributor-guide
  - frontmatter-schema
  - markdown-style
  - changelog-rules
  - documentation-standards
  - schema-versioning
  - metadata-governance
  - cross-repo-consistency
permalink: /documentation-standards/
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-12
last_reviewed: 2025-09-12
schema_version: 1.0
---

# Documentation Standards

This document defines the standards for documentation authored by the BHN Data Team. It includes guidance on frontmatter metadata, Markdown formatting, and changelog conventions. These standards support contributor onboarding, auditability, and cross-repo coordination.

> For contributor expectations and file structure, see [CONTRIBUTING.md](/CONTRIBUTING.md)

---

## Frontmatter Schema Reference

This section defines the YAML frontmatter schema used across documentation files in the BHN Data Team wiki and related repositories. Frontmatter enables structured metadata for indexing, filtering, auditability, and contributor clarity.

All documentation files must begin with a valid YAML frontmatter block. Required and optional fields vary by asset type (e.g., SQL views, HTML forms, wiki pages). This reference outlines core fields, asset-specific extensions, and contributor guidance.

### Universal Metadata

These fields apply to all documentation types.

```yaml
front-matter-title: string  # Unique identifier for the documentation file
author: string              # Contributor or team responsible
status: active | deprecated | retired | experimental
last_updated: YYYY-MM-DD    # Date of last substantive edit
description: string         # Optional
last_reviewed: YYYY-MM-DD   # Date of last formal review
schema_version: float       # Version of the frontmatter schema used
permalink: /file-name/       # Jekyll-rendered URL path (omit.md or .html)
tags: [tag1, tag2]          # Thematic or functional tags for indexing
```

> For tag definitions and usage conventions, see [tags.md](/tags.md).  
> **Note**: Use `permalink:` to define the rendered URL path when publishing with Jekyll or GitHub Pages. Always begin with `/` and avoid file extensions unless required by the theme. This ensures stable linking and clean navigation.  
> **Tip**: The `description:` node is optional but recommended for any page that serves as a landing, guide, or summary. It supports SEO, feed generation, and contributor clarity. Keep it concise - under 160 characters.

### Program Scope & Governance

Used to define program relevance and review requirements.

```yaml
program_scope: single | multi
programs:
  - epicc
  - bcr
change_control: value | [value1, value2]  # Review or coordination requirements
reviewed_by:
  - name: contributor
    date: YYYY-MM-DD
```

> **Note**: `program_scope: single` requires exactly one entry in `programs:`. Use `multi` for cross-program assets.

### Asset-Specific Metadata

Used for SQL views, form documentation, and other code-linked assets.

```yaml
source_file: path/to/file.sql or .html
category: view-definitions | form-docs | compliance-reports | etc.
category-label: Human-readable label for indexing
dependencies:
  - name: asset-name
    type: sql | html | table
    repo: repo-name
```

> **Tip**: Use `dependencies:` to document upstream assets that affect logic or reporting.

### Form-Specific Metadata

Used only in documentation for HTML forms.

```yaml
form_title: string
form_file: path/to/file.html
table_name: string
form_type: pathways-governed | pathways-standalone | vendor-controlled
client_form: true | false
quick_submit_enabled: true | false
```

> **Note**: These fields are not required for SQL views or wiki pages.

### Pathways-Governed Forms Metadata

Used only for pathway-governed forms.

```yaml
form_type: pathways-governed
pathway_name: string
pathway_id: string
pathway_event: string
pathway_event_logic:
  start_period: string
  end_period: string
  early_period: int
  late_period: int
  recurring_period: string
  lag_period: string
  number_occurrences: int
  depends_on: string
  completion_check_table: string
date_field: Pathways_Date
parent_linkage: string | null
join_logic:
  targets:
    - table: string
      join_type: inner | left
      on:
        - source: string
          target: string
```

> **Note**: These fields support form-to-pathway alignment and are not used outside form documentation.

### Standalone Pathways Forms Metadata

Used only for Pathway forms that do not have a Pathway Event, which means that they are not pathways-governed, will not appear on the Pathways Master Dashboard, and must be accessed as standalone forms using menus.

```yaml
form_type: pathways-standalone
pathway_name: string
pathway_id: string
pathway_event: null
pathway_event_logic: null
date_field: Pathways_Date
parent_linkage: string | null
join_logic:
  targets:
    - table: string
      join_type: inner | left
      on:
        - source: string
          target: string
```

> **Note**: These fields support form-to-pathway alignment and are not used outside form documentation.

### Vendor-Controlled Forms Metadata

Used for forms like CLIENT, PROVIDERPLACEMENT, and others that are managed by the vendor and not governed by Pathway logic. These may be surfaced via system menus or embedded in workflows.

```yaml
form_type: vendor-controlled
pathway_name: null
pathway_id: null
pathway_event: null
pathway_event_logic: null
date_field: null
parent_linkage: string | null
join_logic:
  targets:
    - table: string
      join_type: inner | left
      on:
        - source: string
          target: string
```

> **Note**: The pathways fields are retained for schema consistency but are always `null` for vendor-controlled forms that are not developed and governed by the Pathways module.

### Schema Versioning in Documentation

The `schema_version:` field tracks the version of the frontmatter schema used in documentation files. It ensures consistency across assets and supports future automation, validation, and contributor onboarding.

- Purpose
  - Signals which fields and conventions are expected in the frontmatter.
  - Enables scripts or linters to validate structure based on version.
  - Supports backward compatibility when publishing or sharing documentation externally.
- Update `schema_version:` when:
  - New fields are added to the frontmatter.
  - Field names or formats change.
  - Contributor guidance is updated.
- Do **not** increment for:
  - Changes to SQL logic or table structure.
  - Cosmetic edits to documentation content.
- Use semantic versioning:
  - 1.0 → Initial schema
  - 1.1 → Minor field addition or rename
  - 2.0 → Major structural overhaul

For implementation examples, see [`sql-asset-doc-standards.md`](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/sql-asset-doc-standards.md).

### Optional: `asset_schema_version`

If you wish to track changes to the underlying table or view structure, an `asset_schema_version:` field may be added to the YAML. This would reflect changes to columns, data types, constraints, or logic and _not_ the documentation schema.

> **Example:**

```yaml
asset_schema_version: 2.0
```

This field is optional and may be adopted for audit dashboards or schema evolution tracking.

---

## Markdown Documentation Style Guide

### Purpose - Markdown

This guide standardizes formatting across Markdown-based documentation, including field references, logic descriptions, changelogs, and contributor notes. It complements the SQL asset documentation standards and changelog standards.

### Field Names and Table Names

Use backticks for inline monospace formatting of schema elements.

| Type         | Format Example             | Notes |
|--------------|----------------------------|-------|
| Field name   | `Pathway_Date`             | Always monospace when referenced |
| Table name   | `PWEPICCInitialContact`    | Same convention as field names |

### Logic and Function References

Use backticks for inline references to functions or logic snippets.

| Type              | Format Example              | Notes |
|-------------------|-----------------------------|-------|
| Function name     | `checkhide()`               | Inline monospace |
| Exception logic   | `if field == ""`            | Inline for short logic |
| Diagnostic tags   | `Missing Pathway_Date`      | Monospace if used programmatically |

Use fenced code blocks for longer logic:

```javascript
if (field.value === "") {
  showWarning("Missing required field");
}
```

### Documentation Structure

Use consistent heading levels and formatting for clarity.

| Element        | Format Example                     | Notes |
|----------------|------------------------------------|-------|
| Section header | ## Form Parsing Utilities          | H2 for major sections |
| Subsection     | ### Input Requirements             | H3 for nested details |
| Code block     | Triple backticks + language tag    | Use bash, r, python, sql, etc. |
| Links          | [/assets/scripts/README.md](/assets/scripts/README.md) | Prefer relative links |

### Contributor Notes and Comments

Use HTML comments for internal notes and blockquotes for guidance.

| Type            | Format Example                          | Notes |
|-----------------|------------------------------------------|-------|
| TODOs           | `<!-- TODO: Add logic for pivoted fields -->` | Not rendered in output |
| Contributor tips| > This logic assumes no duplicate enrollments. | Use blockquotes for context or warnings |

### Optional Enhancements

Use sparingly and only when clarity is improved.

| Feature         | Format Example                          | Notes |
|-----------------|------------------------------------------|-------|
| Collapsible sections | `<details><summary>Advanced Logic</summary>...</details>` | Use for long logic or edge cases |
| Bold monospace  | ``**`FieldName`**``                         | Use for emphasis in tables or headings |

---

## Changelog Standards

---

### Purpose - Changelogs

Changelogs provide a human-readable record of edits, enhancements, and refactors to SQL, documentation, and logic artifacts. They facilitate auditability, review, and staff handoffs. Each .md documentation file should contain a changelog to track file evolution over time.

### Formatting Rules

- **Date Format:** Use YYYY-MM-DD
- **Verb Tense:** Prefer present tense (e.g., “Adds X”, “Fixes Y”) to match the moment the change enters the file
- **Style:** Keep entries concise, contextual, and avoid internal jargon unless well-defined elsewhere
- **Ordering:** List entries in reverse chronological order (most recent at top)
- **Grouping (optional):** Use ### headers to group entries by version, milestone, or release cycle if desired

### Recommended Changelog Tags (Start-of-line Verbs)

Use standardized verbs for readability and filtering. Prefix each entry with one of:

- **Adds** — new fields, filters, sections, logic branches
- **Fixes** — corrects broken logic, documentation, or data assumptions
- **Refactors** — improves internal structure without altering output
- **Removes** — eliminates fields, logic branches, outdated guidance
- **Deprecates** — marks elements as obsolete; may remain temporarily
- **Renames** — updates labels, field names, prompts
- **Clarifies** — improves documentation clarity or business rule alignment
- **Breaks or Breaking Change:** — denotes incompatible changes (e.g., column removed, behavior reversed)

These help with grep-like searches, linter checks, and future log summarizers.

### Forthcoming Changes

To track planned but unreleased edits:

- Will add support for housing agency lookup codes.
- Will deprecate legacy referral filter in next report cycle.

Move confirmed items from this section into the main changelog once applied.

### Diff-Style Syntax (Optional Enhancer)

It is possible to use GitHub-flavored diff syntax to indicate adds vs. removals:

```diff
+ Adds filter to exclude inactive enrollments from report
- Removes outdated logic for treatment plan status
```

> **Note**: Each line must begin with `+` or `-` for the GitHub-flavored diff fenced code block syntax to work. Therefore, this is not compatible with the established changelogs. However, there may be instances where tracking diffs may be useful and desired.
