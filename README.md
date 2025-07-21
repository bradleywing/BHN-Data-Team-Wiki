# FAMCare-Development-Wiki

This repository contains structured documentation and collaborative planning resources for BHN's local implementation of the FAMCare database platform. It serves as a development and operations hub for system configuration, front-end customization, reporting workflows, and institutional knowledge.

---

## Purpose

- Maintain a centralized and version-controlled wiki for all FAMCare development work
- Support Data Team, program managers, and developers with clear reference materials
- Document the architecture, logic, and workflow for FAMCare forms, SQL queries, and R reports
- Facilitate onboarding, collaboration, and future-proofing for system evolution

---

## Contents

Documentation in this wiki may include:

- HTML form specifications (from `FAMCare-HTML-Form-Code`)
- SQL reporting structures and changelogs (see `FAMCare-SQL-Toolkit`)
- Quick Reports overview, security practices, and publishing guidelines
- Report request tracking, roadmap planning, and role-based visibility
- R logic for child documents and extract processing (`FAMCare-Child-Documents`)
- Contributor style guides, changelog standards, and folder conventions

To explore full documentation, see [Documentation Index](docs/index.md).

---

## Repository Relationships

| Repo Name | Purpose |
|----------|---------|
| `FAMCare-HTML-Form-Code` | Contains source code for HTML forms used in FAMCare’s front-end |
| `FAMCare-SQL-Toolkit` | Stores SQL-based reporting logic, view definitions, and audit/extract queries |
| `FAMCare-Child-Documents` | R project used to generate child documents from extracted FAMCare data |
| *(Upcoming)* `EPICC-Periodic-Report`, `YERE-Periodic-Report`, etc. | R projects tied to program-specific reporting deliverables |

This wiki links to and summarizes the logic, workflows, and requirements managed across these repositories.

---

## Contribution & Governance

This wiki is maintained by the BHN Data Team. Contributors may include:

- Data Team Director
- Data Analysts
- Data Coordinator
- Program Managers
- Program Coordinators

Updates to documentation follow version-controlled processes and link to relevant repos and work items as needed.

---

## Getting Started

Suggested entry points:

- [Quick Reports Overview](docs/QuickReports-Overview.md)
- [Report Requests Tracker](docs/QuickReports-Requests.md)
- [Form Publishing Workflow](docs/HTMLForm-Publishing.md)
- [SQL Comment Style Guide](https://github.com/BHN/FAMCare-SQL-Toolkit/blob/main/comment-style-guide.md)

---

## License & Access

This repository is private and intended for internal use by authorized BHN personnel. Contact the Data Team for access requests or contribution guidance.
