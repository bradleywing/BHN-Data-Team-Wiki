# Reporting Documentation

This folder contains standards that govern BHN Data Team reporting practices as well as reports and assets lists and a report request tracker. It serves both as a policy reference and a contributor workspace.

## Folder Purpose

- Define SQL-based reporting conventions for FAMCare and related platforms
- Maintain an audit trail of reporting updates and rationale
- Support collaboration

## Key Markdown Files

- [Reporting Request Tracker](reporting-request-tracker.md) — Change log and contributor history (editable only by designated maintainers)
- [FAMCare Reports & SQL Assets](famcare-reports-and-assets.md) - Documentation of FAMCare Reports and other assets, including report descriptions, access permissions by role, publication status, and notes
- [Quick Reports Overview](quick-reports-overview.md) - Documentation of the primary categories used for classifying Quick Reports and SQL queries authored by the Data Team.
- [Saving and Securing Quick Reports](saving-and-securing-quick-reports.md) - Documentation on the technical requirements for saving FAMCare Quick Reports and assigning security groups to control visibility.

## Contribution Guidance

Contributors may:

- Propose updates via pull request
- Use kebab-case for new files with clear, scoped naming
- Tag files using YAML frontmatter for system

> **Tip**: See [Reporting Standards](reporting-standards.md) for guidance on documenting reports.

## Changelog

- **2025-09-23**: Fixes links to `reporting-request-tracker.md`, `famcare-reports-and-assets.md`, `quick-reports-overview.md`, and `saving-and-securing-quick-reports.md`. This is a README, so links formatted for Jekyll won't work.
- **2025-09-22**: Fixes links to `/reporting-standards/` and `/reporting-request-tracker/`. Adds links to `/famcare-reports-and-assets/`, `/quick-reports-overview/`, and `/saving-and-securing-quick-reports/`. Cleans up contributor guidance and removes sample yaml, which was out of date.
- **2025-08-03**: Tweaks README.md in docs/reporting/ folder to remove references to exceptions and to update one of the file names mentioned on the page.
- **2025-08-03**: Adds initial Markdown file.
