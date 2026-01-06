---
front-matter-title: Data Dictionary Standards
author: Bradley Wing
last_updated: 2025-09-23
status: active
program_scope: none
programs:
  - none
tags:
  - standards
  - metadata
  - data-dictionaries
  - contributor-guidance
permalink: /data-dictionary-standards/
layout: home
nav_order: 1
parent: Wiki Architecture
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-23
last_reviewed: 2025-09-23
schema_version: 1.0
---

# Data Dictionary Standards

This guide defines contributor expectations for authoring, reviewing, and publishing data dictionaries across the BHN documentation ecosystem. It supports internal QA, stakeholder transparency, and long-term metadata governance.

---

## Purpose

A data dictionary serves as a comprehensive reference for database metadata for forms, datasets, and workflows. They serve to:

- Preserve institutional memory around field definitions and usage
- Support consistent reporting and schema alignment
- Provide shareable references for program leadership and external stakeholders
- Enable future automation and validation of data logic

While FAMCare's SQL Server database maintains an _active_ data dictionary (system tables that store object metadata), it is equally vital maintain _passive_ or manually curated data dictionaries for reference purposes. These provide:

- Human-readable definitions
- Conditional logic documentation
- Reporting and analytical flags
- Pivoted field explanations
- Changelogs and schema versioning

These passive dictionaries are the authoritative reference for analysts, report developers, and stakeholders.

---

## Required Elements

Each data dictionary entry should include:

| Field                | Description                                                                                               |
|----------------------|-----------------------------------------------------------------------------------------------------------|
| `field_order`        | Composite key: two digits for form number, two for field order. Stored as text to preserve leading zeros. |
| `fc_field_name`      | Field name in snake_case, aligned with R export conventions.                                              |
| `data_type`          | Exact SQL Server data type, including length or precision (e.g., varchar(75), varchar(30), int, bit, date). This detail is critical for preventing form errors when new values exceed field constraints. This detail may be obtained from the back-end via SSMS or from the front-end via form validation using the forms editor.                                                            |
| `question_type`      | Input type (e.g., radio, checkbox, text_single_line).                                                     |
| `enabled_lov_values` | Allowed, active values, semicolon-delimited.                                                              |
| `disabled_lov_values`| Disallowed, inactive values, semicolon-delimited.                                                         |
| `master_table_name`  | Name of master table (if applicable).                                                                     |
| `conditional_logic`  | Visibility or population rules (see Conditional logic standards).                                         |
| `is_required_field`  | Whether the field is required.                                                                            |
| `is_reporting_field` | Whether the field appears directly in reports.                                                            |
| `is_analytical_field`| Whether the field is used in joins, filters, or logic.                                                    |
| `audit_notes`        | Deprecated values, renames, and contributor-facing annotations                                            |

This schema is normalized and script-friendly, enabling automated Markdown generation.

---

## Core vs Pivoted Fields

**Core fields** are:

- Directly saved to the database
- Not generated via JavaScript
- The authoritative fields for reporting and schema alignment

**Pivoted fields** are:

- Derived from "check all that apply" inputs
- Created by the JavaScript function `updateReportFields()`
- Sored as `0;1` values
- Never shown in the UI
- Populated only when the parent field equals a specific value

Pivoted fields must include:

- is_pivot_field = 1
- pivot_parent
- conditional_logic of the form `Populated only when <parent_field> = 'code'`
- enabled_lov_values = `0;1`

Pivoted fields are documented in a dedicated table with columns:

- Field Order
- FC Field Name
- Parent Field
- Populated When
- Values
- Notes

This replaces older conventions that included redundant columns such as `Hidden` or `Required`.

---

## Conditional Logic Standards

Conditional logic expresses when a field is shown or populated. There are three canonical types.

1. **UI-hidden fields (via checkhide())**
   - These fields are shown or hidden in the HTML form.
   - Format: Shown only if `<parent_field> = '<code>'`
   - For multiple values: Shown only if `<parent_field> IN ('001','002')`
2. **Pivoted hidden fields**
   - These fields are never shown in the UI.
   - Format: Populated only when `<parent_field> = '<code>'`
3. **Independent checkbox fields**
   - These fields are visible but only populated when selected.
   - Format: Populated only if `<parent_field> = '<code>'`

If a field uses no conditional logic, use: `NA`.

Descriptions (labels) are not included in `conditional_logic`; they belong in the LOV section or master tables.

---

## LOV (List of Values) Standards

### Storage

LOVs are stored in `enabled_lov_values` as semicolon-delimited codes, for example: `001;002;003`

### Rendering

In Markdown, LOVs are rendered as bulleted lists, for example:

- `001`
- `002`
- `003`

Descriptions and labels appear in master tables and narrative text, not in `conditional_logic`.

---

## Reporting vs Analytical Fields

These flags serve different purposes and must not be conflated.

`is_reporting_field = 1`

