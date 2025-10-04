---
front-matter-title: FAMCare Reports & SQL Assets  
author: Bradley Wing  
last_updated: 2025-09-30
status: active  
program_scope: none
programs:
  - none
tags:
  - database-features
  - data-team-facing
  - documentation
permalink: /famcare-reports-and-assets/
layout: home
nav_order: 2
parent: Reporting Documentation
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-11
last_reviewed: 2025-09-11
schema_version: 1.0  
---

# FAMCare Reports & SQL Assets

This page documents Quick Reports used within BHN’s FAMCare implementation. It includes report descriptions, access permissions by role, publication status, and notes regarding their location, design, and maintenance.

---

These matrices catalog all named reports relevant to BHN’s FAMCare implementation, whether published in FAMCare or maintained for internal analysis. It includes Quick Reports, SSMS logic assets, and staging logic intended for reuse or publication. Assets link to SQL code and paired documentation (where available).

<details markdown="1">
<summary><strong>Exception Reports</strong></summary>

| Category | Report Name | Description | Security Groups | Run Environment | Assets |
|----------|-------------|-------------|------------------|------------------|--------|
| Exception Reports | BCR Client Active 90 Days or Longer | Identifies BCR clients who have been actively enrolled for 90 days or more to support reviewing client sfor timely dismissal. | System Administrator, GVT, BCR Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/bcr-client-active-90-days-or-longer.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/bcr-client-active-90-days-or-longer.md) |
| Exception Reports | BCR Duplicate PWY Forms Per Enrollment | Identifies duplicate Pathway forms (Referral, Initial Contact, follow-up forms, etc.) associated with a single enrollment. For each client listed, staff should verify which form version is valid and delete any redundant entries. | System Administrator, GVT, BCR Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/bcr-duplicate-pwy-forms_per_enrollment.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/bcr-duplicate-pwy-forms-per-enrollment.md) |
| Exception Reports | BCR Grant Missing | Identifies clients whose BCR Initial Contact forms are missing required grant information. This report supports program compliance and funding requirements by ensuring all eligible clients have complete grant documentation. | System Administrator, GVT, BCR Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/bcr-grant-missing.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/bcr-grant-missing.md) |
| Exception Reports | BCR Imports Miss Date Accomplished Enrolled July to Dec | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/bcr-imports-miss-date-accomplished-enrolled-july-to-dec.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/bcr-imports-miss-date-accomplished-enrolled-july-to-dec.md) |
| Exception Reports | BCR Multiple Referrals Per Enrollment | Identifies clients who have more than one BCR referral recorded within a single program enrollment. Supports exception reporting by flagging potential duplicate or erroneous referral entries. | System Administrator, GVT, BCR Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/bcr-multiple-referrals-per-enrollment.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/bcr-multiple-referrals-per-enrollment.md) |
| Exception Reports | BCR Pathway Added Client Never Enrolled | This exception report identifies cases where a client has been added to one or more Pathways without first being enrolled in a program. Pathway assignments should be made using the `PROVIDERPLACEMENT` form, but this report highlights instances where the assignment was incorrectly made using the `CLIENT` form. | System Administrator, GVT, BCR Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/bcr-pathway-added-client-never-enrolled.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/bcr-pathway-added-client-never-enrolled.md) |
| Exception Reports | BCR Referrals Placed Hidden Fields Null | | System Administrator, GVT, BCR Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/bcr-referrals-placed-hidden-fields-null.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/bcr-referrals-placed-hidden-fields-null.md) |
| Exception Reports | Client Dismissed But Client Status Still Active | Identifies clients who have a recorded enrollment dismissal but whose client status remains marked as "Active," and who do not have any open enrollments. | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/client-dismissed-but-client-status-still-active.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/client-dismissed-but-client-status-still-active.md) |
| Exception Reports | Client Status Missing | Identifies clients who lack a current status in the client status field. | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/client-status-missing.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/client-status-missing.md) |
| Exception Reports | Client With Missing Demographics | Identifies clients with missing demographic information. | System Administrator, GVT, BCR Managers, EPICC Managers, ERE Managers, YERE Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/client-with_missing-demographics.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/client-with-missing-demographics.md) |
| Exception Reports | Clients With Multiple Active Enrollments | Flags clients with more than one active enrollment at the same time, regardless of program. | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/clients-with-multiple-active-enrollments.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/clients-with-multiple-active-enrollments.md) |
| Exception Reports | Clients With Multiple Active Pathways | Identifies clients who are assigned to more than one active Pathway at the same time. | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/clients-with-multiple-active-pathways.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/clients-with-multiple-active-pathways.md) |
| Exception Reports | Clients With Multiple Pathways Sharing Same Start Date | Identifies clients who have multiple active Pathways that share the same start date. This helps surface potential data entry errors or structural duplication in Pathway assignment workflows. | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/clients-with-multiple-pathways-sharing-same-start-date.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/clients-with-multiple-pathways-sharing-same-start-date.md) |
| Exception Reports | EPICC Duplicate PWY Forms Per Enrollment | | System Administrator, GVT, EPICC Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/epicc-duplicate-pwy-forms-per-enrollment.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/epicc-duplicate-pwy-forms-per-enrollment.md) |
| Exception Reports | EPICC IC Opioids of Use Hidden Fields Null | Flags Initial Contact records where the JavaScript function `updateReportFields()` failed to execute, resulting in missing binary values for opioid use fields. These cases suggest that `EPICC_OPIOIDS_OF_USE` was selected, but the pivoted fields (`OPIOID_OF_USE_*`) remain `NULL`. Affected records retain values in `EPICC_OPIOIDS_OF_USE` but show `NULL` in one or more corresponding pivot fields, leading to incomplete or misleading data downstream. | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/epicc-ic-opioids-of-use-hidden-fields-null.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/epicc-ic-opioids-of-use-hidden-fields-null.md) |
| Exception Reports | EPICC IC PWY Date Outside Same Day Enrollment Range | Flags EPICC Initial Contact records where the enrollment start and end dates are identical, but the pathway date differs. The business rule conveyed to the Recovery Coaches is that they should always record the Initial Contact Pathway Date as the date that shows for this event on the Master Pathway Dashboard. Since the dashboard always shows End Dates, this is one day outside of the enrollment start and end range for enrollments that are opened and closed on the same day to allow for an already active enrollment to remain open. Changing the Pathway Date for the Initial Contact to be the same date as the enrollment start date will correct duplication in PATHWAYEVENTCLIENT in almost every instance. One known exception to this is instances where the Initial Contact for a same day enrollment is missing. Pathways module will consider the Initial Contact for the active enrollment to satisfy this Pathway Event. If possible, the missing Initial Contact should be entered. Failing that, we will have to filter out Initial Contacts with PATHWAY_DATE <> ENROLLMENT_STARTING_DATE in R to remove duplicates unless and until GVT offers a substantial fix for the structural defect in the Pathways Module. | System Administrator, GVT, EPICC Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/epicc-ic-pwy-date-outside-same-day-enrollment-range.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/epicc-ic-pwy-date-outside-same-day-enrollment-range.md) |
| Exception Reports | EPICC Imports Miss Date Accomplish Enrolled July to Dec | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/epicc-imports-miss-date-accomplish-enrolled-july-to-dec.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/epicc-imports-miss-date-accomplish-enrolled-july-to-dec.md) |
| Exception Reports | EPICC Imports Miss Date Accomplish Open as of Dec | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/epicc-imports-miss-date-accomplish-open-as-of-dec.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/epicc-imports-miss-date-accomplish-open-as-of-dec.md) |
| Exception Reports | EPICC Referral Completed Missing Initial Contact | | System Administrator, GVT, EPICC Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/epicc-referral-completed-missing-initial-contact.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/epicc-referral-completed-missing-initial-contact.md) |
| Exception Reports | Pathway Closed Enrollment Still Active | | System Administrator, GVT, BCR Managers, Complex Care Managers, EPICC Managers, ERE Managers, YERE Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/pathway-closed-enrollment-still-active.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/pathway-closed-enrollment-still-active.md) |
| Exception Reports | Pathway Still Open Enrollment Closed | Flags cases where a client's Pathway remains open while their program enrollment has already ended. This report supports timely Pathway closure and ensures alignment between enrollment status and case management records. | System Administrator, GVT, BCR Managers, Complex Care Managers, EPICC Managers, ERE Managers, YERE Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/pathway-still-open-enrollment-closed.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/pathway-still-open-enrollment-closed.md) |
| Exception Reports | YERE Caregiver Needs Hidden Fields Null | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/yere-caregiver-needs-hidden-fields-null.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/yere-caregiver-needs-hidden-fields-null.md) |
| Exception Reports | YERE Core Exceptions By Type | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/yere-core-exceptions-by-type.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/yere-core-exceptions-by-type.md) |
| Exception Reports | YERE Duplicate PWY Forms Per Enrollment | Identifies duplicate Pathway forms (Referral, Initial Assessment, etc.) submitted for the same enrollment so that these may be deleted. | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/yere-duplicate-pwy-forms-per-enrollment.) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/yere-duplicate-pwy-forms-per-enrollment.md) |
| Exception Reports | YERE Hospital Visit Note Hidden Fields Null | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/yere-hospital-visit-note-hidden-fields-null.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/yere-hospital-visit-note-hidden-fields-null.md) |
| Exception Reports | YERE IA Hidden Fields Null | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/yere-ia-hidden-fields-null.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/yere-ia-hidden-fields-null.md) |
| Exception Reports | YERE Youth Needs Hidden Fields Null | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/yere-youth-needs-hidden-fields-null.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/yere-youth-needs-hidden-fields-null.md) |

