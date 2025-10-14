---
front-matter-title: SQL Reports Requests Tracker  
author: Bradley Wing
last_updated: 2025-09-30
status: active  
program_scope: none
programs:
  - none
tags:
  - change-management
  - data-team-facing
  - docummentation
  - governance
permalink: /reports-request-tracker/
layout: home
nav_order: 4
parent: Reporting Documentation
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-11
last_reviewed: 2025-09-11
schema_version: 1.0  
---

# SQL Report Requests Tracker

This page documents current and planned SQL-based Quick Reports in development or awaiting specification. Reports may originate from stakeholder requests or be initiated internally by the Data Team to support program monitoring, data validation, or exception remediation.

---

## Purpose

- Maintain a centralized record of **requested and proposed reports**
- Track requestors, intended use cases, and development status
- Determine optimal implementation format (SQL, R, Power BI) based on logic and workflow
- Provide visibility into Data Team priorities and progress

---

## Requested Reports Table

<details markdown="1">
<summary><strong>Requests</strong></summary>

| Report Name                                           | Request Type | Report Category     | Program / Requestor     | Description / Purpose                                       | Priority | Status   | Format |
|-------------------------------------------------------|--------------|----------------------|--------------------------|-------------------------------------------------------------|----------|----------|--------|
| BCR Dismissed Enrollment to Accept EPICC Referral     | New Report   | Program Management    | BCR / Data Team          | Analyze transitions from BCR dismissals into EPICC enrollment | Medium   | Backlog  | SQL    |
| BCR Grant Tracking                                    | New Report   | Program Management    | Data Team                | Track grant allocation across BCR enrollments                | Medium   | Backlog  | SQL    |
| BCR Initial Contacts Missing Essential Data           | New Report   | Exception Reports     | BCR / Data Team          | Identify missing data elements in intake documentation       | Medium   | Backlog  | SQL    |
| BCR Client Counseling Session Grant Check             | New Report   | Exception Reports     | BCR / Data Team          | Validate grant assignments within counseling sessions        | Medium   | Backlog  | SQL    |
| YERE Primary Reason for Referral                      | New Report   | Program Management    | YERE / Theresa Schafer   | Count referrals by the primary reason for referral           | High     | Scoping  | SQL    |
| BCR Needs and Referrals Placed                        | New Report   | Program Management    | BCR / Data Team          | Assess alignment of identified needs with referrals placed   | Medium   | Backlog  | SQL    |
| BCR Referrals Placed Agencies                         | New Report   | Program Management    | BCR / Data Team          | Analyze which agencies receive referrals                     | Medium   | Backlog  | SQL    |
| EPICC Re-Engagement Caseload                          | New Report   | Program Management    | EPICC / Data Team        | Identify EPICC clients eligible for re-engagement efforts    | High     | Backlog  | SQL    |
| Enrollment Dismissed, Pathway Closed, Program Worker Not Ended | New Report | Exception Reports     | Multi-Program / Data Team | Spot logic mismatches in enrollment lifecycle               | Medium   | Backlog  | SQL    |
| ERE Duplicate PWY Forms Per Enrollment                | New Report   | Exception Reports     | ERE / Data Team          | Identify duplication errors in ERE pathway assignment        | Medium   | Backlog  | SQL    |
| ERE Transfer Report                | New Report   | Program Management     | ERE          | Document client transfers across Outreach Liaisons and agencies to enable program leadership to manage workloads        | Medium   | Backlog  | SQL    |
| ERE Dismissals Report                | New Report   | Program Management     | ERE          | Document ERE enrollment dismissals to enable program leadership to assess program outcomes        | Medium   | Backlog  | SQL    |
| EPICC Client on Formal Treatment Path But Not Referred SU Tx Agency Summation Record | New Report | Exception Reports | EPICC / Data Team | Identifies clients on formal treatment path (Mat or Non-MAT) that lack records in the SU Treatment Agency summation table for that enrollment | Medium | Blocked | SQL |
| EPICC Casenotes Report | New Report | Program Management | EPICC / Data Team | BLANK | Medium | Backlog | SQL |
| ERE Casenotes Report | New Report | Program Management | ERE / Data Team | BLANK | Medium | Backlog | SQL |
| YERE Casenotes Report | New Report | Program Management | YERE / Data Team | BLANK | Medium | Backlog | SQL |
| EPICC Hospital Referrals Report | New Report | Program Management | EPICC / Data Team | BLANK | Medium | Backlog | SQL |
| EPICC Community Referrals Report | New Report | Program Management | EPICC / Data Team | BLANK | Medium | Backlog | SQL |

