---
front-matter-title: Script Index
author: Bradley Wing
last_updated: 2025-09-18
permalink: /script-index/
---

# Script Index

This index is auto-generated from script tag blocks in `assets/r-scripts/`. It surfaces metadata for audit, onboarding, and refinement. Scripts are grouped by status and include tags, descriptions, and last updated timestamps.

---

## Status: Pilot

<details>
<summary>Click to expand</summary>

| Script Name              | Tags               | Last Updated | Description                                      |
|--------------------------|--------------------|--------------|--------------------------------------------------|
| `exception-scaffold.R`   | diagnostics, SQL   | 2025-07-28   | Diagnostic scaffold for exception tagging logic. |
| `pivot-parser.R`         | parser, yaml       | 2025-08-01   | Parses YAML field groupings from Markdown.       |

</details>

---

## Status: Draft

<details>
<summary>Click to expand</summary>

| Script Name              | Tags               | Last Updated | Description                                      |
|--------------------------|--------------------|--------------|--------------------------------------------------|
| `field-mapper.R`         | mapping, metadata  | 2025-07-15   | Maps raw fields to dictionary-defined names.     |

</details>

---

## Status: Ready

<details>
<summary>Click to expand</summary>

| Script Name              | Tags               | Last Updated | Description                                      |
|--------------------------|--------------------|--------------|--------------------------------------------------|
| `form-audit.R`           | audit, form logic  | 2025-06-30   | Audits form field logic against dictionary.      |

</details>

---

## Status: Deprecated

<details>
<summary>Click to expand</summary>

| Script Name              | Tags               | Last Updated | Description                                      |
|--------------------------|--------------------|--------------|--------------------------------------------------|
| `legacy-import.R`        | import, cleanup    | 2024-12-01   | Handles legacy import anomalies.                 |

</details>

---

## Notes

- Scripts without tag blocks are excluded.
- Consider reviewing `Pilot` scripts for adoption or refinement.
- Use `Last Updated` to flag stale assets.
- Tag suggestions: `diagnostics`, `parser`, `audit`, `onboarding`, `metadata`, `cleanup`

---

_Last generated: `r format(Sys.Date(), "%Y-%m-%d")`_

## Changelog

- **2025-09-18**: Adds frontmatter.
- **2025-08-03**: Adds `scripts/` folder to `assets/` and begins the process of adding content, including a draft of an R parser script. This content may grow to include Python scripts as well. This is very much under construction and subject to change.
- **2025-08-01**: Adds Markdown file.
