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

Data dictionaries document field-level metadata for forms, datasets, and workflows. They serve to:

- Preserve institutional memory around field definitions and usage
- Support consistent reporting and schema alignment
- Provide shareable references for program leadership and external stakeholders
- Enable future automation and validation of data logic

---

## Required Elements

Each data dictionary entry should include:

| Field               | Description                                                                 |
|---------------------|-----------------------------------------------------------------------------|
| `field_order`       | Composite key: two digits for form number, two for field order. Stored as text to preserve leading zeros. `.1` suffix indicates descriptive rows not saved to the table. |
| `fc_field_name`     | Field name in snake_case, aligned with R export conventions                 |
| `field_type`        | Data type (e.g., string, integer, boolean, date)                            |
| `value_constraints` | Allowed values, ranges, or formats (e.g., dropdown options, regex)          |
| `usage_notes`       | Clarifies how the field is used, interpreted, or transformed                |
| `source_form`       | Reference to the form or dataset where the field originates                 |
| `conditional_logic` | Notes on visibility, dependencies, or branching logic                       |
| `audit_notes`       | Deprecated values, rationale, and contributor-facing annotations            |

Sources:

---

## Core vs Pivoted Fields

- **Core fields** are directly saved to the table and not generated via JavaScript. These are the authoritative fields for reporting and schema alignment.
- **Pivoted fields** are derived from "check all that apply" inputs when the JavaScript function `updateReportFields()` has been implemented on the form. This function splits comma-delimited values into individual columns and records `0|1`. These are included for contributor clarity and reporting logic.

---

## Conditional Logic and LOV Display

- Fields with no conditional logic: `- LOV`
- Fields with conditional logic: `- LOV & Conditional Logic`
- Codes saved to the table are listed explicitly. Descriptions (not saved) are shown in parentheses to signal their role in SQL joins and contributor UX.

Example:

```text
0241 - what_mat_script_discharge
LOV & Conditional Logic:
  - '001' ('Methadone')
  - '002' ('Naltrexone')
  - '003' ('Suboxone')
  - '004' ('Vivitrol')
  - '005' ('Sublocade')
  - '006' ('Zubsolv')
```

## File-Level Metadata

Each dictionary file should include YAML frontmatter with:

```yaml
---
front-matter-title: [Program Name] [Form Name] Data Dictionary
source_form: formname.html
last_updated: YYYY-MM-DD
program_scope: single
programs:
  - string
reviewed_by:
  - name: string
  - date: YYYY-MM-DD
tags:
  - [program-name]
  - data-dictionary
  - field-metadata
layout: home
schema_version: 1.0
---
```

## Contributor Guidance

- Propose updates via pull request
- Use kebab-case for filenames (e.g., epicc-initial-contact.txt)
- Include comment headers to clarify file purpose and source
- Reference form version and source file when documenting fields
- Flag discrepancies between form logic and dictionary content
- Include descriptions in parentheses when codes are joined from SQL-choice tables
- Use .1 suffix in field_order for rows that describe aliased values not saved to the table
- Add link to the Markdown file on the landing page for data dictionaries: [index.md]({{site.baseurl}}/insert-data-dictionary-permalink/)

See [Documentation Standards]({{site.baseurl}}/documentation-standards/) for frontmatter schema and formatting conventions.

## Integration Strategy

Data dictionaries may be:

- Authored manually from form logic and stakeholder input
- Extracted from HTML forms and .doc files (see [FAMCare-HTML-Form-Code](https://github.com/Behavioral-Health-Network/FAMCare-HTML-Form-Code.git))
- Merged into a combined output for internal use and stakeholder sharing

Future automation may support validation, changelog generation, and schema versioning.

## Related Standards

- [Documentation Standards]({{site.baseurl}}/documentation-standards/)
- [Reporting Standards]({{site.baseurl}}/reporting-standards/)
- [Tag Reference]({{site.baseurl}}/tag-reference/)

> **Tip**: See also [Sidebar Configuration]({{site.baseurl}}/sidebar-config/) for information on how to update `_navigation.yaml` so that any new page is added to the sidebar.

## Changelog

<details markdown="1">
  <summary><strong>View Changelog Details</strong></summary>

### 2025

- **2025-10-04**: Adds collapsible `<details markdown="1"></details>` section to the changelog. Adds year subsection to better organize long changelog lists.
- **2025-09-27**: Fixes `permalink:` field. Was missing the `/`.
- **2025-09-26**: Adds link to `tags.md`.
- **2025-09-25**: Adds the missing `permalink:` field to frontmatter.
- **2025-09-23**: Adds initial Markdown file.

</details>
