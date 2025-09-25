---
front-matter-title: Wiki Audit Tracker
author: Bradley Wing
last_updated: 2025-09-19
status: draft
program_scope: none
programs:
  - none
tags:
  - data-team-facing
  - documentation
  - governance
  - template
permalink: /wiki-audit-tracker/
layout: home
nav_order: 1
parent: BHN Wiki Audit Tracking
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-12
last_reviewed: 2025-09-12
schema_version: 1.0
---

# Wiki Audit Tracker

## **Option One**: Table Format – Updated 2025-07-26

| File | Last Reviewed | Reviewer | Needs Update? | Assigned To | Notes |
|------|----------------|----------|----------------|-------------|-------|
| quick-reports-overview.md | 2025-06-30 | Bradley | ❌ | Bradley | Confirmed field definitions |
| epicc/dismissal-logic.md | 2025-05-01 | Katy | ✅ | Katy | Logic changed post-intake |

**PROS**: Easy to read, Git diffs are clean.  
**CONS**: Manual sorting, limited filtering without external tools.

## **Option Two**: List Format (YAML-like, Markdown-native)

### quick-reports-overview.md

- Last Reviewed: 2025-06-30
- Reviewer: Bradley
- Needs Update: No
- Assigned To: —
- Notes: Confirmed field definitions

### epicc/dismissal-logic.md

- Last Reviewed: 2025-05-01
- Reviewer: Katy
- Needs Update: Yes
- Assigned To: Katy
- Notes: Added tutorial examples for Program Managers

**PROS**: Easier to diff line-by-line; script-friendly  
**CONS**: Less scannable at a glance

## **Option 3**: Tagged Format (GitHub Issues-inspired or just use GitHub Issues)

### `program-workflow-template.md`

**Last Reviewed:** 2025-04-12  
**Reviewer:** Kayla  
**Update Needed:** Yes  
**Assigned To:** Kayla  
**Notes:** Clarified how to document complex workflows involving collaboration between multiple program staff.

---

### `quick-reports-overview.md`

**Last Reviewed:** 2025-06-30  
**Reviewer:** Bradley  
**Update Needed:** No  
**Assigned To:** —  
**Notes:** Confirmed field definitions and filters match user guide.

**PROS**: Natural fit for commenting, audit logs, and readable history  
**CONS**: Harder to sort alphabetically or by date

## _Supplemental_ **Option Four**: Add Last Reviewed Metadata to Frontmatter  

### Last Reviewed Metadata

```Yaml
last-reviewed: 2025-07-26
reviewer: Laura
```

## _Supplemental_ **Option Five**: Use GitHub Issues on the data-team-wiki repo

## _Supplemental_ **Option Six**: Dedicate Data Team staff meeting time every other week to doing small audit review of documentation (or do micro-sprints with report out on that schedule)

### Audit Rotation Example

- Week 1: Reporting docs
- Week 3: Program workflows
- Week 5: Templates and standard

## Changelog

- **2025-09-23**: Adds `program_scope:` and `programs:` to frontmatter. Updates value of both to none.
- **2025-09-22**: Adds `nav_order:` and `parent:` fields to frontmatter. Adds `data-team-facing`, `governance`, and `template` tags to frontmatter. Changes `documentation-audit` tag to `documentation` as the former tag does not exist. Changes `status:` to `draft`.
- **2025-09-19**: Adds `layout:` field to frontmatter.
- **2025-09-16**: Adds frontmatter.
- **2025-07-28**: Adds Markdown file.
