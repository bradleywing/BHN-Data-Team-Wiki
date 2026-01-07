---
front-matter-title: Data Dictionary Standards
author: Bradley Wing
last_updated: 2026-01-06
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

While FAMCare's SQL Server database maintains an _active_ data dictionary (system tables that store object metadata), it is equally vital that we maintain _passive_ or manually curated data dictionaries for reference purposes. These provide:

- Human-readable definitions
- Conditional logic documentation
- Reporting and analytical flags
- Pivoted field explanations
- Changelogs and schema versioning

These passive dictionaries are the authoritative reference for analysts, report developers, and stakeholders.

---

## Required Field Elements

All field‑level metadata used to generate form data dictionary pages is maintained in the `fields` sheet of the `FC_Data_Dictionaries` Excel file. Other sheets in the workbook (such as `forms_meta`, `forms_changelogs`, and various history tables) store complementary metadata, but the `fields` sheet is the canonical source for individual field definitions. This Excel file is the authoritative, contributor‑maintained source of truth for all field‑level metadata across programs and forms. The documentation automation reads directly from this file to generate the Core Fields matrix, Pivoted Fields matrix, and Core Field Details sections for each form.

The table below defines the required columns in the `fields` sheet. These elements form the minimum metadata necessary for automated documentation, reporting alignment, and long‑term governance. Additional columns may appear in the Core Fields or Pivoted Fields matrices, but the fields listed here represent the canonical schema that must be maintained in Excel.

| Field                         | Description                                                                                                                         |
|-------------------------------|-------------------------------------------------------------------------------------------------------------------------------------|
| `field_order`                 | Composite key: two digits for form number, two for field order. Stored as text to preserve leading zeros.                           |
| `fc_field_prompt`             | The human‑readable question text or label displayed to users in the form UI.                                                        |
| `fc_field_name`               | Field name in snake_case, aligned with R export conventions.                                                                        |
| `view_field_name`             | The field name used in the SQL view for the stored code value. For master‑table fields, this corresponds to the code column.        |
| `view_description_field_name` | The field name used in the SQL view for the human‑readable description associated with the code. Used only for master‑table fields. Otherwise, the value of `NA` is recorded. |
| `variable_name`               | The exported variable name(s) used in R. For fields that produce two variables (e.g., `dropdown_master_table`), list both names separated by a slash (e.g., `client_status_code` / `client_status_desc`). |
| `data_type`                   | Exact SQL Server data type, including length or precision (e.g., `varchar(75)`, `varchar(30)`, `int`, `bit`, `date`). This detail is critical for preventing form errors when new values exceed field constraints. This detail may be obtained from the back-end via SSMS or from the front-end via form validation using the forms editor. |
| `question_type`               | Input type (e.g., radio, checkbox, text_single_line).                                                                               |
| `enabled_lov_values`          | Allowed, active values, semicolon-delimited.                                                                                        |
| `disabled_lov_values`         | Disallowed, inactive values, semicolon-delimited.                                                                                   |
| `master_table_name`           | Name of master table (if applicable).                                                                                               |
| `conditional_logic`           | Visibility or population rules (see Conditional logic standards).                                                                   |
| `is_required_field`           | Whether the field is required.                                                                                                      |
| `is_reporting_field`          | Whether the field appears directly in reports.                                                                                      |
| `is_analytical_field`         | Whether the field is used in joins, filters, or logic.                                                                              |
| `audit_notes`                 | Deprecated values, renames, and contributor-facing annotations                                                                      |

This schema is normalized and script-friendly, enabling automated Markdown generation.

---

## Metadata Governance Principles

The `FC_Data_Dictionaries` Excel file is the authoritative source of truth for all field‑level metadata across programs. Contributors maintain this file not only to support documentation, but to ensure long‑term consistency, auditability, and alignment across reporting, analytics, and form development. The following principles guide all contributions:

- **Single Source of Truth**  
  All field definitions, LOVs, conditional logic, and cross‑walk values must be maintained in the Excel file. Markdown files are generated artifacts, not hand‑edited documents.
- **Normalization and Consistency**  
  Values must follow the standards in this document (naming conventions, LOV formats, conditional logic syntax, reporting/analytical flags). Consistency across programs is essential for reliable automation and cross‑program reporting.
- **Auditability**  
  Any change to field definitions, LOVs, or logic must be accompanied by a corresponding entry in the `forms_changelogs` sheet. This ensures that all updates are traceable and reproducible.
- **Contributor Accountability**  
  Contributors are responsible for validating that metadata reflects the actual form logic, SQL view behavior, and reporting requirements. Discrepancies must be flagged and resolved before publishing.

These principles ensure that the metadata ecosystem remains durable, teachable, and automation‑friendly as programs evolve.

---

## Contributor Guidance