</details>

<br>

<details markdown="1">
<summary><strong>Program Management Reports</strong></summary>

| Category | Report Name | Description | Security Groups | Run Environment | Assets |
|----------|-------------|-------------|------------------|------------------|--------|
| Program Management | BCR Caseload Report | Summarizes BCR program client caseloads, including enrollment, worker assignment, agency, milestone completion status (Initial Contact, Referrals Placed), payor source status, housing status, and program participation and grant funding source from the Initial Contact form. | System Administrator, GVT, BCR Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/program-management-reports/bcr-caseload-report.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/program-management-reports/bcr-caseload-report.md) |
| Program Management | EPICC Candidates for Re-Engagement or Dismissal | Identifies EPICC clients who are candidates for either dismissal or re-engagement based on milestone participation, client status, and treatment path progression. Supports program management decision-making by surfacing clients who may require outreach to re-engage or closure, in alignment with contractual obligations and workflow expectations. | System Administrator, GVT, EPICC Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/program-management-reports/epicc-candidates-for-re-engagement-or-dismissal.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/program-management-reports/epicc-candidates-for-re-engagement-or-dismissal.md) |
| Program Management | EPICC Caseload Report | Summarizes EPICC program client caseloads, including enrollment details, worker assignment, agency, milestone completion status, program participation, and treatment path indicators. It supports program managers in tracking milestone compliance, reviewing treatment progression, and monitoring worker caseloads. | System Administrator, GVT, BCR Managers | SSMS, Quick Report, EPICC Managers | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/program-management-reports/epicc-caseload-report.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/program-management-reports/epicc-caseload-report.md) |
| Program Management | EPICC EMS Report | Returns EPICC referrals for clients referred by EMS/Fire Protection Districts (`EPICC_REFERRING_AGENCY_CODE = '073'`) or those whose referrals included EMS involvement (`EMS_INVOLVED_REF = 'Yes'`). The report supports compliance tracking, audit review, and operational decision-making by surfacing key EMS referral data. | System Administrator, GVT, EPICC Managers | SSMS, Quick Report, EPICC Managers | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/program-management-reports/epicc-ems-report.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/program-management-reports/epicc-ems-report.md) |
| Program Management | ERE Caseload Report | Summarizes YERE program client caseloads, including enrollment details, worker assignment, agency, milestone completion status, payor information, and suicide attempt history. Supports program managers in tracking milestone compliance, identifying overdue forms, and reviewing worker caseloads. | System Administrator, GVT, BCR Managers | SSMS, Quick Report, ERE Managers | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/program-management-reports/ere-caseload-report.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/program-management-reports/ere-caseload-report.md) |
| Program Management | YERE Caseload Report | Summarizes YERE program client caseloads, including enrollment details, worker assignment, agency, milestone completion status, payor information, and suicide attempt history. | System Administrator, GVT, YERE Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/program-management-reports/yere-caseload-report.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/program-management-reports/yere-caseload-report.md) |

