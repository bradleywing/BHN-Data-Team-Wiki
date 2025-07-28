---
title: Program Workflow Template
description: Standard scaffold for documenting program-specific workflows
tags: [template, workflows, documentation]
layout: default
permalink: /docs/data-team-processes/program-workflow-template
---

# Program Workflow Template

_Use this template to document core workflows such as Enrollment, Dismissal, Transfer, or Other Service Events. Each section reflects standardized roles, data inputs, and logic._

---

## Overview

- **Program Name**:  
- **Workflow Type** (e.g., Enrollment, Dismissal):  
- **Last Updated By**:  
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

_Repeat as needed_

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

## Revision History

| Date       | Change Description                       | Author     |
|------------|------------------------------------------|------------|
| YYYY-MM-DD | Initial creation                         | Bradley    |
| YYYY-MM-DD | Split Dismissal logic into separate doc  | Katy       |

---

## Related Documents

- Link to **Dismissal Workflow**
- Link to **Form Reference Dictionary**
- Link to **Program Logic Tracker**