Contributors maintain the `FC_Data_Dictionaries` Excel file and ensure that all metadata is complete, accurate, and aligned with the standards in this document. The following practices support consistency, auditability, and automation:

### File and Documentation Practices

- Use **kebab-case** for Markdown filenames (e.g., `epicc-initial-contact.md`).
- Include a brief comment header at the top of each Markdown file indicating its purpose and source.
- Ensure each form’s landing page links to its generated Markdown file.

### Metadata Maintenance

- Update the `fields` sheet whenever a form changes, including new fields, renames, LOV updates, or logic changes.
- Reference the **source file** when updating metadata to ensure alignment with the current form.
- Follow the metadata schema exactly; deviations break automation and downstream reporting.

### Quality and Consistency Checks

- Flag discrepancies between form logic, SQL view behavior, and the metadata in Excel.
- Ensure that LOVs, conditional logic, and reporting/analytical flags follow the standards in this document.
- For master-table fields, include both the **code** and **description** variable names in the `variable_name` column, separated by a slash.

### Changelog Responsibilities

- Record all changes in the `forms_changelogs` sheet using the appropriate `change_scope` (`form` or `program`).
- Ensure that changelog entries are clear, concise, and reflect the actual metadata updates.

See [Documentation Standards]({{site.baseurl}}/documentation-standards/) for frontmatter schema and formatting conventions.

---

## Changelog Schema (`forms_changelogs`)

All form‑level and program‑level metadata changes must be recorded in the `forms_changelogs` sheet of the `FC_Data_Dictionaries` Excel file. This sheet is the authoritative record of how form metadata, SQL assets, and dictionary definitions evolve over time.

Each row represents a single change event and must include the following fields:

| Column              | Description                                                                 |
|---------------------|-----------------------------------------------------------------------------|
| `program`           | Program identifier (matches `forms_meta`).                                  |
| `form_id`           | Form identifier in snake_case.                                              |
| `change_date`       | Date of the change in ISO format (`YYYY-MM-DD`).                            |
| `change_detail`     | Clear, concise description of the change.                                   |
| `change_scope`      | `form` or `program`, depending on the level of impact.                      |
| `change_source`     | Origin of the change: `html_form`, `sql_view`, or `data_dictionary`.        |
| `change_asset_id`   | Specific asset identifier (see below).                                      |

### Asset Identification

To support multi‑destination documentation and preserve provenance, each changelog entry must identify the specific asset where the change occurred:

- **HTML forms** → use the base filename without extension  from `FAMCare-HTML-Form-Code`
  - Example: `pwepiccic`
- **SQL views** → use the kebab‑case filename from `FAMCare‑SQL‑Toolkit`  
  - Example: `q-epicc-ic`
- **Data dictionary changes** → use `data-dictionary`

These identifiers allow the automation to route changes to the correct destinations (form documentation, SQL asset documentation, etc.) while maintaining clarity in the wiki output.

### Relationship to Automation

The `change_source` and `change_asset_id` fields in the `forms_changelogs` table in the Excel file allow the documentation automation to:

- route SQL view changes to `FAMCare-SQL‑Toolkit` documentation  
- route HTML form changes to `FAMCare-HTML‑Form‑Code` documentation  
- route dictionary changes to the appropriate global or form‑level pages  
- render grouped changelogs on form‑level pages without losing context  

These fields are required for all changelog entries.

---

## Metadata Flow Diagram

```md
FC_Data_Dictionaries.xlsx
   ├── fields sheet  ────────────────┐
   ├── forms_meta sheet              │
   └── forms_changelogs sheet        │
                                     ▼
                       r-parser-for-data-dictionaries.R
                                     ▼
                        Markdown files (one per form)
                                     ▼
                      Program index pages (auto-generated)
                                     ▼
                       Wiki site (docs/data-dictionaries/)
```

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

---

## Core Fields Matrix Columns

The Core Fields matrix presents the most important metadata for each field at a glance. It is designed as a cross‑walk between database fields, view fields, and exported variables, and is optimized for analysts, developers, and external stakeholders who need to reconcile naming conventions across systems.

The matrix includes the following columns:

- **Field Order (`sort`)**  
  The canonical composite key for the field, combining form order and field order. Stored as text to preserve leading zeros.
- **FC Field Prompt**  
  The human‑readable prompt displayed in the form.
- **FC Field Name**  
  The database column name used in the source table.
- **View Field Name**  
  The field name used in the SQL view for the code value.
- **View Description Field Name**  
  The field name used in the SQL view for the human‑readable description associated with the code.
- **Variable Name(s)**  
  The exported variable name(s) used in R and downstream reporting. For fields that produce two variables (e.g., `dropdown_master_table`), list both in the same cell, separated by a slash: `client_status_code / client_status_description`.
- **Master Table**  
The lookup table associated with the field, if applicable.
- **Hidden / Required / Reporting / Analytical / System / Enabled**  
Flags indicating field behavior and usage.

