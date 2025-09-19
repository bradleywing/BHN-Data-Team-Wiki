---
front-matter-title: Sample Jekyll Repo Structure
author: Bradley Wing
last_updated: 2025-09-18
status: active
tags: 
  - template
permalink: /sample-jekyll-repo-structure/
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-18
last_reviewed: 2025-09-18
schema_version: 1.0
---

# Sample Jekyll Repo Structure

```bash
famcare-wiki/
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
├── _layouts/                   # Optional
|                               # Custom HTML templates for markdown rendering (e.g., default.html)
|                               # If using a theme like git-wiki, we may not need to change this at first
|
├── _includes/                  # Optional
│                               # Reusable content blocks (e.g., header/footer snippets)
│                               # Handy if you customize page templates later
|
├── _data/                      # Optional but useful
│   └── navigation.yml          # Sidebar configuration (manual or plugin-based)
│                               # Defines hierarchical links shown on every page if your theme supports it

├── assets/                     # Optional but practical
│   ├── images/                 # Screenshots, diagrams (e.g., workflow visuals)
│   └── mermaid/                # Mermaid source files if you keep diagram code separate
|
├── tags.md                     # Optional tag index (manual or plugin-generated)
│
├── docs/                       # Core content folder
│   ├── data-team-processes/    # Shared standards, templates, logic references, and style guides
│   │   ├── program-workflow-template.md
│   │   ├── dismissal-template.md
│   │   └── report-revision-process.md
│   │
│   ├── reporting/              # Reporting assets spanning all programs
│   │   ├── famcare-reports-and-assets.md
│   │   ├── quick-reports-overview.md
│   │   ├── reports-request-tracker.md
│   │   └── sql-comment-style-guide.md
│   │
│   ├── programs/               # Program-specific folders for workflows, policies, or whatever we decide the wiki should cover for programs
│   │   ├── bcr/
│   │   │   ├── workflows/
│   │   │   └── policies/
│   │   ├── epicc/
│   │   │   ├── workflows/
│   │   │   └── dismissal-logic.md
│   │   ├── complex-care/
│   │   ├── ere/
│   │   ├── yere/
│   │   └── cross-program/
│   │       ├── shared-matching-logic.md
│   │       └── eligibility-overrides.md
│   │
│   ├── data-dictionaries/      # Reference documents and Excel links - currently unsure about this
│   │   ├── program-dictionary.md
│   │   ├── lookup-tables.md
│   │   └── beacn-power-bi-assets.md
```
