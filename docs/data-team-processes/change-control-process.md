---
front-matter-title: Change Control Process  
author: Bradley Wing  
last_updated: 2025-08-14 
status: active  
tags:
  - change-management
  - approvals
  - implementation
  - rollback
  - documentation
  - stakeholder-review
  - testing
  - production-deployment
  - form-changes
  - report-updates
  - data-integrity 
permalink: /change-control-process/
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

    - All change requests must be submitted using the standardized [`Change Request Form`](/docs/data-team-processes/change-request-form.md).

    - The form should include:

        - Requester details (name, program, and role).

        - Description of the requested change.

        - Justification and expected outcomes.

        - Deadline (if applicable) and priority level.

2. **Approval Workflow:**

    - **Initial Review:** The Data Team reviews the technical feasibility and potential impacts of the request by completing the [`Change Scope Form`](/docs/data-team-processes/change-scope-form.md).

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

    - Modify relevant documentation, such as any relevant [data dictionaries](/docs/data-dictionaries/), form instructions, or technical manuals, to reflect the changes.

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