---

## Pivoted Fields Matrix Columns

Pivoted fields represent the hidden, machine‑generated fields created from “check all that apply” inputs. These fields are never shown in the UI and are populated only when the parent field equals a specific value. Because they behave differently from core fields, they are documented in a dedicated Pivoted Fields matrix.

The Pivoted Fields matrix includes the following columns:

- **Field Order (`sort`)**
  The canonical composite key for the pivoted field. This value aligns with the parent field’s `sort` value and ensures that pivoted fields sort correctly beneath their parent.
- **FC Field Name**
  The database column name for the pivoted field.
- **Parent Field**
  The `fc_field_name` of the field that generates this pivoted field. This identifies the originating “check all that apply” question.
- **Populated When**
  The condition under which the pivoted field is populated, typically of the form: Populated only when `<parent_field> = '<code>'`.
- **Values**
  The allowed values for the pivoted field. Pivoted fields always use `0;1` to represent unchecked/checked.
- **Notes**
  Contributor‑facing annotations, including renames, deprecated values, or clarifications.

This matrix replaces older conventions that included redundant columns such as `Hidden` or `Required`. Pivoted fields are always hidden, always conditional, and always optional in the UI, so those attributes are implicit and do not need to be documented.

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

### Index Automation

Index pages for the `data-dictionaries` folder are automatically generated and updated by the documentation scripts. Content-aware writes ensure that identical content does not produce Git diffs. Since the parsing script overwrites files each time it is run, the conditional logic in the script syntax ensures that only content changes will need to be committed to the repository. Contributors should not manually edit the index pages in the `data-dictionaries` folder because any manual changes made will be overwritten the next time the parsing script is run.

---

## Changelog Standards

Changelogs provide a durable, contributor-friendly record of how data dictionaries evolve over time. All changelog entries are maintained in the `forms_changelogs` sheet of the `FC_Data_Dictionaries` Excel file, which serves as the single source of truth for both form-level and program-level changes. This centralized metadata enables the documentation automation to route each entry to the correct Markdown file and ensures that updates to the wiki remain consistent, auditable, and reproducible. The standards below define how changelog entries are categorized, structured, and rendered across the documentation ecosystem.

### Changelog Structure

Changelog entries are grouped and rendered in a consistent, automation‑friendly structure that preserves clarity when multiple assets contribute changes to a single form.

Each changelog consists of:

- A top‑level `## Changelog` header  
- An outer `<details markdown="1">` block that collapses the entire changelog  
- Inner `<details markdown="1">` blocks, one per year  
- Within each year, entries are grouped by **asset type**  
- Each asset‑type group uses a unique header of the form:  
  - `#### YYYY — SQL View Changes`  
  - `#### YYYY — HTML Form Changes`  
  - `#### YYYY — Data Dictionary Changes`  
- Each group contains a bullet list of dated changes

### Grouping Rules

- Changes are grouped by **year**, newest year first  
- Within each year, changes are grouped by **asset type**  
- Within each asset type, changes are sorted by **change_date**, newest first  
- SQL view changes include the `change_asset_id` in parentheses  
- HTML form and dictionary changes omit the asset ID in the bullet text  
- All dates use ISO format (`YYYY-MM-DD`)  
- All descriptions use present tense  

### Example Output

```markdown
**2024**

**2024 - SQL View Changes**

- **2024-03-21**: Updates join logic (q-epicc-ic).  

**2024 - HTML Form Changes**

- **2024-01-15**: Adds new field: `client_consent_date`.

**2024 - Data Dictionary Changes**

- **2024-01-05** Clarifies the definition of `status`.
```

### Forms With No Changelog Entries

If no entries exist for a form, the generated Markdown includes:

```markdown
## Changelog

_No changes recorded._
```

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

### Changelog Scoping Summary

- `change_scope: form` - update the **form‑level** data dictionary page
- `change_scope: program` - update the **program‑level** index page
- Both scopes use the same `forms_changelogs` sheet
- Automation routes entries based on `change_scope`

This system keeps program‑level and form‑level governance cleanly separated while using a unified metadata source.

---

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

- **2026-01-06**: Updates the Required Elements matrix. Revamps the entire `## Required Elements` section to more explicitly address guidance for the Excel file that is the source of the Markdown documentation in the wiki. Adds metadata governance principles. Rewrites `## Contributor Guidance` section to move it beyond a mere list. Adds a diagram to represent the workflow that produces the Markdown documentation via R script. Reorganizes sections to establish a more logical ordering from the abstract to field-level concerns and the specifics of changelogs.
- **2026-01-05**: Updates throughout to streamline content. Expands on the reuqired elements matrix; provides more concrete guidance for maintaining core fields, pivoted fields, and conditional logic.Adds section on building index.md files. Revamps and expands changelog standards to cover form-scope and program-scope changelogs.

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
