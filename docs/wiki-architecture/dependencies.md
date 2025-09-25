---
front-matter-title: Dependency Overview
author: Bradley Wing
last_updated: 2025-09-21
description: Core dependencies, configuration logic, and architectural notes for the BHN Data Team Wiki.
status: active
program_scope: none
programs:
  - none
tag:
  - asset-coordination
  - cross-repo
  - data-integrity
  - governance
permalink: /dependencies/
layout: home
nav_order: 1
parent: Wiki Architecture
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-20
last_reviewed: 2025-09-20
schema_version: 1.0  
---

# BHN Data Team Wiki — Dependency Overview

This page documents the core dependencies, configuration logic, and architectural quirks of the BHN Data Team Wiki. It supports contributor onboarding, troubleshooting, and long-term sustainability.

---

## Core Ruby Gems

| Gem | Version | Purpose | Notes |
|-----|---------|---------|-------|
| `jekyll` | `~> 4.3.2` (resolved: `4.3.4`) | Static site generator | Must align with [GitHub Pages supported versions](https://pages.github.com/versions/) |
| `jekyll-remote-theme` | `0.4.3` | Loads theme from GitHub repo | Forked theme used: `Behavioral-Health-Network/git-wiki-theme` |
| `jekyll-feed` | `0.17.0` | Generates RSS feed | Optional plugin |
| `jekyll-seo-tag` | `2.8.0` | Adds SEO metadata | Optional plugin |
| `csv` | `3.3.5` | Enables CSV parsing | Used for future scripting |
| `logger` | `1.7.0` | Logging utility | Used for future scripting |
| `base64` | `0.3.0` | Encoding utility | Used for future scripting |

> **Tip**: All gems are declared in `Gemfile`; resolved versions are visible in `Gemfile.lock`. GitHub Pages ignores `Gemfile.lock` unless using GitHub Actions. `Gemfile.lock` is listed in the .gitignore. Refer to [Understanding Ruby Version Constraints](#understanding-ruby-version-constraints) for how `~>` works and why it matters.

---

## Understanding Ruby Version Constraints

Ruby’s `Gemfile` uses version operators to control which versions of a gem are allowed. The most common is `~>`, known as the **pessimistic version constraint**.

```ruby
gem "jekyll", "~> 4.3.2"
```

This means:

- Accept any version starting at `4.3.2`
- Allow patch-level updates like `4.3.3`, `4.3.4`, `4.3.99`
- Do not allow minor version bumps like `4.4.0` or `5.0.0`

> **Note**: Think of it as: “Stick to the `4.3.x` series, starting at `4.3.2`.” The actual version installed locally (e.g., `4.3.4`) is recorded in Gemfile.lock. This distinction helps contributors understand what’s allowed vs. what’s installed, and supports reproducible builds.

---

## Jekyll Configuration (`_config.yaml`)

| Setting | Value | Purpose |
|--------|-------|---------|
| `remote_theme` | `Behavioral-Health-Network/git-wiki-theme` | Loads forked theme |
| `markdown` | `kramdown` | Markdown engine |
| `highlighter` | `rouge` | Syntax highlighting |
| `permalink` | `/:path/` | Clean URLs |
| `collections` | `docs` | Enables sidebar logic |
| `defaults` | `layout: home` | Applies custom homepage layout |

> **Note**: Layout fallback issue was resolved by forking `Drassil/git-wiki-theme` and then manually creating `home.html` in `Behavioral-Health-Netowrk/git-wiki-theme/_layouts/` because the `git-wiki-theme` lacks a default homepage layout.

---

## Theme Customizations

- Forked from [`git-wiki-theme`](https://github.com/Drassil/git-wiki-theme)
- `home.html` manually added to resolve `layout: default` failure
- `_includes/` and `_layouts/` currently empty in local repo; can be populated from fork of `git-wiki-theme`
- Sidebar navigation scaffolded via `navigation.yaml`

---

## Navigation Schema (`navigation.yaml`)

- Sidebar structure defined manually
- Supports nested sections for workflows, reports, data dictionaries, and contributor guides

---

## Local Development Setup

To support consistent builds and contributor onboarding, the following local setup is recommended:

- **Ruby Version**:  
  - This project currently uses Ruby `3.4.5` locally, as specified in `.ruby-version`.
  - GitHub Pages currently builds with Ruby `3.1.2`, so contributors may need to switch Ruby versions using a version manager like `rbenv`, `rvm`, or `asdf` to ensure compatibility.

  > **Tip**: If you encounter build issues or plugin mismatches, try switching to Ruby `3.1.2` to match GitHub’s environment.

- **`.ruby-version`**:  
  - Located in the root directory. Helps contributors auto-switch Ruby versions when entering the repo.

- **`.jekyll-metadata`**:  
  - This file is generated automatically by Jekyll during local builds to optimize incremental rendering.
  - It is ignored via `.gitignore` and should not be committed.

- **Bundler**:  
  - Use `bundle install` to install dependencies defined in `Gemfile`.  
  `Gemfile.lock` is ignored unless using GitHub Actions or a custom build pipeline.

- **Build Commands**:  
  - Run `jekyll serve` or `bundle exec jekyll serve` to preview the site locally.

- **Optional Tools**:  
  - The `/assets/scripts/` folder is reserved for future parsers that will interact with this repo, the `FAMCare-HTML-Form-Code` repo, and the `FAMCare-SQL-Toolkit` repo.
  - Gems like `csv`, `logger`, and `base64` are pre-declared in the `Gemfile` to support this work.
  - Specific implementation details will be documented once scripting is active.

---

## Dependency Updates

- Run `bundle outdated` to audit gems
- Update `Gemfile` manually and run `bundle update`
- Test locally before publishing
- Monitor [GitHub Pages dependency versions](https://pages.github.com/versions/) for compatibility

---

## Contributor Guidance

- Dependencies are declared in `Gemfile`, not `Gemfile.lock`
- Theme quirks (e.g. missing homepage layout) are documented
- Navigation logic will be updated to match permalink structure
- Future scripting will use `csv`, `logger`, and `base64` gems

---

## Changelog

- **2025-09-22**: Adds `program_scope:` and `programs` fields to frontmatter.
- **2025-09-21**: Adds `nav_order:` and `parent:` fields to frontmatter.
- **2025-09-20**: Adds initial Markdown file.
