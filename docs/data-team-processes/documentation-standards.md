---
front-matter-title: Documentation Standards
maintainer: Data Team
last_updated: 2025-08-14
categories: [style, changelog, audit, reporting]
schema_version: 1.0
tags: [standards, markdown, versioning, changelogs]
status: Active
---

# Documentation Standards

---

## Markdown Documentation Style Guide

### Purpose - Markdown

This guide standardizes formatting across Markdown-based documentation, including field references, logic descriptions, changelogs, and contributor notes. It complements the SQL asset documentation standards and changelog standards.

### Field Names and Table Names

Use backticks for inline monospace formatting of schema elements.

| Type         | Format Example             | Notes |
|--------------|----------------------------|-------|
| Field name   | `Pathway_Date`             | Always monospace when referenced |
| Table name   | `PWEPICCInitialContact`    | Same convention as field names |

### Logic and Function References

Use backticks for inline references to functions or logic snippets.

| Type              | Format Example              | Notes |
|-------------------|-----------------------------|-------|
| Function name     | `checkhide()`               | Inline monospace |
| Exception logic   | `if field == ""`            | Inline for short logic |
| Diagnostic tags   | `Missing Pathway_Date`      | Monospace if used programmatically |

Use fenced code blocks for longer logic:

```javascript
if (field.value === "") {
  showWarning("Missing required field");
}
```

### Documentation Structure

Use consistent heading levels and formatting for clarity.

| Element        | Format Example                     | Notes |
|----------------|------------------------------------|-------|
| Section header | ## Form Parsing Utilities          | H2 for major sections |
| Subsection     | ### Input Requirements             | H3 for nested details |
| Code block     | Triple backticks + language tag    | Use bash, r, python, sql, etc. |
| Links          | [scripts/README.md](scripts/README.md) | Prefer relative links |

### Contributor Notes and Comments

Use HTML comments for internal notes and blockquotes for guidance.

| Type            | Format Example                          | Notes |
|-----------------|------------------------------------------|-------|
| TODOs           | `<!-- TODO: Add logic for pivoted fields -->` | Not rendered in output |
| Contributor tips| > This logic assumes no duplicate enrollments. | Use blockquotes for context or warnings |

### Optional Enhancements

Use sparingly and only when clarity is improved.

| Feature         | Format Example                          | Notes |
|-----------------|------------------------------------------|-------|
| Collapsible sections | `<details><summary>Advanced Logic</summary>...</details>` | Use for long logic or edge cases |
| Bold monospace  | ``**`FieldName`**``                         | Use for emphasis in tables or headings |

---

## Schema Versioning in Documentation

The `schema_version:` field tracks the version of the YAML frontmatter schema used in documentation files. It ensures consistency across assets and supports future automation, validation, and contributor onboarding.

### Purpose

- Signals which fields and conventions are expected in the frontmatter.
- Enables scripts or linters to validate structure based on version.
- Supports backward compatibility when publishing or sharing documentation externally.

### When to Increment

Update `schema_version:` when:

- New fields are added to the frontmatter.
- Field names or formats change.
- Contributor guidance is updated.

Do **not** increment for:

- Changes to SQL logic or table structure.
- Cosmetic edits to documentation content.

### Optional: `asset_schema_version`

If you wish to track changes to the underlying table or view structure, an `asset_schema_version:` field may be added to the YAML. This would reflect changes to columns, data types, constraints, or logic and _not_ the documentation schema.

> **Example:**

```yaml
asset_schema_version: 2.0
```

This field is optional and may be adopted for audit dashboards or schema evolution tracking.

### Summary

| Field                | Purpose                                      |
|---------------------|----------------------------------------------|
| `schema_version:`    | Tracks version of the documentation frontmatter schema |
| `asset_schema_version:` | (Optional) Tracks version of the underlying data structure |

For implementation examples, see [`sql-asset-doc-standards.md`](https://github.com/BHN/FAMCare-SQL-Toolkit/blob/main/sql-asset-doc-standards.md).


---

## Changelog Standards

---

### Purpose - Changelogs

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

It is possible to use GitHub-flavored diff syntax to indicate adds vs. removals:

```diff
+ Adds filter to exclude inactive enrollments from report
- Removes outdated logic for treatment plan status
```

Each line must begin with `+` or `-` for the GitHub-flavored diff fenced code block syntax to work. Therefore, this is not compatible with the established changelogs. However, there may be instances where tracking diffs may be useful and desired.

### Versioning Guidance (Optional)

While formal semantic versioning isn’t required, you may wish to:

- Adopt simple milestone-style headers: ### FY25-Q1, ### v2 draft, etc.
- Pin version tags in YAML (see example below)
- Keep a separate CHANGELOG.md at root level for global project changes

```yaml
---
front-matter-title: "Page Title Here"
maintainer: Data Team
last_updated: YYYY-MM-DD
categories: [Category1, Category2]
tags: [tag1, tag2]
status: Active
schema_version: 1.0
---
```

---
