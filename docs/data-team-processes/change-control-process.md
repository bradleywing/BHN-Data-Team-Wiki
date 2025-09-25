---
front-matter-title: Change Control Process  
author: Bradley Wing  
last_updated: 2025-09-21
status: active  
program_scope: none
programs:
  - none
tags:
  - change-management
  - data-integrity
  - data-team-facing
  - documentation
  - governance
  - implementation-planning
  - needs-review
  - stakeholder-review
  - needs-testing
  - program-staff-facing
  - production-ready
  - reporting-logic
  - rollback
permalink: /change-control-process/
layout: home
nav_order: 2
parent: Data Team Processes
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-12
last_reviewed: 2025-09-12
schema_version: 1.0  
---

# Change Control Process

To ensure consistency, data integrity, and effective collaboration, a formal change control process must be followed for all modifications to the database, forms, and reports. This process provides a structured approach for managing and implementing change requests.

## Best Practices for Change Control

- Group non-urgent changes to be addressed during scheduled maintenance windows.
- Prioritize changes based on their potential impact and urgency.
- Maintain a central repository for tracking all change requests and their statuses.

## Steps in the Change Control Process

1. **Request Submission:**

    - All change requests must be submitted using the standardized [`Change Request Form`]({{site.baseurl}}/change-request-form/).
    - The form should include:
        - Requester details (name, program, and role).
        - Description of the requested change.
        - Justification and expected outcomes.
        - Deadline (if applicable) and priority level.

2. **Approval Workflow:**

    - **Initial Review:** The Data Team reviews the technical feasibility and potential impacts of the request by completing the [`Change Scope Form`]({{site.baseurl}}/change-scope-form/).

    - **Stakeholder Feedback:** The proposed change is shared with relevant program staff and leadership for input and prioritization.
    - **Final Approval:** Changes are approved based on feedback, feasibility, and alignment with organizational goals.

3. **Implementation and Testing:**

    - Changes must first be implemented and tested in the development environment.
    - A rollback plan must be defined before promoting changes to production.
    - Testing should include edge cases and potential impacts on related systems.

4. **Documentation:**

    - Update the `Change Log` to include:
        - Date of change.
        - Version number.
        - Author of the change.
        - Summary of the update.
    - Modify relevant documentation, such as any relevant [Data Dictionaries]({{site.baseurl}}/data-dictionaries/), form instructions, or technical manuals, to reflect the changes.

5. **Communication:**

    - Notify program staff of approved changes through email, meetings, or training sessions.
    - Provide clear instructions on how the changes affect workflows or reporting processes.

6. **Post-Implementation Review:**

    - After deployment, review the change's impact to ensure it achieves the intended goals.
    - Address any issues or feedback from users promptly.

## Roles and Responsibilities

- **Data Team:** Responsible for technical implementation, testing, and documentation.
- **Program Leadership:** Provides feedback and ensures changes align with program goals.
- **Requesters:** Submit detailed change requests and assist in validating updates.

## Changelog

- **2025-09-23**: Adds `program_scope:` and `programs:` to frontmatter. Updates value of both to none.
- **2025-09-22**: Fixes cross-reference links to `change-request-form` page, `change-scope-form` page, and `data-dictionaries` folder.
- **2025-09-21**: Updates tags in frontmatter. Adds `parent:` and `nav_order:` to frontmatter.
- **2025-09-19**: Adds `layout:` field to frontmatter.
- **2025-09-16**: Updates frontmatter to align with `schema_version` 1.0.
- **2025-08-15**: Adds initial commit of `change-control-process.md`, which is a conversion of the LaTeX version of this section from the Handbook to Markdown with a newly added front-matter yaml and cross-references added. This is still subject to change as we develop the `change-request-form.md` and the `change-scope-form.md`. Adds permalink to frontmatter.
- **2025-07-28**: Adds Markdown file.
