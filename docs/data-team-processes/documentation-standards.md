---
title: Documentation Standards
maintainer: Data Team
last_updated: 2025-07-31
categories: [style, changelog, audit, reporting]
schema_version: 1.0
tags: [standards, markdown, versioning, changelogs]
status: Active
---

# Documentation Standards

---

## INSERT Section HERE

---

## Changelog Standards

---

### Purpose

Changelogs provide a human-readable record of edits, enhancements, and refactors to SQL, documentation, and logic artifacts. They facilitate auditability, review, and staff handoffs. Each .md documentation file should contain a changelog to track file evolution over time.

### Formatting Rules

- **Date Format:** Use YYYY-MM-DD
- **Verb Tense:** Prefer present tense (e.g., “Adds X”, “Fixes Y”) to match the moment the change enters the file
- **Style:** Keep entries concise, contextual, and avoid internal jargon unless well-defined elsewhere
- **Ordering:** List entries in reverse chronological order (most recent at top)
- **Grouping (optional):** Use ### headers to group entries by version, milestone, or release cycle if desired

### Recommended Tags (Start-of-line Verbs)

Use standardized verbs for readability and filtering. Prefix each entry with one of:

- **Adds** — new fields, filters, sections, logic branches
- **Fixes** — corrects broken logic, documentation, or data assumptions
- **Refactors** — improves internal structure without altering output
- **Removes** — eliminates fields, logic branches, outdated guidance
- **Deprecates** — marks elements as obsolete; may remain temporarily
- **Renames** — updates labels, field names, prompts
- **Clarifies** — improves documentation clarity or business rule alignment
- **Breaks or Breaking Change:** — denotes incompatible changes (e.g., column removed, behavior reversed)

These help with grep-like searches, linter checks, and future log summarizers.

### Forthcoming Changes

To track planned but unreleased edits:

- Will add support for housing agency lookup codes.
- Will deprecate legacy referral filter in next report cycle.

Move confirmed items from this section into the main changelog once applied.

### Diff-Style Syntax (Optional Enhancer)

Use GitHub-flavored diff syntax to indicate adds vs. removals:

```diff
+ Adds filter to exclude inactive enrollments from report
- Removes outdated logic for treatment plan status
```

### Versioning Guidance (Optional)

While formal semantic versioning isn’t required, you may wish to:

- Adopt simple milestone-style headers: ### FY25-Q1, ### v2 draft, etc.
- Pin version tags in YAML (see example below)
- Keep a separate CHANGELOG.md at root level for global project changes

```yaml
title: Documentation Standards
maintainer: Data Team
last_updated: 2025-07-31
categories: [style, changelog, audit, reporting]
schema_version: 1.0
tags: [standards, markdown, versioning, changelogs]
status: Active
```

---