</details>

---

## Report Format Guidelines

Formats will be assigned by the Data Team after reviewing stakeholder needs, data availability, and output goals. Options include:

- `SQL`: Quick Reports within FAMCare (default unless otherwise noted)
- `R`: For analytical summaries, trend analysis, and multi-step data joins
- `Power BI`: Reserved for dashboarding use cases (pending FAMCare vendor integration)
- `TBD`: To be used if format not yet assigned

Format may shift over time as tools evolve and vendor capabilities expand.

---

## Status Definitions

- **Published**: Fully saved within FAMCare with documented logic and folder structure.
- **Under Review**: Awaiting Data Team or program feedback.
- **In Progress**: Actively under development; SQL authored but not finalized.
- **Scoping**: Requirements are being gathered or clarified.
- **Backlog**: Accepted but not yet prioritized or active.
- **On Hold**: Deferred due to dependencies or reprioritization.
- **Blocked**: Work is stalled due to a specific dependency or constraint beyond the team's control.

---

## Related Wiki Pages

- [Reporting Standards]({{site.baseurl}}/reporting-standards/)
- [FAMCare Reports & Assets]({{site.baseurl}}/famcare-reports-and-assets/)
- [Quick Reports Overview]({{site.baseurl}}/quick-reports-overview/)
- [Report Roadmap]({{site.baseurl}}/quick-reports-roadmap/)
- [Saving & Securing Quick Reports]({{site.baseurl}}/saving-and-securing-quick-reports/)

---

## Changelog

<details markdown="1">
  <summary><strong>View Changelog Details</strong></summary>

### 2025

- **2025-10-04**: Adds collapsible `<details markdown="1"></details>` section to the changelog. Adds year subsection to better organize long changelog lists.
- **2025-09-30**: Replaces `<div markdown="1"></div>` with `<details markdown="1">` after learning that `Jekyll` must be configured to parse Markdown inside HTML blocks. While GitHub Pages will should build tables correctly if Kramdown is configured to use the `GitHub Flavored Markdown (GFM)` in the `_config.yaml`.
- **2025-09-25**: Fixes link to `/saving-and-securing-quick-reports/`.
- **2025-09-23**: Adds link to `reporting-standards.md`. Adds `EPICC Casenotes Report`, `ERE Casenotes Report`, `YERE Casenotes Report`, `EPICC Hospital Referrals Report`, and `EPICC Community Referrals Report` to the list of requested reports. Removes the `ERE Hospital Visit Note Report` because the program manager indicated that it was no longer needed after adding a column for hospital visit on the `ERE Caseload Report`.
- **2025-09-22**: Adds `program_scope:`, `programs:`, `nav_order:` and `parent:` fields to frontmatter. Adds `<div markdown="1"></div>` element to each `<details></details>` element throughout the page to satisfy the Kramdown Markdown editor used by Jekyll so that the collapsible sections do not break the Markdown within them. Fixes links to the related wiki pages. Adds `change-management`, `data-team-facing`, `docummentation`, and `governance` tags to frontmatter.
- **2025-09-19**: Adds `layout:` field to frontmatter.
- **2025-09-16**: Updates frontmatter to align with `schema_version` 1.0. Adds `ERE Hospital Visit Note Report`, `ERE Transfer Report`, and `ERE Dismissals Report` to the list of requested reports. Fixes typo in row for `EPICC Client on Formal Treatment Path But Not Referred SU Tx Agency Summation Record`.
- **2025-08-17**: Adds collapsible `<details>` tag around the `Requests` matrix.
- **2025-08-15**: Adds Markdown file. Adds frontmatter.

</details>
