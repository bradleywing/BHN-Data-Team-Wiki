---
front-matter-title: Sample Jekyll Repo Structure
author: Bradley Wing
last_updated: 2025-09-22
status: active
program_scope: none
programs:
  - none
tags: 
  - template
permalink: /sample-jekyll-repo-structure/
layout: home
nav_order: 7
parent: Data Team Processes
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-18
last_reviewed: 2025-09-18
schema_version: 1.0
---

# Sample Jekyll Repo Structure

```bash
BHN-Data-Team-Wiki/
├── _config.yml                 # Required
|                               # Jekyll site settings (title, theme, baseurl, plugins, permalink style)
|                               # This is modified to match the repo name and navigation preferences
|
├── CONTRIBUTING.md             # Guidance for contributors
├── index.md                    # Landing page for wiki navigation; permalink often set to /docs/
|                               # Can reside at the top-level for visibility or it can be located inside /docs/ for organizing purposes if desired
|
├── README.md                   # Optional
|                               # GitHub-side contributor guide and repo overview; not published as part of the wiki
|
├── _layouts/                   
│   └── home.html               # Custom HTML template for Markdown rendering
|
├── _includes/                  # Optional
│   └── sidebar-child.html      # Custom HTML template for managing nested folders in sidebar
│   └── sidebar-item.html       # Custom HTML template for managing nested folders in sidebar
│                               # May include other reusable content blocks (e.g., header/footer snippets)
|
├── _data/                      # Optional but useful
│   └── navigation.yml          # Sidebar configuration (manual or plugin-based)
│                               # Defines hierarchical links shown on every page if your theme supports it
|
├── assets/                     # Optional but practical
│   ├── images/                 # Screenshots, diagrams (e.g., workflow visuals)
│   │   └── index.md
│   ├── mermaid/                # Mermaid source files if you keep diagram code separate
│   │   └── index.md
│   ├── scripts/                # Script files
│   │   ├── parsers/
│   │   │   ├── generate-script-index.md
│   │   │   ├── index.md
│   │   │   ├── r-parser-for-field-groupings.md
│   │   │   └── r-parser-for-script-tags.md
│   │   ├── index.md
│   │   ├── roadmap.md
│   │   └── script-index.md
│   └── index.md
│
├── docs/                       # Core content folder
│   ├── data-team-processes/    # Shared standards, templates, logic references, and style guides
│   │   ├── change-control-process.md
│   │   ├── change-request-form.md
│   │   ├── change-scope-form.md
│   │   ├── index.md
│   │   ├── pathways-maintenance.md
│   │   ├── program-workflow-template.md
│   │   ├── program-workflow-template.md
│   │   └── sample-jekyll-repo-structure.md
│   │
│   ├── reporting/              # Documentation on reporting assets
│   │   ├── famcare-reports-and-assets.md
│   │   ├── index.md
│   │   ├── quick-reports-overview.md
│   │   ├── reports-request-tracker.md
│   │   └── saving-and-securing-quick-reports.md
│   │
│   ├── programs/               # Program-specific folders for workflows, policies, or whatever we decide the wiki should cover for programs
│   │   ├── bcr-program-docs/
│   │   │   ├── bcr-workflows/
│   │   │   │   └── index.md
│   │   │   ├── bcr-policies/
│   │   │   │   └── index.md
│   │   │   └── index.md
│   │   ├── epicc-program-docs/
│   │   │   ├── epicc-workflows/
│   │   │   │   ├── epicc-dismissal-process.md
│   │   │   │   ├── epicc-enrollment-process.md
│   │   │   │   └── index.md
│   │   │   └── index.md
│   │   ├── complex-care-program-docs/
│   │   │   └── index.md
│   │   ├── ere-program-docs/
│   │   │   ├── ere-goals/
│   │   │   │   ├── ere-goals-logic.md
│   │   │   │   └── index.md
│   │   │   └── ere-workflows/
│   │   │   │   ├── ere-client-transfer-process.md
│   │   │   │   ├── ere-dismissal-process.md
│   │   │   │   ├── ere-reconnection-process.md
│   │   │   │   └── index.md
│   │   │   └── index.md
│   │   ├── yere-program-docs/
│   │   │   ├── yere-goals/
│   │   │   │   ├── index.md
│   │   │   │   └── yere-goals-logic.md
│   │   │   ├── yere-workflows/
│   │   │   │   ├── index.md
│   │   │   │   └── yere-dismissal-process.md
│   │   │   └── index.md
│   │   ├── cross-program-docs/
│   │   │    └── index.md
│   │   └── index.md
│   │
│   ├── data-dictionaries/      # Data dictionaries for each program and one for fields common across program forms
│   │   ├── bcr-data-dictionaries/
│   │   │   └── index.md
│   │   ├── complex-care-data-dictionaries/
│   │   │   └── index.md
│   │   ├── epicc-data-dictionaries/
│   │   │    ├── index.md
│   │   │    └── epicc-initial-contact.md
│   │   ├── ere-data-dictionaries/
│   │   │   └── index.md
│   │   ├── shared-field-data-dictionaries/
│   │   │    ├── index.md
│   │   │    └── shared-fields.md
│   │   ├── yere-data-dictionaries/
│   │   │   └── index.md
│   │   └── index.md
│   │ 
│   ├── wiki-architecture/      # Documentation of various standards, core dependencies, configuration logic
│   │   ├── building-wiki-locally-using-ruby.md
│   │   ├── data-dictionary-standards.md
│   │   ├── dependencies.md
│   │   ├── index.md
│   │   └── installing-ruby.md
│   │   ├── repo-overivew.md
│   │   ├── reporting-standards.md
│   │   ├── sidebar-config.md
│   │   └── tag-usage-index.md
│   │   └── tags.md
│   └── index.md
```
