---
front-matter-title: Tags Index  
author: Bradley Wing
last_updated: 2025-09-16  
status: active  
tags:
  - tag-governance
  - taxonomy-reference
  - contributor-guidance
permalink: /tags/
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-16
last_reviewed: 2025-09-16
schema_version: 1.0  
---

# Tags Index

This file outlines current and potential tags used across the wiki. Tagging conventions are subject to revision based on team feedback and content needs.

## Tag Structure Guidelines

- **Tags should be action-oriented or thematic** (e.g., `data-modeling`, `exception-logic`, `training-notes`)
- **Avoid ambiguity** — prefer `cohort-tracking` over `tracking`
- **Use kebab-case for consistency**
- **Cross-reference program-specific vs. universal tags in relevant content**

## Content Domains

| Tag                    | Description                                    |
|------------------------|------------------------------------------------|
| `housing-status-data`  | Logic related to housing programs or fields           |
| `insurance-data`       | Payor source, coverage periods, provider info         |
| `substance-use-tx-referral` | Referrals to substance use treatement agencies   |
| `client-needs`         | Data on the non-behavioral health needs of clients    |
| `caregiver-needs`     | Data on the non-behavioral health needs of caregivers  |
| `referral-logic`       | Referral workflows, filters, and validation           |

## Program Logic & Goals

| Tag                    | Description                                    |
|------------------------|------------------------------------------------|
| `program-goals`        | Documents intended outcomes or benchmarks for a program |
| `workflow-logic`       | Describes step-by-step program processes or decision trees |
| `milestone-tracking`   | Tracks time-based or event-based progress markers |
| `cohort-definition`    | Defines inclusion/exclusion logic for program cohorts |
| `outcome-metrics`      | Specifies how success is measured (e.g., housing stability, treatment completion) |

## Program Design & Strategy

| Tag                    | Description                                    |
|------------------------|------------------------------------------------|
| `program-structure`    | Describes how the program is organized (e.g., referral-process, outreach milestones) |
| `reporting-logic`      | Describes how program data is surfaced in reports or dashboards |

## Operational Workflows

| Tag                    | Description                                    |
|------------------------|------------------------------------------------|
| `enrollment-dismissal` | Logic and documentation related to ending a client’s enrollment |
| `reconnection`         | Logic and documentation related to reconnecting a client with an agency |
| `client-transfer`      | Workflow for reassigning clients between outreach workers or teams |
| `re-engagement`        | Workflow for reconnection with clients after a lapse in participation |
| `pathway-creation`     | Workflow for creating and assigning a Pathway               |

>**Tip**: use the operational workflow tags alongside `workflow-logic` and `program-docs` to support filtering and audit dashboards.

## Asset Function

| Tag                   | Description                                    |
|-----------------------|------------------------------------------------|
| `exception-logic`     | Identifies anomalies or data gaps              |
| `event-metadata`      | Documents metadata about Pathway Events        |
| `master-pathway-dashboard` | Asset relats to the use and operation of the Master Pathway Dashboard |
| `audit-trail`         | Tracks user actions or compliance              |
| `etl-process`         | Extract-transform-load logic                   |
| `form-validation`     | Front-end logic for required fields, dropdowns |
| `active-record-view`  | View that retains only the most recent or current record |
| `historical-record-view` | View that retains the full history of changes |
| `summation-view`      | View that aggregates or tracks slowly changing dimensions over time |
| `client-view`         | View of the client table or filtered derivatives (e.g., excluding test clients, program-specific views) |
| `needs-view`          | View of client or caregiver needs, including service referral metadata |
| `referral-out-view`   | View documenting referrals out to external agencies or services |
| `pathway-join-view`   | View that joins enrollment data to Pathways module metadata and Pathway Event form metadata |
| `pathway-event`       | Asset relates to a Pathway Event               |
| `data-dictionary`     | Asset relates to a Pathway Event               |
| `documentation`       | Documentation of an asset                      |
| `template`            | Template for composing a type of documentation file |

> **Note**: These tags surface the intent and structure of views and other assets.

## Technical Structure

| Tag                   | Description                                    |
|-----------------------|------------------------------------------------|
| `multi-join`          | Uses multiple joins across tables              |
| `session-vars`        | Relies on session variables or directives      |
| `dropdown-mapping`    | Cascading dropdown logic or table joins        |
| `vendor-dependent`    | Tied to vendor logic or constraints            |
| `slowly-changing-dimension` | Uses multiple joins across tables        |

## Governance & Lifecycle

| Tag                   | Description                                    |
|-----------------------|------------------------------------------------|
| `production-ready`    | Fully reviewed and deployed                    |
| `needs-review`        | Flagged for contributor or stakeholder review  |
| `archived`            | Retained for historical reference              |
| `cross-repo`          | Logic spans multiple repositories              |

## Audience & Usage

| Tag                   | Description                                    |
|-----------------------|------------------------------------------------|
| `program-docs`        | General tag for program-specific documentation pages    |
| `program-staff-facing`| Intended for non-technical users               |
| `data-team-only`      | Internal documentation or logic                |
| `external-sharing`    | Structured for outside partners                |
| `scheduled-report`    | Part of recurring reporting cycle              |

_Tip: use `program-docs` alongisde `program_scope:` and `programs:` to support cross-program indexing and filtering._

## Tag Evolution Log

- **2025-09-18**: Adds `substance-use-tx-referral`, `client-needs`, `caregiver needs`, `pathway-creation`, `event-metadata`, `master-pathway-dashboard`, `active-record-view`, `historical-record-view`, `summation-view`, `client-view`, `needs-view`, `referral-out-view`, `pathway-join-view`, `pathway-event`, `data-dictionary`, `documentation`,  and `template` tags. Reformats the Markdown for the tables to make them a little more readable to contributors.
- **2025-09-11**: Adds tags for program-specific documentation.
- **2025-07-26**: Adds initial template to support future tagging conventions

---
Feel free to suggest additional tags or restructure this format as the team sees fit. This file is meant to guide—not constrain—collaborative taxonomy development.
