# Reporting Documentation

This folder contains standards that govern BHN Data Team reporting practices as well as reports and assets lists and a report request tracker. It serves both as a policy reference and a contributor workspace.

## Folder Purpose

- Define SQL-based reporting conventions for FAMCare and related platforms
- Maintain an audit trail of reporting updates and rationale
- Support collaboration

## Key Markdown Files

- `reporting-standards.md` — Required structures, naming, and query scope guidance
- `reporting-request-tracker.md` — Change log and contributor history (editable only by designated maintainers)

## Contribution Guidance

Contributors may:

- Propose updates via pull request or comment thread in `reporting-request-tracker.md`
- Use kebab-case for new files with clear, scoped naming
- Tag files using YAML frontmatter for system (`famcare`), type (`report`, `exception`), and status (`draft`, `final`)

Example frontmatter:

```yaml
system: famcare
type: report
status: final
```
