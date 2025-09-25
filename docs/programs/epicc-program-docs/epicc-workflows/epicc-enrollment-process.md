---
front-matter-title: EPICC Enrollment Workflow  
author: Bradley Wing
last_updated: 2025-09-21
status: active
program_scope: single
programs:
  - epicc
tags:
  - enrollment
  - program-docs
  - program-structure
  - workflow-logic
permalink: /epicc-enrollment-process/
layout: home
nav_order: 1
parent: EPICC Program Workflows
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-18
last_reviewed: 2025-09-18
schema_version: 1.0
---

# EPICC Enrollment Workflow

This document outlines the enrollment responsibilities and logic for the EPICC program.  
It excludes dismissal procedures, which are now delegated to the EPICC program managers.

---

## Enrollment Roles and Access

- **Enrollment Creation & Assignment**  
  Laura and the Data Team initiate client enrollment by:  
  - Creating the enrollment record  
  - Entering referral details  
  - Assigning a Program Worker (Coach)

- **Coach Access Limits**  
  Coaches do **not** require edit access to the Enrollment form (`PROVIDERPLACEMENT`).  
  Their workflow focuses on Pathway and treatment documentation via summation forms.

---

## Agency Attribution

- The **Agency** field on `PROVIDERPLACEMENT` reflects the employer of the assigned Coach.  
- **Treatment Agency** details are **not** recorded in the enrollment form.  
  Instead, they are captured in the **Active Treatment Agency Summation**, accessed via Pathway Forms.

---

## Program Worker Reassignment

When a client is reassigned to a new Coach:

- Managers update the Program Worker assignment by:  
  1. Adding an **end date** to the current worker’s entry  
  2. Creating a **new row** for the incoming Coach

This preserves historical assignment data while ensuring operational continuity.  

## Changelog

- **2025-09-21**: Adds `enrollment`, `program-docs`, `program-structure`, and `workflow-logic` tags to frontmatter. Adds `nav_order:` and `parent:` fields to frontmatter.
- **2025-09-19**: Adds `layout:` field to frontmatter.
- **2025-09-18**: Adds `program_scope:` and `programs:` fields to frontmatter.
- **2025-09-16**: Renames file to remove ambiguity about content.
- **2025-08-17**: Adds frontmatter yaml.
- **2025-07-28**: Adds Markdown file.
