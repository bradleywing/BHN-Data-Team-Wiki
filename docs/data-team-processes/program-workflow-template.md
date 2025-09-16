---
front-matter-title: Program Workflow Template
author: Bradley Wing
last_updated: 2025-08-14
status: active
tags: 
  - template
  - workflows
  - documentation
permalink: /program-workflow-template/
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

## Changelog

- **YYYY-MM-DD**: Adds initial Markdown documentation.

---

## Related Documents

- Link to **Dismissal Workflow**
- Link to **Form Reference Dictionary**
- Link to **Program Logic Tracker**
