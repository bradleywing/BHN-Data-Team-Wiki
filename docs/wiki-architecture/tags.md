---
front-matter-title: Tag Reference
author: Bradley Wing
last_updated: 2025-09-20 
status: active  
program_scope: none
programs:
  - none
tags:
  - tag-governance
  - contributor-guidance
  - documentation-standards
permalink: /tag-reference/
layout: home
nav_order: 4
parent: Wiki Architecture
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-16
last_reviewed: 2025-09-16
schema_version: 1.0  
---

# Tag Reference

This file outlines current and potential tags used across the wiki. Tagging conventions are subject to revision based on team feedback and content needs.

## Tag Structure Guidelines

- **Tags should be action-oriented or thematic** (e.g., `contributor-guidance`, `exception-reporting`, `needs-review`)
- **Avoid ambiguity** — prefer `milestone-tracking` over `tracking`
- **Use kebab-case for consistency**
- **Cross-reference program-specific vs. universal tags in relevant content**
- **Multiple Categories** - Tags may belong to more than one category, which allows for them to have more than one purpose.

## Tag Categories

| Category | Description |
|----------|-------------|
| **Asset Function** | Tags describing the role the asset plays in reporting, program management, or contributor workflows (exception-report, program-management-report, Mermaid diagrams, reports, SQL queries, etc.). |
| **Asset Type** | Tags describing the types of assets (html-form, markdown-template, sql-view, mermaid-diagram, etc.). |
| **Audience & Usage** | Tags indicating who the documentation is for or how it’s used. |
| **Contributor Practices** | Tags supporting onboarding, documentation practices, and contributor workflows. |
| **Content Domain** | Tags tied to specific data fields or programmatic domains. |
| **Data Modeling** | Tags describing how data behaves or is structured over time. |
| **Database Features** | Tags referencing FAMCare modules, forms, and vendor-specific architecture. |
| **Diagnostics & Debugging** | Tags that help contributors identify, trace, and resolve errors in build logic, layout rendering, encoding, or theme behavior. This gives troubleshooting a proper home. |
| **Front-End Behavior** | Tags tied to form logic, dropdowns, and UI constraints. |
| **Governance & Lifecycle** | Tags reflecting review status, deployment, or cross-repo logic. |
| **Operational Workflow** | Tags describing Data Team processes or program-specific processes and workflows. |
| **Program Design** | Tags describing program structure, goals, policies, and logic. |
| **Tooling & Runtime** | Tags describing the underlying tools, languages, and environments required to build or run documentation systems (e.g., jekyll, ruby, bundler, nodejs). This separates build/runtime dependencies from asset formats. |

## Tag Reference Matrix

This table consolidates all tags used across the wiki. Tags are alphabetized and categorized to support contributor clarity and future automation.

<details style="margin-top: 1rem; border: 1px solid #ccc; padding: 0.5rem;">
<summary><strong>Tag Reference Matrix</strong></summary>

<div markdown="1">

