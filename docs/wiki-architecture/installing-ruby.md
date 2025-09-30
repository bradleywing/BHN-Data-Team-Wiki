---
front-matter-title: Installing Ruby for the BHN Data Team Wiki
author: Bradley Wing
last_updated: 2025-09-29
description: How to download and install Ruby on your local machine.
status: active
program_scope: none
programs:
  - none
tag:
  - contributor-guidance
  - jekyll
  - prerequisites
  - ruby
  - wiki-architecture
permalink: /installing-ruby/
layout: home
nav_order: 8
parent: Wiki Architecture
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-29
last_reviewed: 2025-09-29
schema_version: 1.0  
---

# Installing Ruby for the BHN Data Team Wiki

This guide explains what `Ruby` is, why it's required for building the **BHN Data Team Wiki**, and how to install it on your local machine using a contributor-friendly workflow.

## What Is Ruby?

`Ruby` is a programming language used to power `Jekyll`, the static site generator behind our wiki. You don’t need to write `Ruby` code, but you do need `Ruby` installed to run `Jekyll` and build the site locally.

## Why Do We Need Ruby?

- `Jekyll` is built in `Ruby`.
- Our wiki uses `Jekyll` to convert `Markdown` files and templates into a browsable website.
- `Ruby` is required to install and run `Jekyll` and its dependencies.

## How to Install Ruby (Windows Instructions)

> These steps are tailored for Windows users working in **Visual Studio Code**, our standard IDE.

1. Download `RubyInstaller`
    - Go to [https://rubyinstaller.org](https://rubyinstaller.org)
    - Choose the latest stable version (e.g., `Ruby 3.1` or `3.2`)
    - Download the `Ruby+Devkit` version for Windows
2. Run the Installer
   - Follow the prompts
   - When asked to install `MSYS2` and development tools, say `yes`
   - This ensures compatibility with `Jekyll` and other gems
3. Verify Installation
    - Open the **VS Code** terminal (`View > Terminal` or `Ctrl +`) and type:

```bash
ruby -v
```

You should see a version number like `ruby 3.2.2`.

## Install Bundler (Once `Ruby` Is Installed)

Bundler manages `Ruby` dependencies for the wiki. In the terminal, run:

```bash
gem install bundler
```

This prepares your environment to install `Jekyll` and build the site.

## Contributor Notes

- You only need to install `Ruby` once.
- After `Ruby` is installed, you can follow the [Local Build Guide](/building-wiki-locally-using-ruby/) to install dependencies and run the site.
- If you run into issues, check that `Ruby` is installed and that you're using the **VS Code** terminal—not `PowerShell` or `Command Prompt`.

## Changelog

- **2025-09-29**: Adds initial Markdown documentation file.
