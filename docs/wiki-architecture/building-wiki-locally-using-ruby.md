---
front-matter-title: Building the BHN Data Team Wiki Locally
author: Bradley Wing
last_updated: 2025-09-29
description: How to set up and build the wiki on your local machine for previewing changes before publishing to GitHub Pages. Includes how to enable trace logging.
status: active
program_scope: none
programs:
  - none
tag:
  - contributor-guidance
  - jekyll
  - troubleshooting
  - wiki-architecture
permalink: /building-wiki-locally-using-ruby/
layout: home
nav_order: 9
parent: Wiki Architecture
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-29
last_reviewed: 2025-09-29
schema_version: 1.0  
---

# Building the BHN Data Team Wiki Locally

This guide walks staff through setting up and building the BHN Data Team Wiki on their local machine using `Visual Studio Code (VS Code)`. It includes instructions for enabling trace logging to help diagnose build issues.

> **Note**: While the examples on this page are for using `VS Code`. Other text editors and IDEs may be used.

## Understanding the Code Blocks

Throughout this guide, you will see commands inside boxes like this:

```bash
bundle exec jekyll serve
```

These are **bash fenced code blocks**, which indicate terminal commands. You should copy and paste (or type) these into the `VS Code` terminal exactly as shown. Using the terminal is explained below. These code blocks are not meant to be run inside the browser or edited like regular code.

## Prerequisites

Before you begin, ensure you have the following installed:

- **Visual Studio Code**
- **Ruby** (`version 3.1` or higher recommended)
- **Bundler** (`gem install bundler`)
- **Git** (for cloning the repo)
- **Node.js** (optional, for `Sass` compatibility)

## Step 1: Clone the Repository

Open a Git bash console to clone the repository from the BHN GitHub Organization site and save to the local directory where `Git` projects are stored. Alternatively, use `VS Code` to clone the repository.

```bash
git clone https://github.com/behavioral-health-network/BHN-Data-Team-Wiki.git
cd BHN-Data-Team-Wiki
```

## Step 2: Open the Wiki Project in VS Code

1. Launch `VS Code`.
2. Use `File>Open Folder` to open the `BHN-Data-Team-Wiki` folder from the local directory where the repository was saved.
3. Once the folder is open, proceed to the next step.

## Step 3: Open the Terminal in VS Code

1. In `VS Code`, go to `View > Terminal` or press `Ctrl +` (Control + backtick).
2. This opens the integrated terminal at the bottom of the window.
3. You will run all commands from this terminal.

## Step 4: Install Dependencies

In the terminal, type the following and press `Enter`:

```bash
bundle install
```

This installs all required `Ruby` gems, including Jekyll and wiki theme dependencies.

## Step 5: Build and Serve the Site Locally

To build and preview the site, run:

```bash
bundle exec jekyll serve
```

This will build the site and serve it at [http://localhost:4000/BHN-Data-Team-Wiki/](http://localhost:4000/BHN-Data-Team-Wiki/). You can right click the link to open it in your browser to view the wiki as it appears live. Alternatively, you may copy the link and paste it into the address bar in your browser. Changes to files in the local repo will trigger automatic rebuilds while the site is running.

## Optional: Enable Trace Logging for Debugging

If the site fails to build or hangs, you can enable detailed logging by running:

```bash
bundle exec jekyll serve --trace > jekyll-log.txt 2>&1
```

This will:

- Enable full trace logging to aid with diagnosing errors
- Save all output to a file named `jekyll-log.txt` in the root directory of the repository project
- Help identify which template or include is causing the issue

You can open `jekyll-log.txt` directly in `VS Code` to review the output.

## Optional: Clean the Build Cache

If the site fails to build or hangs unexpectedly, try clearing the cache:

```bash
rm -rf _site .jekyll-cache
```

Then re-run the build command.

## Contributor Notes

- The sidebar is rendered using depth-safe logic in `sidebar-item.html` and `sidebar-child.html`. Recursion has been removed to prevent Liquid stack overflows.
- Navigation is driven by `navigation.yaml` in the _data folder.
- You can add new pages or sections by updating `navigation.yaml` and placing content in the appropriate folder.

## Changelog

<details markdown="1">
  <summary><strong>View Changelog Details</strong></summary>

### 2025

- **2025-10-04**: Adds collapsible `<details markdown="1"></details>` section to the changelog. Adds year subsection to better organize long changelog lists.
- **2025-09-29**: Adds initial Markdown documentation file.

</details>
