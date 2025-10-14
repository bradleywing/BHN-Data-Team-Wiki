---
front-matter-title: ERE Dismissal Process  
author: Bradley Wing
last_updated: 2025-09-21
category: program-documentation
category_label: Program Documentation
status: active  
program_scope: single
programs:
  - ere
tags:
  - dismissal
  - program-docs
  - program-structure
  - workflow-logic
permalink: /ere-dismissal-process/
layout: home
nav_order: 3
parent: ERE Workflows
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-11
last_reviewed: 2025-09-11
schema_version: 1.0
---

# ERE Enrollment Dismissal Process

## Description

Documents the process for dismissing ERE program enrollments.

## Dismissal Process At Referral

Enrollments for clients who are not determined eligible and clients who choose not to engage despite being eligible for ERE program participation should be dismissed promptly by Data Team staff entering the enrollment on `PROVIDERPLACEMENT`. One of the following dismissal reasons should be selected:

<details>
<summary><strong>Dismissal Reasons Matrix</strong></summary>

<div markdown="1">

| Dismissal Reason                  | Definition                                                                                                                                                                                                                                                                                                              |
|-----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Administrative        | Definition TBD        |
| AnswerFirst Determined Ineligible | AnswerFirst determines that the client is ineligible due to residency outside of the service area or due to the fact that the client has private insurance.          |
| Client Declined               | Client declined services at any point in the referral and outreach process. This is for clients who actively communicate that they don’t want to receive/continue outreach services.      |
| CMHC Determined Ineligible        | Client’s status changes such that they cease to meet program eligibility criteria. Could include:<ul><li>Moving out of our program catchment area</li><li>Admitted to long-term residential or detention facility</li><li>Any other criteria that make them ineligible for ERE services</li></ul> |
| Reconnect    | Client has an existing team at a CMHC OR is already consistently receiving services.         |
| Transfer To Compass      | Client is dismissed because they were transferred to Compass for care.         |
| Transfer To DM3700       | Client is dismissed because they were transferred to DM3700 for care.           |

</div>
</details>

## Dismissal Process When There Has Been No Client Contact

- Outreach Liaisons are to continue intensive phone outreach for 6-7 weeks (~45 days) after the point of last contact, calling ~2 times per week and trying various numbers before initiating a program enrollment dismissal.
- If there is no response by the end of this interval, the Outreach Liaison is to discuss the matter with their agency supervisor, the ERE Regional Coordinator, and the Complex Care Specialist.
- If the decision reached is that dismissal is warranted, the Outreach Liaison is to do the following:
  - Update the latest FAMCare Pathway Event form for the client.
  - Update the ERE Client Needs form the status of each documented client need (e.g., 'Referred To Or Engaged With Resources', 'Need Met Or Stable At Three Months', and/or 'Need Met Or Stable At Six Months').
  - Submit an enrollment dismissal request via encrypted email to the BHN ERE Program Manager with a carbon copy to the ERE Regional Coordinator and the Complex Care Specialist with the following information:
    - client name
    - DOB
    - FAMCare client number
    - date of dismissal
    - dismissal reason.

## Dismissal Process For All Other Reasons

## Changelog

<details markdown="1">
  <summary><strong>View Changelog Details</strong></summary>

### 2025

- **2025-10-04**: Adds collapsible `<details markdown="1"></details>` section to the changelog. Adds year subsection to better organize long changelog lists.
- **2025-09-21**: Adds `<div markdown ="1">` tag tag to satisfy the Kramdown Markdown editor used by Jekyll since the `<details>` tag broke the Markdown table when building the site locally. Removes `lifecycle:` and `change-control:` fields from frontmatter as they are more appropriate for assets outside of the context of the wiki and since they overlap with tags such as `archived`, `needs-review`, `production-ready`, `change-management`, `implementation-planning`, and `stakeholder-approval`. Adds `nav_order:` and `parent:` fields to frontmatter.
- **2025-09-19**: Adds collapsible `<details>` tag to the `Dismissal Reasons Matrix`. Adds `permalink:` and `layout:` fields to frontmatter.
- **2025-08-28**: Adds Markdown file named initial ERE enrollment dismissal process.

</details>
