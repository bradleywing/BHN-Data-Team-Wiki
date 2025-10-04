---
front-matter-title: FAMCare Quick Reports & Query Categories  
author: Bradley Wing
last_updated: 2025-09-22 
status: active  
program_scope: none
programs:
  - none
tags:
  - change-management
  - data-team-facing
  - docummentation
  - governance
permalink: /quick-reports-overview/
layout: home
nav_order: 3
parent: Reporting Documentation
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-11
last_reviewed: 2025-09-11
schema_version: 1.0
---

# FAMCare Quick Reports Overview & Query Categories

This document defines the primary categories used for classifying Quick Reports and SQL queries authored by the Data Team. Each category has a matching comment block format defined in [SQL Asset Style Guide](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/bf470e4ffc7111091c5274e73c26556e21809cbc/sql-asset-doc-standards.md), supporting consistent documentation and usage across the [FAMCare-SQL-Toolkit](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit.git).

---

## Audit Reports

Reports designed to interrogate data for specific business or operational questions. These support internal reflection and assessment.

- Track data quality and internal compliance
- Investigate trends or anomalies across datasets
- Often used to prepare for broader reporting or evaluation
- May examine user activity, form submission rates, or configuration usage

➡️ See [`Audit Reports`](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/sql-asset-doc-standards.md#audit-reports)

---

## Exception Reports

Reports focused on flagging data inconsistencies or absences based on defined logic or business rules.

- Highlight missing, misaligned, or duplicate entries
- Identify problematic records for review or correction
- Drive data hygiene and integrity improvements
- May inform Maintenance Scripts or audit reviews

➡️ See [`Exception Reports`](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/sql-asset-doc-standards.md#exception-reports)

---

## Extract Reports

Queries used to pull raw or structured data out of the database for various analytical or operational needs.

- Support R-based analysis, dashboards, or external exchange
- Fulfill internal or BHN program staff requests
- Provide datasets for review or sharing

➡️ See [`Extract Queries`](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/sql-asset-doc-standards.md#extract-queries)

---

## Program Management Reports

Reports authored with program directors and managers as the target audience, enabling insight and control over program activities.

- Show metrics relevant to program performance or engagement
- Track enrollment trends, service delivery, or form completion
- Tailored to match program goals and indicators

➡️ See [`Program Management Reports`](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/sql-asset-doc-standards.md#program-management-reports)

---

## Maintenance Queries

Utility queries for examining system-level objects or logs—supporting database upkeep, diagnostics, and schema inspection.

- Review contents of ERRORLOG, sys.objects, sys.indexes, and other system views
- Investigate query definitions and metadata
- Typically read-only and used in development or diagnostics

➡️ See [`Maintenance Queries`](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/sql-asset-doc-standards.md#maintenance-queries)

---

## Maintenance Scripts

Actionable scripts that apply direct changes to the database (INSERT, UPDATE, DELETE), used in targeted cleanup, onboarding corrections, or retroactive fixes.

- Always run with caution and validation
- Often informed by Exception Reports or audit queries
- Should contain detailed top-level comments describing scope and impact

➡️ See [`Maintenance Scripts`](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/sql-asset-doc-standards.md#maintentance-scripts-eg-update-delete-insert)

---

## View Definitions

Logic modules stored as views, reused across multiple reports or forms.

- Define reusable joins and filters
- Used to normalize logic and support consistent reporting
- Version control and documentation essential

➡️ See [`View Definitions`](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/sql-asset-doc-standards.md#view-definitions)

---

## External Data Sharing Reports

Reports generated for approved non-contractual external entities—supporting collaborations, transparency, or ad hoc exchanges.

- Fulfill requests from partner agencies or researchers
- Not governed by standing contractual obligations
- Typically exported in structured format

➡️ See [`External Data Sharing Reports`](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/sql-asset-doc-standards.md#external-data-sharing-reports)

---

## Compliance Reports

Reports required to meet contractual, regulatory, or policy mandates.

- Fulfill reporting duties for grants, audits, and funders
- Often follow prescribed formats and submission schedules
- May include enrollment exports, milestone summaries, or service statistics

➡️ See [`Compliance Reports`](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/sql-asset-doc-standards.md#compliance-reports)

---

## Notes

- Categories are assigned based on logic, audience, and usage—not solely on folder location.
- Reports may occasionally span multiple categories (e.g. a Program Management report with exception logic).
- All reports should be documented with matching comment block structure to aid onboarding and review.

---

## Changelog

<details markdown="1">
  <summary><strong>View Changelog Details</strong></summary>

### 2025

- **2025-10-04**: Adds collapsible `<details markdown="1"></details>` section to the changelog. Adds year subsection to better organize long changelog lists.
- **2025-09-22**: Fixes links to `FAMCare-SQL-Toolkit` GitHub main landing page. Adds `program_scope:`, `programs:`, `nav_order:` and `parent:` fields to frontmatter. Adds `change-management`, `data-team-facing`, `docummentation`, and `governance` tags to frontmatter. Adds link to `sql-asset-doc-standards.md`.
- **2025-09-19**: Adds `permalink:` and `layout:` fields to the frontmatter. Fixes the URLs so that they point to various sections in the `sql-asset-doc-standard.md` in the remote BHN [FAMCare-SQL-Toolkit](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit.git)` repo. Cleans up the links by removing the file name from all of them to enhance clarity and reduce mental load on the user.
- **2025-09-16**: Updates frontmatter to align with `schema_version:` 1.0.
- **2025-08-15**: Updates the cross-references to the renamed sql-asset-doc-standards.md throughout. Adds front-matter yaml.
- **2025-07-21**: Adds Markdown file.

</details>
