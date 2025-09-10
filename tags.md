# Tags Index

This file outlines current and potential tags used across the wiki. Tagging conventions are subject to revision based on team feedback and content needs.

## Tag Structure Guidelines

- **Tags should be action-oriented or thematic** (e.g., `data-modeling`, `exception-logic`, `training-notes`)
- **Avoid ambiguity** — prefer `cohort-tracking` over `tracking`
- **Use kebab-case for consistency**
- **Cross-reference program-specific vs. universal tags in relevant content**

## Program Scope

Assets may apply to one program, several, or all. To support auditability and aggregation, use the `program_scope:` field alongside the `programs:` list.

### `program-scope: single`

Use when the asset is relevant to exactly one program.

```yaml
program_scope: single
programs:
  - epicc
```

> Required: `programs:` must include exactly one program when `program-scope` is single.

### `program_scope: multi`

Use when the asset applies to multiple programs, including when it applies to all of them.

```yaml
program_scope: multi
programs:
  - bcr
  - complex-care
  - epicc
  - ere
  - yere
```

> Tip: This enables easy counting of multi-program assets without parsing individual tags.

## Content Domains

| Tag               | Description                                 |
|------------------|---------------------------------------------|
| `housing-status-data`| Logic related to housing programs or fields |
| `insurance-data` | Payor source, coverage periods, provider info |
| `behavioral-health`  | Behavioral health documentation or reporting |
| `referral-logic` | Referral workflows, filters, and validation |

## Asset Function

| Tag               | Description                                 |
|------------------|---------------------------------------------|
| `exception-logic`| Identifies anomalies or data gaps           |
| `audit-trail`    | Tracks user actions or compliance           |
| `etl-process`    | Extract-transform-load logic                |
| `form-validation`| Front-end logic for required fields, dropdowns |

## Technical Structure

| Tag               | Description                                 |
|------------------|---------------------------------------------|
| `multi-join`     | Uses multiple joins across tables           |
| `session-vars`   | Relies on session variables or directives   |
| `dropdown-mapping`| Cascading dropdown logic or table joins    |
| `vendor-dependent`| Tied to vendor logic or constraints        |

## Governance & Lifecycle

| Tag               | Description                                 |
|------------------|---------------------------------------------|
| `production-ready`| Fully reviewed and deployed                |
| `needs-review`   | Flagged for contributor or stakeholder review |
| `archived`       | Retained for historical reference           |
| `cross-repo`     | Logic spans multiple repositories           |

## Audience & Usage

| Tag               | Description                                 |
|------------------|---------------------------------------------|
| `program-staff-facing`| Intended for non-technical users       |
| `data-team-only` | Internal documentation or logic             |
| `external-sharing`| Structured for outside partners            |
| `scheduled-report`| Part of recurring reporting cycle          |

## Tag Evolution Log

- **2025-07-26**: Adds initial template to support future tagging conventions

---
Feel free to suggest additional tags or restructure this format as the team sees fit. This file is meant to guide—not constrain—collaborative taxonomy development.