| Tag | Description | Category |
|-----|-------------|----------|
| `active-record-view` | Most recent or current record | Asset Type, Data Modeling |
| `archived` | Retained for historical reference | Governance & Lifecycle |
| `asset-coordination` | Indicates that multiple assets (e.g., forms, views, templates) must be updated together to maintain consistency or support a shared change | Governance & Lifecycle |
| `audit-trail` | Tracks user actions or compliance | Contributor Practices |
| `caregiver-needs` | Behavioral and/or non-behavioral health needs of caregivers | Content Domain |
| `change-management` | Tracks review, approval, and deployment of forms, documentation, logic updates, reports, etc. | Governance & Lifecycle, Operational Workflow |
| `change-request-form` | Structured form used to propose documentation or logic changes, including rationale and impact | Asset Type, Governance & Lifecycle |
| `change-scope-form` | Form used to define the boundaries, dependencies, and coordination needs of a proposed change | Asset Type, Governance & Lifecycle |
| `changelog-rules` | Standards for documenting changes in asset history, including formatting, versioning, and contributor notes | Contributor Practices |
| `client-needs` | Behavioral and/or non-behavioral health needs of clients | Content Domain |
| `client-transfer` | Reassigning program workers | Operational Workflow |
| `client-view` | View of the client table or filtered derivatives | Asset Type |
| `cohort-definition` | Defines inclusion/exclusion logic for program cohorts | Program Design |
| `contributor-guidance` | Contributor onboarding and standards | Contributor Practices |
| `cross-repo` | Logic spans multiple repositories | Governance & Lifecycle |
| `custom-functions` | Includes or documents custom JavaScript functions | Front-End Behavior |
| `data-dictionary` | Structured reference files that define field-level metadata, value constraints, conditional logic, and audit notes for program forms and datasets. Used for reporting, contributor onboarding, and stakeholder transparency | Asset Type, Contributor Practices, Content Domain, Data Modeling |
| `data-integrity` | Ensures accuracy, consistency, and reliability of data across forms, views, and reporting logic | Governance & Lifecycle, Data Modeling |
| `data-team-facing` | Internal documentation or logic | Audience & Usage |
| `dismissal` | Ending a client’s enrollment | Operational Workflow |
| `documentation` | Documentation of an asset | Asset Type |
| `documentation-standards` | Guidelines for formatting, structuring, and maintaining documentation across assets and contributors | Contributor Practices |
| `dropdown-mapping` | Cascading dropdown logic | Front-End Behavior |
| `enrollment` | Starting a client’s enrollment | Operational Workflow |
| `etl-process` | Extract-transform-load logic | Asset Function |
| `event-metadata` | Metadata about Pathway Events | Database Features |
| `exception-report` | Identifies anomalies or data gaps | Asset Function |
| `external-sharing` | Structured for outside partners | Audience & Usage |
| `field-metadata` | Tags field-level attributes such as data type, value constraints, conditional logic, and SQL join behavior. Supports schema alignment, contributor clarity, and UX-aware documentation | Data Modeling, Front-End Behavior, Contributor Practices |
| `form-driven-logic` | Logic tied to specific forms or UI elements | Front-End Behavior |
| `form-schema` | YAML or JSON schema defining form logic | Asset Type |
| `form-updates` | Concerns updating of front-end forms | Governance & Lifecycle, Operational Workflow |
| `form-validation` | Required fields, dropdowns, or UI constraints | Front-End Behavior |
| `frontmatter-schema` | YAML schema used in documentation files to support metadata, indexing, and contributor workflows | Contributor Practices |
| `governance` | Review status or deployment logic | Governance & Lifecycle |
| `historical-record-view` | Full history of changes | Asset Type, Data Modeling |
| `housing-status-data` | Housing receipt and status | Content Domain |
| `html-form` | HTML form used in [FAMCare-HTML-Form-Code Repo](https://github.com/Behavioral-Health-Network/FAMCare-HTML-Form-Code.git) | Asset Type |
| `impact-assessment` | Concerns assessing the consequences of requested or planned changes | Governance & Lifecycle, Data Modeling |
| `implementation-planning` | Steps and considerations for deploying a change, including asset updates, testing, and stakeholder coordination | Governance & Lifecycle, Operational Workflow |
| `insurance-data` | Payor source | Content Domain |
| `internal-review` | Indicates that the document or logic update requires review by internal Data Team members before stakeholder sharing or deployment | Governance & Lifecycle, Operational Workflow |
| `jekyll` | Used for documentation related to the Jekyll static site generator, including build logic, theme configuration, layout inheritance, and troubleshooting Jekyll-specific errors | Asset Type, Tooling & Runtime |
| `markdown-template` | Markdown-based documentation scaffold | Asset Type |
| `master-pathway-dashboard` | Client-based dashboard governed by Pathway Events | Database Features |
| `mermaid-diagram` | Mermaid-based flowchart or logic diagram | Asset Type |
| `milestone-tracking` | Time-based or event-based progress markers | Program Design |
| `multi-join` | Uses multiple joins across tables | Data Modeling |
| `needs-review` | Tag indicating that a document or logic update requires contributor or stakeholder validation before deployment or publication | Governance & Lifecycle |
| `needs-testing` | Tag indicating that a document or logic update requires validation before deployment or publication | Governance & Lifecycle |
| `needs-view` | Client/caregiver needs and service referral metadata | Asset Type |
| `outcome-metrics` | Success measurement logic | Program Design |
| `pathway-creation` | Creating and assigning a Pathway | Operational Workflow |
| `pathway-dismissal` | Closing a Pathway | Operational Workflow |
| `pathway-event` | Event logic tied to Pathways | Database Features |
| `pathway-join-view` | Joins enrollment to Pathways metadata | Asset Type |
| `pathways-module` | FAMCare’s Pathways module | Database Features |
| `prerequisites` | Marks documentation that outlines required software, setup steps, or environmental dependencies needed before contributing, building, or editing the wiki. This tag supports onboarding and contributor readiness. | Contributor Practices, Tooling & Runtime |
| `production-ready` | Fully reviewed and deployed | Governance & Lifecycle |
| `program-docs` | Program-specific documentation | Audience & Usage |
| `program-goals` | Intended outcomes or benchmarks | Program Design |
| `program-structure` | How the program is organized | Program Design |
| `program-staff-facing` | Intended for non-technical users | Audience & Usage |
| `program-worker-assignment` | Assigning or transferring program workers | Operational Workflow |
| `providerplacement-form` | Form used for enrollment and dismissal | Database Features |
| `re-engagement` | Reconnecting after lapse in participation | Operational Workflow |
| `reconnection` | Reconnecting a client with an agency | Operational Workflow |
| `referral-out-view` | Referrals to external services | Asset Type |
| `report-change` | Concerns changes to reports | Governance & Lifecycle, Operational Workflow |
| `reporting-logic` | Data surfaced in reports or dashboards | Program Design, Asset Function |
| `report-template` | Structured template for recurring reports | Asset Type |
| `rollback` | Documents the logic or steps required to reverse a deployed change, restoring prior behavior or data structure if needed | Governance & Lifecycle, Operational Workflow |
| `ruby` | Applied to documentation involving Ruby installation, gem management, or Ruby-based tooling required for Jekyll compatibility. Ruby is a prerequisite asset type for local builds. | Asset Type, Tooling & Runtime |
| `scheduled-report` | Part of recurring reporting cycle | Audience & Usage |
| `service-referral-out` | Referrals to external agencies or services | Content Domain |
| `session-vars` | Session variables or directives | Front-End Behavior |
| `slowly-changing-dimension` | Slowly evolving data structures | Asset Function, Data Modeling |
| `stakeholder-approval` | Formal or informal sign-off from program directors, program managers, or external partners before deployment | Governance & Lifecycle |
| `stakeholder-review` | Tag indicating that a document or change requires review by relevant stakeholders | Governance & Lifecycle |
| `sql-choice-table` | Master Tables with code-description pairs | Front-End Behavior |
| `sql-view` | SQL view logic used for reporting or dashboards used in [FAMCare-SQL-Toolkit Repo](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit.git) | Asset Type |
| `substance-use-tx-referral` | Referrals to treatment agencies | Content Domain |
| `summation-view` | Aggregates or tracks slow changes | Asset Type, Data Modeling |
| `tag-governance` | Tag usage and schema conventions | Contributor Practices |
| `taxonomy-reference` | Tag definitions and indexing logic | Contributor Practices |
| `template` | Template for documentation files | Asset Type, Contributor Practices |
| `troubleshooting` | Used for documentation that helps diagnose and resolve build errors, layout bugs, encoding issues, or other technical problems encountered during wiki development or contribution. | Diagnostics & Debugging |
| `vendor-dependent` | Tied to vendor constraints | Front-End Behavior |
| `wiki-architecture` | Applied to documentation that explains the structural logic of the wiki, including sidebar configuration, navigation modeling, layout inheritance, and contributor-facing design decisions. This tag reflects the functional role of the asset in shaping the wiki’s behavior. | Asset Function, Contributor Practices |
| `workflow-logic` | Step-by-step program processes | Program Design |

</div>
</details>

---

## Related Standards

- [Data Dictionary Standards]({{site.baseurl}}/data-dictionary-standards/)
- [Documentation Standards]({{site.baseurl}}/documentation-standards/)
- [Reporting Standards]({{site.baseurl}}/reporting-standards/)

> **Tip**: See also [Sidebar Configuration]({{site.baseurl}}/sidebar-config/) for information on how to update `_navigation.yaml` so that any new page is added to the sidebar.

---

## Changelog

<details markdown="1">
  <summary><strong>View Changelog Details</strong></summary>

### 2025

- **2025-10-04**: Adds collapsible `<details markdown="1"></details>` section to the changelog. Adds year subsection to better organize long changelog lists.
- **2025-09-29**: Adds tags `jekyll`, `ruby`, `prerequisites`, `troubleshooting`, and `wiki-architecture`. Renames `Contributor Standards` category to the broader `Contributor Practices`. Adds categories `Diagnostics & Debugging` and `Tooling & Runtime`.
- **2025-09-26**: Moves this document to `/wiki-architecture/` from the root-level as part of centralizing standards documentation. This also ensures that Jekyll will render the page in the wiki appropriately instead of as a stand-alone page. Adds `program_scope:`, `programs:`, `nav_order:`, and `parent:` fields in the frontmatter. Adds `Related Standards` section.
- **2025-09-23**: Adds the `field-metadata` tag and updates the description of the `data-dictionary` tag.
- **2025-09-20**: Adds numerous new tags and renames others. Consolidates tags into one unified table to aid scripting, auditing, and sorting. Adds `Category` column to classify tags by type or function. Renames `permalink:` and page title to distinguish this canonical tags reference from the tag-usage-index, which shows where tags are used. Adds `<details>` tag element to shorten the long `Tag Reference Matrix`. Adds `<div markdown="1">` tag to satisfy the Kramdown Markdown editor used by Jekyll since the `<details>` tag broke the Markdown table when building the site locally.
- **2025-09-19**: Adds `layout:` field to frontmatter.
- **2025-09-18**: Adds `substance-use-tx-referral`, `client-needs`, `caregiver needs`, `pathway-creation`, `event-metadata`, `master-pathway-dashboard`, `active-record-view`, `historical-record-view`, `summation-view`, `client-view`, `needs-view`, `referral-out-view`, `pathway-join-view`, `pathway-event`, `data-dictionary`, `documentation`,  and `template` tags. Reformats the Markdown for the tables to make them a little more readable to contributors.
- **2025-09-11**: Adds tags for program-specific documentation.
- **2025-07-26**: Adds initial template to support future tagging conventions

</details>

---
Feel free to suggest additional tags or restructure this format as the team sees fit. This file is meant to guide—not constrain—collaborative taxonomy development.
