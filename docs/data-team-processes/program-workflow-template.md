---
front-matter-title: Program Workflow Template
author: Bradley Wing
last_updated: 2025-09-22
status: active
program_scope: none
programs:
  - none
tags: 
  - data-team-facing
  - documentation
  - template
  - workflow-logic
permalink: /program-workflow-template/
layout: home
nav_order: 5
parent: Data Team Processes
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-12
last_reviewed: 2025-09-12
schema_version: 1.0
---

# Program Workflow Template

_Use this template to document core workflows such as Enrollment, Dismissal, Transfer, or Other Service Events. Each section reflects standardized roles, data inputs, and logic._

---

## Overview

- **Program Name**:  
- **Workflow Type** (e.g., Enrollment, Dismissal):  
- **Related Forms**:  

---

## Roles & Responsibilities

| Role              | Responsibilities                                      |
|-------------------|-------------------------------------------------------|
| Data Team         | Enrollment, Program assignment, Agency assignment, Pathway assignment, Program Worker assignment, Referral entry |
| Program Managers  | Program Worker reassignment                           |

---

## Workflow Steps

### Step 1: [Name of Initial Step]  

- Description:  
- Triggered By:  
- Required Fields:  
- Notes:

### Step 2: [Next Step]  

- Description:  
- Triggered By:  
- Required Fields:  
- Notes:

>_Repeat as needed_

---

## Data Mapping

| Field Name            | Description                          | Source Form         | Notes                          |
|-----------------------|--------------------------------------|---------------------|--------------------------------|
| Agency/Provider       | Employer of assigned staff           | PROVIDERPLACEMENT   | Used to assign the enrollment to the agency employing the Recovery Coach |
| Program Worker        | Recovery Coach                       | PROVIDERPLACEMENT   | Managers may reassign coaches  |

---

## Logic & Transitions

- **Program Worker Reassignment Logic**:  
  Managers must end-date the existing assignment before creating a new row. Historical continuity must be preserved.

- **Edit Access Constraints**:  
  Certain staff may not require edit access to foundational forms if their workflow is fully documented elsewhere.

---

## Related Documents

- Link to **Dismissal Workflow**
- Link to **Form Reference Dictionary**
- Link to **Program Logic Tracker**

---

## Changelog

<details markdown="1">
  <summary><strong>View Changelog Details</strong></summary>

### 2025

- **2025-10-04**: Adds collapsible `<details markdown="1"></details>` section to the changelog. Adds year subsection to better organize long changelog lists.
- **2025-09-23**: Adds `program_scope:` and `programs:` to frontmatter. Updates value of both to none.
- **2025-09-22**: Adds `nav_order:` and `parent:` fields to frontmatter. Adds `data-team-facing` tag to frontmatter.
- **2025-09-19**: Adds `layout:` field to frontmatter.
- **2025-09-16**: Updates frontmatter to bring closer into alignment with `schema_version` 1.0.
- **2025-08-15**: Updates frontmatter and tweaks format of template.
- **2025-07-28**: Adds Markdown file.

</details>
