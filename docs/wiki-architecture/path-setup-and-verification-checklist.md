---
front-matter-title: PATH Setup & Verification Checklist
author: Bradley Wing
last_updated: 2026-01-02
description: Environment PATH configuration for R, Python (Anaconda), and Quarto to support reproducible workflows.
status: active
program_scope: none
programs:
  - none
tags:
  - contributor-guidance
  - prerequisites
  - troubleshooting
  - governance
permalink: /path-setup-checklist/
layout: home
nav_order: 10
parent: Wiki Architecture
reviewed-by:
  - name: Bradley Wing
  - date: 2025-11-14
last_reviewed: 2025-11-14
schema_version: 1.0  
---

# PATH Setup & Verification Checklist (Windows)

This page documents how to configure and verify PATH entries for R, Python (Anaconda), Quarto, and Git on Windows. These tools must be discoverable by your shell and IDE for reproducible workflows, Quarto rendering, and consistent Git behavior.

This guide applies to:

- RStudio
- VS Code
- Command Prompt
- PowerShell
- Git Bash
- Quarto CLI

> **Note**: if not using Anaconda, update Python accordingly.

---

## Shell Choice for Quarto & Conda Workflows

Different shells load PATH differently and mya use different Git executables. To avoid confusion:

### Recommended for most staff

- **Command Prompt (`cmd.exe`)**
  - Most predictable PATH behavior
  - Works cleanly with R, Python, Quarto, and Git
  - Avoids PowerShell activation warnings
  - Easiest for onboarding
  - VS Code may be configured to use PowerShell by default but switching to Command Prompt gives the best results.

### Supported but requires comfort with troubleshooting

- **PowerShell**
  - May show Python/Conda activation warnings
  - May use a different Git executable than Command Prompt
  - PATH resolution differs slightly from `cmd.exe`

### Not recommended for Quarto workflows

- **Git Bash**
  - Uses MSYS2 path rewriting
  - May read a different `.gitconfig`
  - Can cause confusion for contributors unfamiliar with UNIX-style shells

**Contributor Guidance**:  
Use **Command Prompt** unless you have a specific reason to use PowerShell or Git Bash.

---

## Required PATH Entries

| Tool                  | Example Path                                                                                           | Notes                                                               |
|-----------------------|--------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| **R**                 | `C:\Program Files\R\R-4.5.0\bin`                                                                       | Update when upgrading R (installer creates new folder per version). |
| **Python (Anaconda)** | `C:\Users\<username>\AppData\Local\anaconda3`<br>`C:\Users\<username>\AppData\Local\anaconda3\Scripts` | If using plain Python, replace with your Python installation path.  |
| **Quarto**            | `C:\Users\<username>\AppData\Local\Programs\Quarto\bin`                                                | Added automatically by installer; verify presence.                  |
| **Git**               | `C:\Program Files\Git\cmd`<br>`C:Program Files\Git\bin`                                                | Add both; place `cmd` agbove `bin`.                                 |

> **Critical Ordering Rule**: Always move all required entries above `C:\Users\<username>\AppData\Local\Microsoft\WindowsApps`. This prevents Windows from redirecting commands like `python` or `git` to Microsoft Store stubs.

---

## Steps to Add PATH Entries

1. Press **Win + R**, type `sysdm.cpl`, press Enter.
2. Go to **Advanced → Environment Variables**.
3. Under **System variables**, select `Path` → **Edit**.
4. Add or reorder entries as needed.
5. Save and restart terminal or IDE.

---

## Verification Commands

Run these in **Command Prompt** or **PowerShell**:

```powershell
R.exe --version
python --version
quarto check
git --version
```

Expected results:

- `R --version` - shows installed version (e.g., `R version 4.5.0`).
- `python --version` - shows Anaconda version (e.g., `Python 3.11.7`)
- `quarto check` - lists R and Python as "found"
- `Git --version` prints correctly.

If any command fails, PATH is not configured correctly.

---

## Ensuring Git Username Consistency Across Shells

Windows can load **different Git executables** depending on the shell:

- RStudio may use `C:\Program Files\Git\cmd\git.exe`
- VS Code may use its bundled Git
- Git Bash uses `MSYS2 Git`
- PowerShell may use a different Git depending on PATH order

This can cause inconsistent `user.name` values.

### Check which Git is being used

Run:

```powershell
where git
git config --list --show-origin
```

### Set your global Git username (applies to all shells)

Run in **Command Prompt** or **PowerShell**:

```powershell
git config --global user.name "Your Name"
git config --global user.email "you@BHNSTL.org
```

### Verify

```powershell
git config user.name
git config user.email
```

If RStudio still shows a different name, it is using a different Git executable. Fix by adjusting PATH so the correct Git appears **first**.

---

## Common Pitfalls

- **Python resolves to Microsoft Store**
  - Cause: PATH order wrong
  - Fix: Move Anaconda or Python above WindowsApps
- **R not found**
  - Cause: Upgraded R but PATH is missing or still points to old version.
  - Fix: Update PATH to new `R-x.y.z\bin` folder
- **Quarto cannot find Python or R**
  - Cause: Terminal or IDE not restarted
  - Fix: Restart VS Code, RStudio, or your shell
- **Git username inconsistent across tools**
  - Cause: Multiple Git installations
  - Fix:
    - Run `where git`
    - Ensure the correct Git path is first
    - Re-set global username

---

## Maintenance Guidance

- **Upgrading R**: Installer creates new folder (e.g., `R-4.6.0`). Update PATH to point to new `bin`.
- **Upgrading Python/Anaconda**: Anaconda usually keeps same folder; PATH rarely needs changes. Plain Python may change folders.
- **Upgrading Quarto**: Installer updates in place; PATH stays valid.
- **Upgrading Git**: Installer updates in place; PATH stays valid.

---

## Quarto Project-Level Overrides (Optional)

Use `_quarto.yml` if you need to pin a project to a specific interpreter:

```yaml
execute:
  r: "C:/Program Files/R/R-4.3.1/bin/R.exe"
  python: "C:/Users/<username>/AppData/Local/anaconda3/envs/myenv/python.exe"
```

## Changelog

<details markdown="1"> <summary><strong>View Changelog Details</strong></summary>

<details markdown="1">
  <summary><strong>2026</strong></summary>

### 2026

- **2026-01-02**: Updates to add more generalized PATH guidance. Adds Git username alignment. Expands shell guidance. Modernizes troubleshooting.

</details>

<details markdown="1">
  <summary><strong>2025</strong></summary>

### 2025

- **2025-11-14**: Adds initial PATH Setup & Verification Checklist page. Documents required entries for R, Python (Anaconda), and Quarto. Includes verification commands, pitfalls, and maintenance guidance. Adds collapsible <details markdown="1"></details> section to the changelog.

</details>
