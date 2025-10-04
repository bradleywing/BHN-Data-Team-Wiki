---
front-matter-title: ERE Reconnection Process  
author: Bradley Wing
last_updated: 2025-09-21
category: program-documentation
category_label: Program Documentation
status: active  
program_scope: single
programs:
  - ere
tags:
  - program-docs
  - program-structure
  - reconnection
  - workflow-logic
permalink: /ere-reconnection-process/
layout: home
nav_order: 4
parent: ERE Workflows
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-11
last_reviewed: 2025-09-11
schema_version: 1.0
---

# ERE Reconnection Process

## Description

Documents the process for reconnecting a client with an agency.

## Initial Enrollment Into FAMCare

BHN Data Team staff enter referrals into FAMCare exactly as assigned by AnswerFirst and assigns the enrollment to an outreach liaison and an agency. If the AnswerFirst referral does not specify an agency and/or outreach liaison by name, the Complex Care Specialist determines the appropriate assignment of the referral.

## Reconnection Process

- The ERE Outreach Liaison receives the referral from AnswerFirst and checks CIMOR to determine if the client is already actively receiving services with an agency.
  - **If not connected**: the Outreach Liaison is to outreach as usual and transfer to another Outreach Liaison if neeeded following the ERE Transfer Process.
  - **If connected**: the Outreach Liaison is to email the Complex Care Specialist, the ERE Regional Coordinator, their agency supervisor, and the reconnection agency with the following information:
    - client name
    - AnswerFirst message number
    - agency where the client is already receiving services
- Once reconnection is confirmed:
  - The Complex Care Specialist is to update the enrollment in FAMCare to dismiss as a reconnection with the reconnection agency identified by name.
  - If the Complex Care Specialist is not available, the Outreach Liaison is to carbon copy the BHN ERE Program Manager who wiill update the enrollment in FAMCare on their behalf.

## Changelog

<details markdown="1">
  <summary><strong>View Changelog Details</strong></summary>

### 2025

- **2025-10-04**: Adds collapsible `<details markdown="1"></details>` section to the changelog. Adds year subsection to better organize long changelog lists.
- **2025-09-21**: Removes `lifecycle:` and `change-control:` fields from frontmatter as they are more appropriate for assets outside of the context of the wiki and since they overlap with tags such as `archived`, `needs-review`, `production-ready`, `change-management`, `implementation-planning`, and `stakeholder-approval`. Adds `nav_order:` and `parent:` fields to frontmatter.
- **2025-09-19**: Adds `permalink:` and `layout:` fields to frontmatter.
- **2025-08-27**: Adds initial reconnection documentation.

</details>
