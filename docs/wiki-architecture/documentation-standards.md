---
front-matter-title: Documentation Standards
author: Bradley Wing
last_updated: 2025-09-21
status: active
program_scope: none
programs:
  - none
tags:
  - changelog-rules
  - contributor-guidance
  - cross-repo
  - documentation-standards
  - frontmatter-schema
  - markdown-style
  - schema-versioning
  - metadata-governance
permalink: /documentation-standards/
layout: home
nav_order: 2
parent: Wiki Architecture
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-12
last_reviewed: 2025-09-12
schema_version: 1.0
---

# Documentation Standards

This document defines the standards for documentation authored by the BHN Data Team. It includes guidance on frontmatter metadata, Markdown formatting, and changelog conventions. These standards support contributor onboarding, auditability, and cross-repo coordination.

> **Tip**: For contributor expectations and file structure, see [CONTRIBUTING](https://github.com/Behavioral-Health-Network/BHN-Data-Team-Wiki/blob/f74312d945377dbfca899e0286142830affcef43/CONTRIBUTING.md)

---

## Linting Expectations

To ensure consistent Markdown formatting across BHN documentation projects, contributors are expected to use the [Markdownlint extension](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint) in VS Code.

Linting rules are defined in the `.markdownlint.json` file at the root of each repository. These rules enforce formatting standards such as code fence style, line length, and allowed HTML elements. Contributors should resolve any linting errors before committing changes.

For installation and configuration details, see [Dependencies]({{site.baseurl}}/dependencies/).

---

## Frontmatter Schema Reference

This section defines the YAML frontmatter schema used across documentation files in the BHN Data Team wiki and related repositories. Frontmatter enables structured metadata for indexing, filtering, auditability, and contributor clarity.

All documentation files must begin with a valid YAML frontmatter block. Required and optional fields vary by asset type (e.g., SQL views, HTML forms, wiki pages). This reference outlines core fields, asset-specific extensions, and contributor guidance.

### Universal Metadata

These fields apply to all documentation types.

```yaml
front-matter-title: string  # Unique identifier for the documentation file
author: string              # Contributor or team responsible
status: draft | active | deprecated | archived | experimental | needs-review | needs-testing
last_updated: YYYY-MM-DD    # Date of last substantive edit
description: string         # Optional
reviewed_by: string         # Name of the most recent reviewer
last_reviewed: YYYY-MM-DD   # Date of last formal review
schema_version: float       # Version of the frontmatter schema used
permalink: /file-name/      # Jekyll-rendered URL path (omit.md or .html)
layout: home                # Must use this layout value.
tags:                       # Thematic or functional tags for indexing
  - tag1
  - tag2
parent: string              # References parent page `front-matter-title`
                            #   of another page to group the current page
                            #   in the side bar.
nav_order: integer          # Sets the order of the page within its parent
                            #   group. Lower numbers appear first.
```

> **Reference**: For tag definitions and usage conventions, see [Tag Reference]({{site.baseurl}}/tag-reference/).  
> **Note**: Use `permalink:` to define the rendered URL path when publishing with Jekyll or GitHub Pages. Always begin with `{{site.baseurl}}/` and avoid file extensions unless required by the theme. This ensures stable linking and clean navigation.  
> **Note**: Use status: to indicate the lifecycle state of a document. Common values include draft, active, needs-review, needs-testing, archived, and deprecated. This field supports contributor workflows and future automation. Avoid using tags to signal status.  
> **Tip**: The `description:` node is optional but recommended for any page that serves as a landing, guide, or summary. It supports SEO, feed generation, and contributor clarity. Keep it concise - under 160 characters.

### Program Scope & Governance

Used to define program relevance and review requirements.

```yaml
program_scope: single | multi | none
programs:
  - epicc
  - bcr
  - none # when appropriate - not to be used when a program is in scope
change_control: value | [value1, value2]  # Review or coordination requirements
reviewed_by:
  - name: contributor
    date: YYYY-MM-DD
```

> **Note**: `program_scope: single` requires exactly one entry in `programs:`. Use `multi` for cross-program assets. Use `none` for forms that are BHN program-agnostic, and use `none` for `programs:` as well in that case.

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
- `schema_version:` remains at 1.0 until initial publication to GitHub Pages.
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

For implementation examples, see [SQL Asset Style Guide`](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/sql-asset-doc-standards.md).

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

This guide standardizes formatting across Markdown-based documentation, including field references, logic descriptions, changelogs, and contributor notes. It complements the SQL asset documentation standards and changelog standards found in [SQL Asset Style Guide`](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/sql-asset-doc-standards.md).

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

~~~markdown
```javascript
if (field.value === "") {
  showWarning("Missing required field");
}
```
~~~

### Documentation Structure

Use consistent heading levels and formatting for clarity.

| Element        | Format Example                     | Notes |
|----------------|------------------------------------|-------|
| Section header | ## Form Parsing Utilities          | H2 for major sections |
| Subsection     | ### Input Requirements             | H3 for nested details |
| Code block     | Triple backticks + language tag    | Use bash, r, python, sql, etc. |
| Links to site documentation files         | [Documentation Standards]({{site.baseurl}}/documentation-standards/) | Use `{{site.baseurl}}/permalink/` |
| Links to raw files in GitHub repos | [GitHub: scripts README](https://github.com/Behavioral-Health-Network/BHN-Data-Team-Wiki/blob/732611b6c12f487d6f8434e50d13a76fd78c646f/assets/scripts/README.md) | Use `[link text](https://github.com/Behavioral-Health-Network/BHN-Data-Team-Wiki/blob/main/folder/subfolder/filename.md)` |

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
| Collapsible sections | `<details><summary>Advanced Logic</summary><div markdown="1">...</div></details>` | Use for long logic or edge cases |
| Bold monospace  | ``**`FieldName`**``                         | Use for emphasis in tables or headings |

---

## Changelog Standards

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

## Related Standards

- [Data Dictionary Standards]({{site.baseurl}}/data-dictionary-standards/)
- [Reporting Standards]({{site.baseurl}}/reporting-standards/)
- [Tag Reference]({{site.baseurl}}/tag-reference/)

> **Tip**: See also [Sidebar Configuration]({{site.baseurl}}/sidebar-config/) for information on how to update `_navigation.yaml` so that any new page is added to the sidebar.

---

## Changelog

<details markdown="1">
  <summary><strong>View Changelog Details</strong></summary>

### 2025

- **2025-10-04**: Adds section on `Linting Expectations`. Adds outer fence to the example for fenced code blocks in the `Logic and Function References` subsection. Removes unneeded horizontal line at the beginning of the `Changelog Standards` section and adds one between `Related Standards` section and the `Changelog`. Adds collapsible `<details markdown="1"></details>` section to the changelog. Adds year subsection to better organize long changelog lists.
- **2025-09-26**: Updates `nav_order:` field in the frontmatter. The pages in /wiki-architecture/ can't all be `1`! Adds `Related Standards` section. Updates link to `tags.md` by adding the title of the page itself. Fixes link to `CONTRIBUTING.md`.
- **2025-09-25**: Replaces broken link example in `Documentation Structure` subsection Markdown table and adds another link example for files in GitHub repos.
- **2025-09-23**: Moves `documentation-standards.md` from `/data-team-processes/` to `/wiki-architecture/` to centralize standards documentation for enhanced discoverability through centralization in one folder. Updates `parent:` field in the frontmatter to reflect this change. Renames `sql-asset-doc-standards.md` to `SQL Asset Style Guide` for more contributor friendly naming.
- **2025-09-22**: Fixes links to `Tags.md` and `CONTRIBUTING.md`. Updates the instructions for adding collapsible sections using `<details>` element by adding `<div markdown="1"></div>` to the documentation.
- **2025-09-21**: Renames `cross-repo-consistency` tag to `cross-repo`. Renames `contributor-guide` tag to `contributor-guidance`. Adds `parent:` and `nav_order:` to frontmatter yaml. Updates guidance for `schema_version:` to signify that `schema_version:` is not to update until initial publication to GitHub Pages. After that, any changes to frontmatter schema should increment the `schema_version:`. Adds guidance for using `program_scope:` and `programs:` fields in frontmatter when an asset is not program-specific. Restyles the admonitions (reference, note, tip) below `Universal Metadata` yaml block. Adds another note to those admonitions to provide guidance on the preference for using the `status:` field instead of tags to communicate the current status of an asset.
- **2025-09-19**: Adds `layout:` field to frontmatter and to the `Universal Metadata` section. Fixes link to `data-team-proceses`.
- **2025-09-17**: Updates the `Form-Specific Metadata`, `Pathways-Goverened Forms Metadata` sections and adds the `Standalone Pathways Forms Metadata` and `Vendor-Controlled Forms Metadata` sections to clarify how to handle the pathways fields in the frontmatter based on the form type. Moves the `date_field` field from the `Form-Specific Metadata` subsection to the subsections `Pathways-Governed Forms Metadata`, `Standalone Pathways Forms Metadata`, and `Vendor-Controlled Forms Metadata` to be explicit about how the `date_field` field is to be handled across the form types.
- **2025-09-16**: Updates frontmatter. Adds explicit `Frontmatter Schema Reference` section to better guide frontmatter composition and maintenance. This replaces the inadequate `Schema Versioning in Documentation` section that had only addressed the schema version and didn't explain frontmatters in general. Removes `Versioning Guidance` subsection entirely.
- **2025-09-10**: Updates the `Purpose` subsection to reflect the renaming of the SQL asset documentation standards document; adds Schema Versioning in Documentation subsection to explain the usage of schema_version in the frontmatter yaml.
- **2025-08-18**: Renames the two `Purpose` sections so that they are distinct. Updates sample yaml at the bottom of the file.
- **2025-08-15**: Updates frontmatter.
- **2025-08-03**: Adds `Markdown Standards` section.
- **2025-08-01**: Adds `Changelog Standards` section and frontmatter.
- **2025-07-28**: Adds initial Markdown file.

</details>