</details>

<br>

<details markdown="1">
<summary><strong>Audit Reports</strong></summary>

| Category | Report Name | Description | Security Groups | Run Environment | Assets |
|----------|-------------|-------------|------------------|------------------|--------|

</details>

<br>

<details markdown="1">
<summary><strong>Compliance Reports</strong></summary>

| Category | Report Name | Description | Security Groups | Run Environment | Assets |
|----------|-------------|-------------|------------------|------------------|--------|

</div>
</details>

<br>

<details markdown="1">
<summary><strong>External Data Sharing Reports</strong></summary>

| Category | Report Name | Description | Security Groups | Run Environment | Assets |
|----------|-------------|-------------|------------------|------------------|--------|

</details>

---

> These tables can be expanded as additional reports are developed or published. Folder paths point to files within the [FAMCare-SQL-Toolkit](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit.git) repository.

---

## Security Groups Legend

- **System Administrator**: Required for Data Team full visibility.
- **GVT**: Required for vendor to have visibility.
- **Program Managers**: Group-specific access; assigned based on report scope.
- **LINCS Managers**, **YERE Managers**, **EPICC Managers**, etc.: Restricted access based on role relevance.

For role-specific guidance, refer to [Saving & Securing Quick Reports](saving-and-securing-quick-reports.md).