Use when the field appears directly in:

- Tables
- Figures
- KPIs
- Narratives

If users can “see” this field in a report, it is a reporting field.

`is_analytical_field = 1`

Use when the field is used in:

- Joins
- Filters
- Grouping
- Case logic that produces a report

A field may be analytical but not reporting (for example, `DOCSERNO`), reporting but not analytical (for example, a narrative field), both, or neither.

This separation prevents ambiguity and supports future automation.

---

## File-Level Metadata

Each dictionary file should include YAML frontmatter with at the top of the file. Example:

```yaml
---
front-matter-title: [Program Name] [Form Name] Data Dictionary
permalink: /data-dictionaries/[program]/[form-id]/
parent: [Program Name]
nav_order: [form_order]
tags: 
  - [program-name]
  - data-dictionary
  - field-metadata
layout: home
schema_version: 1.0
---
```

This metadata supports navigation, search, versioning, and contributor workflows.

The content in the `forms_meta` table is used by the parsing script to create these YAML blocks automatically. The YAML frontmatter does not need to be manually edited.

---

## Contributor Guidance

- Propose updates via pull request
- Use kebab-case for filenames (e.g., epicc-initial-contact.md)
- Include comment headers to clarify file purpose and source
- Reference form version and source file when documenting fields
- Flag discrepancies between form logic and dictionary content
- Include descriptions in parentheses when codes are joined from SQL-choice tables
- Add link to the Markdown file on the landing page for data dictionaries: [index.md]({{site.baseurl}}/insert-data-dictionary-permalink/)
- Follow the metadata schema exactly to ensure automation compatibility.

See [Documentation Standards]({{site.baseurl}}/documentation-standards/) for frontmatter schema and formatting conventions.

---

## Index Page Standards

The data dictionary ecosystem includes several `index.md` files that serve as navigational anchors. These pages are not data dictionaries themselves; they organize and contextualize the collection of dictionaries.

### Types of Index Pages

1. **Top‑level index**  
  Location: `/docs/data-dictionaries/index.md`  
  Purpose:  
   - Introduces the data dictionary collection  
   - Links to each program‑level folder  
   - Contains a program‑level changelog documenting structural changes  

2. **Program‑level index**  
  Location: `/docs/data-dictionaries/[program]-data-dictionaries/index.md`  
  Purpose:  
   - Lists all data dictionaries for a single program  
   - Provides a stable permalink for program‑level navigation  
   - Contains a program‑level changelog documenting additions, removals, or renames of data dictionaries  

3. **Form‑level data dictionary**  
  Location: `/docs/data-dictionaries/[program]-data-dictionaries/[form-id].md`  
  Purpose:  
   - Documents a single form  
   - Contains a form‑level changelog describing field‑level changes  

### Required Metadata for Index Pages

Program‑level and top‑level index pages must include:

```yaml
---
program_scope: program
layout: home
nav_order: 1
parent: BHN Program Data Dictionaries
---
```

### Automation

Index pages for the `data-dictionaries` folder are automatically generated and updated by the documentation scripts. Content-aware writes ensure that identical content does not produce Git diffs. Since the parsing script overwrites files each time it is run, the conditional logic in the script syntax ensures that only content changes will need to be committed to the repository. Contributors should not manually edit the index pages in the `data-dictionaries` folder because any manual changes made will be overwritten the next time the parsing script is run.

---

## Changelog Standards

Changelogs provide a durable, contributor-friendly record of how data dictionaries evolve over time. All changelog entries are maintained in the `forms_changelogs` sheet of the `FC_Data_Dictionaries` Excel file, which serves as the single source of truth for both form-level and program-level changes. This centralized metadata enables the documentation automation to route each entry to the correct Markdown file and ensures that updates to the wiki remain consistent, auditable, and reproducible. The standards below define how changelog entries are categorized, structured, and rendered across the documentation ecosystem.

### Changelog Structure

The changelog entries on the `forms_changelogs` sheet cover changes to the changelogs documents themselves and form-level changes made as forms are created and maintained over their life cycle as data collection documents for the programs. Regardless of the type of change being documented, the structure of changelogs is the same. Each changelog consists of:

- A top-level `## Changelog header`.
- An outer `<details markdown="1">` that collapses the entire changelog.
- Inner `<details markdown="1">` blocks, one per year.
- Each inner block contains a `### YEAR` header and a bullet list of changes.

Example structure:

```markdown
## Changelog

<details markdown="1">  
<summary><strong>View Changelog Details</strong></summary>

<details markdown="1">  
<summary><strong>2026</strong></summary>

### 2026

- **2026-01-02**: Description of change.

</details>

<details markdown="1">  
<summary><strong>2025</strong></summary>

### 2025

- **2025-11-21**: Description of change.  
- **2025-11-20**: Description of change.

</details>

</details>
```

The rules are consistent:

