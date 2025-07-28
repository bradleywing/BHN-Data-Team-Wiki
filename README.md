# BHN-Data-Team-Wiki

This repository serves as the centralized, version-controlled documentation hub for the BHN  Data Team. It supports institutional memory, cross-program clarity, and collaborative  development across SQL, R, Power BI, and internal workflows. Content reflects the architecture  and standards used in BHN’s implementation of the FAMCare outcomes database.

---

## Scope and Purpose

- Document reporting logic, form standards, exception handling, and data governance practices
- Provide onboarding and reference materials for Data Team members and contributors
- Capture workflows, decisions, and logic across all BHN programs and our local FAMCare implementation
- Maintain a sustainable structure that supports discoverability, review, and shared ownership

---

## Repo Structure

```plaintext
├── index.md                             # Landing page (visible via GitHub Pages)
├── CONTRIBUTING.md                      # Guidance for contributors on versioning and documentation philosphy
├── README.md                            # GitHub-side contributor guide and repo overview
├── tags.md                              # Index of proposed tagging conventions
├── assets/
    └── images/                          # Screenshots, diagrams (e.g., workflow visuals)
    └── mermaid/                         # Mermaid source files
├── docs/
    └── audit-tracking/                  # wiki-audit-tracker.md and related tools
    └── data-team-processes/             # Workflow templates, style guides, change control process
    └── famcare-form-development/        # Form creation, validation, and promotion workflows
    └── famcare-master-tables/           # Standards for dropdown tables, auditing, and view updates
    └── famcare-provider-setup/          # Program hierarchies and cascading dropdown logic
    └── famcare-security-groups/         # Access levels, permission setup, and role definitions
    └── famcare-session-vars-directives/ # Directives, JavaScript functions, and session variable usage
    └── famcare-user-management/         # USERID and HRFORM maintenance guidance
    └── handbook/                        # Handbook migration staging and canonical reference materials
    └── programs/                        # Program-specific documentation (e.g. EPICC, YERE)
    └── reporting/                       # Report architecture, standards, reports request tracker
```

---

## Change Management & Versioning

See [Change Control Process](docs/data-team-processes/change-control-process.md) for formal guidance on updating database forms, workflows, and documentation. All edits should follow our contributor workflow.

- Branch from `main`
- Use kebab-case for file names
- Document changes in pull request descriptions or inline changelogs
- Coordinate cross-repo updates as needed
- Aim for DRY-compliant contributions

## Editing Conventions

Markdown content in this wiki uses:

- H2/H3 headings for section structure
- Tables for technical mappings or standards
- Code blocks for examples in SQL, R, JS, or LaTeX
- Clean formatting—emojis, decorative icons, and Markdown auto-formatting are avoided unless intentionally added

## Contents

Documentation in this wiki includes:

- SQL and R reporting frameworks, exception logic, and audit rules
- Power BI modeling guidance and documentation assets
- Program workflow logic to inform reporting and provide a solid foundation for routine data meetings with program staff
- Data Team style guides, templates, and documentation standards
- Reporting governance and publishing conventions

To browse full documentation, visit the [Landing Page](index.md).

---

## Contribution Guide & Governance

This wiki is maintained by the BHN Data Team. See [CONTRIBUTING.md](CONTRIBUTING.md) for a detailed overview of contribution standards and editorial principles.

Topics include:

- Folder structure and file naming
- DRY principles and modular documentation
- Onboarding guidance for new contributors
- Versioning, changelogs, and review etiquette

---

### Getting Started

Suggested entry points:

- [Landing Page](index.md): Main landing page for documentation navigation
- [Reporting Standards](docs/reporting/standards.md): SQL style guide and reporting workflows
- [Workflow Template](docs/data-team-processes/program-workflow-template.md): Core templates for documenting logic
- [Reports Request Tracker](docs/reporting/reports-request-tracker.md): Planned SQL-based Quick Reports in development or awaiting specification  
- [SQL Comment Style Guide](https://github.com/BHN/FAMCare-SQL-Toolkit/blob/main/comment-style-guide.md): Guide that defines the canonical Markdown documentation structure for all SQL assets in the `FAMCare-SQL-Toolkit` repository.

For additional guidance, view the [index.md](index.md) or contact the Data Team.

---

## Reporting Ecosystem

| Repository | Purpose |
|------------|---------|
| `FAMCare-SQL-Toolkit` | SQL-based reporting logic, views, changelogs, and exception handling |
| `FAMCare-Child-Documents` | R project for child document generation and extract processing |
| `FAMCare-HTML-Form-Code` | Source code for FAMCare front-end forms |
| *(Upcoming)* `EPICC-Periodic-Report`, `YERE-Periodic-Report`, and others | R projects tied to program-specific deliverables |

This wiki links to and summarizes the logic, workflows, and standards that span these repositories.

---

## License & Access

This repository is private and intended for internal use by authorized BHN personnel. Contact the Data Team for access requests or contribution guidance.
