# Reporting Documentation

This folder contains standards, exceptions, and trackers that govern BHN Data Team reporting practices. It serves both as a policy reference and a contributor workspace.

## Folder Purpose

- Define SQL-based reporting conventions for FAMCare and related platforms
- Document exception handling, overrides, and edge cases
- Maintain an audit trail of reporting updates and rationale
- Support collaboration

## Key Markdown Files

- `reporting-standards.md` — Required structures, naming, and query scope guidance
- `exceptions-handling.md` — Known divergences from standards with justification
- `reporting-request-tracker.md` — Change log and contributor history (editable only by designated maintainers)

## Contribution Guidance

Contributors may:

- Propose updates via pull request or comment thread in `reporting-tracker.md`
- Use kebab-case for new files with clear, scoped naming
- Tag files using YAML frontmatter for system (`famcare`, `arc`), type (`report`, `exception`), and status (`draft`, `final`)

Example frontmatter:

```yaml
system: famcare
type: report
status: final
```

---