- Changes are grouped by year
- The most recent year appears first
- The newest change appears first
- Changes are always recorded using present tense
- The first bullet under each year is not indented

### Program-Level Changelog Standards

Program‑level changelogs record changes to the _set_ of data dictionaries within a program.

### What Belongs in a Program‑Level Changelog

Program-level changelogs **do** document:

- Addition of a new data dictionary
- Removal of a data dictionary
- Renaming of a data dictionary
- Movement of a data dictionary between programs (rare)
- Changes to program‑level metadata (rare)

These entries always include the value 'program' in the `change_scope` column.

### What _Does Not_ Belong in a Program-Level Changelog

Program-level changelogs **do not** document:

- Field additions or removals
- LOV changes
- Conditional logic changes
- Reporting or analytical flag changes
- Any form-internal metadata changes

These belong exclusively in the form-level changelog and are signified by the value 'form' in the `change_scope` column.

### `change_scope` Standards

The `change_scope` column in `forms_changelogs` identifies whether a changelog entry applies to a **form‑level data dictionary** or a **program‑level index page**. This field enables the documentation automation to route each changelog entry to the correct Markdown file.

### Allowed Values

- `form`
- `program`

### Meaning of `change_scope: form`

Use `change_scope: form` when the change affects the **content of a specific data dictionary**. These changes appear in the **form‑level changelog** inside:

- `/docs/data-dictionaries/[program]-data-dictionaries/[form-id].md`

Examples of `form`‑scope changes:

- Field added, removed, or renamed
- LOV updated
- Conditional logic updated
- Reporting or analytical flag updated
- Master table updated
- Schema version incremented
- Any change to the metadata of a single form

These changes describe the _internal structure_ of a form.

### Meaning of `change_scope: program`

Use `change_scope: program` when the change affects the **set of data dictionaries within a program**. These changes appear in the **program‑level index changelog** inside:

- `/docs/data-dictionaries/[program]-data-dictionaries/index.md`

Examples of `program`‑scope changes:

- A new data dictionary is added to the program  
- A data dictionary is removed or deprecated  
- A data dictionary is renamed  
- A data dictionary moves from one program to another  
- Program‑level metadata changes (rare)  

These changes describe the _documentation structure_ of the program, not the internal metadata of a form.

### Routing Logic (How Automation Interprets `change_scope`)

- If `change_scope == "form"`  
  → The entry is included in the **form’s own changelog**.

- If `change_scope == "program"`  
  → The entry is included in the **program‑level index changelog**.

This routing is handled automatically by the documentation generation scripts.

### Required Columns for Program‑Scope Entries

Program‑level entries must include:

- `program` — the program affected  
- `change_date` — ISO format recommended  
- `change_detail` — short, present‑tense description  
- `change_scope = 'program'`  

Example:

| program | form_id               | change_date | change_detail           | change_scope |
|---------|-----------------------|-------------|-------------------------|--------------|
| epicc   | epicc_initial_contact | 2025‑12‑24  | Adds data dictionary    | program      |

### Required Columns for Form‑Scope Entries

Form‑level entries must include:

- `form_id` — the form affected
- `program` — the program the form belongs to
- `change_date`
- `change_detail`  
- `change_scope = "form"`  

Example:

| program | form_id               | change_date | change_detail                 | change_scope |
|---------|-----------------------|-------------|-------------------------------|--------------|
| epicc   | epicc_initial_contact | 2026‑01‑05  | Adds field: client_age        | form         |

### Summary

- `change_scope: form` - update the **form‑level** data dictionary page
- `change_scope: program` - update the **program‑level** index page
- Both scopes use the same `forms_changelogs` sheet
- Automation routes entries based on `change_scope`

This system keeps program‑level and form‑level governance cleanly separated while using a unified metadata source.

## Related Standards

- [Documentation Standards]({{site.baseurl}}/documentation-standards/)
- [Reporting Standards]({{site.baseurl}}/reporting-standards/)
- [Tag Reference]({{site.baseurl}}/tag-reference/)

> **Tip**: See also [Sidebar Configuration]({{site.baseurl}}/sidebar-config/) for information on how to update `_navigation.yaml` so that any new page is added to the sidebar.

## Changelog

<details markdown="1">
  <summary><strong>View Changelog Details</strong></summary>

<details markdown="1">
  <summary><strong>2026</strong></summary>

### 2026

</details>

<details markdown="1">
  <summary><strong>2025</strong></summary>

### 2025

- **2025-10-04**: Adds collapsible `<details markdown="1"></details>` section to the changelog. Adds year subsection to better organize long changelog lists.
- **2025-09-27**: Fixes `permalink:` field. Was missing the `/`.
- **2025-09-26**: Adds link to `tags.md`.
- **2025-09-25**: Adds the missing `permalink:` field to frontmatter.
- **2025-09-23**: Adds initial Markdown file.

</details>
</details>