---

## File Naming & Folder Structure

All SQL logic referenced above lives in [FAMCare-SQL-Toolkit](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit.git), aligned to the following structure:

Each file contains multi-line top-level comment blocks per the shared style guide. See: [SQL Asset Style Guide](https://github.com/BHN/FAMCare-SQL-Toolkit/blob/main/sql-asset-doc-standards.md)

---

## Links & Resources

- [Reporting Standards](reporting-standards.md)
- [Report Request Tracker](reports-request-tracker.md)
- [Quick Reports Roadmap](quick-reports-overview.md)
- [Saving & Securing Quick Reports](saving-and-securing-quick-reports.md)
- [SQL Asset Style Guide](https://github.com/BHN/FAMCare-SQL-Toolkit/blob/main/sql-asset-doc-standards.md)

---

## Changelog

<details markdown="1">
  <summary><strong>View Changelog Details</strong></summary>

### 2025

- **2025-10-04**: Adds collapsible `<details markdown="1"></details>` section to the changelog. Adds year subsection to better organize long changelog lists.
- **2025-09-30**: Replaces `<div markdown="1"></div>` with `<details markdown="1">` after learning that `Jekyll` must be configured to parse Markdown inside HTML blocks. While GitHub Pages will should build tables correctly if Kramdown is configured to use the `GitHub Flavored Markdown (GFM)` in the `_config.yaml`.
- **2025-09-23**: Adds link to `reporting-standards.md`.
- **2025-09-22**: Adds `program_scope:`, `programs:`, `nav_order:` and `parent:` fields to frontmatter. Adds `<div markdown="1"></div>` element to each `<details></details>` element throughout the page to satisfy the Kramdown Markdown editor used by Jekyll so that the collapsible sections do not break the Markdown within them. Adds `database-features`, `data-team-facing`, and `documentation` tags to frontmatter. Adds links to `FAMCARE-SQL-Toolkit` repo.
- **2025-09-19**: Adds `permalink:` and `layout:` fields to frontmatter.
- **2025-09-16**: Updates frontmatter. Fixes cross-reference to saving-and-securing-quick-reports.md.
- **2025-08-15**: Continues the process of adding descriptions to exception reports. Adds one new exception report and several program management reports to the respective matrices. Updates the cross-reference to the renamed sql-asset-doc-standards.md. Adds front-matter yaml.
- **2025-08-01**: Adds substantial updates to famcare-reports-and-assets.md. Adds some missing descriptions. Splits up the reports matrix into one matrix per report/query category. Adds collapsible sections around each table to increase scanability of the page for users. Adds two program management report rows to the Program Management Reports matrix.
- **2025-07-30**: Adds a few additional reports to the reports matrix.
- **2025-07-28**: Adds initial Markdown file. Fixes all URLs to use kebab-case.

</details>
