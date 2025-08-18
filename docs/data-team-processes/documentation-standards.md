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

This guide standardizes formatting across Markdown-based documentation, including field references, logic descriptions, changelogs, and contributor notes. It complements the SQL comment style guide and changelog standards.

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
