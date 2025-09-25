# Data Dictionaries Overview

This folder contains versioned data dictionaries for BHN program workflows and reporting logic. These dictionaries define field-level metadata, value constraints, and usage notes for forms and datasets used across the Data Team’s reporting ecosystem.

## Purpose

The data dictionaries serve multiple roles:

- Preserve institutional memory around form logic and field definitions
- Support internal QA, onboarding, and reporting consistency
- Provide a shareable reference for program leadership and external stakeholders
- Align form metadata with documentation standards and schema governance

## Folder Contents

- [bcr-data-dictionaries](./bcr-data-dictionaries/)
- [complex-care-data-dictionaries](./complex-care-data-dictionaries/)


- `epicc-initial-contact.txt`  
  Extracted field-level metadata from the EPICC Initial Contact form  
  Used for internal review and wiki publication

- `pwepiccic.txt`  
  Data dictionary aligned with the HTML form versioned in `FAMCare-HTML-Form-Code`  
  Includes field names, types, and usage notes

- `FAMCare-HTML-Form-Code/`  
  Versioned HTML form and associated `.doc` file  
  Source of authoritative metadata for `pwepiccic.txt`  
  Used to cross-reference field logic, layout, and conditional behavior

## Integration Strategy

The long-term goal is to generate a **combined data dictionary** that merges:

- Field-level metadata from extracted `.txt` files
- Structural and conditional logic from HTML forms
- Contributor annotations and schema tags from wiki documentation

This output will be used internally and shared with program leadership upon request.

## Contributor Guidance

- Propose updates via pull request
- Use clear frontmatter and comment headers in all Markdown outputs
- Reference form version and source file when documenting fields
- Flag discrepancies between form logic and dictionary content
- Link to published wiki pages when available

> **Tip**: See [CONTRIBUTING](../CONTRIBUTING.md) for general contributor expectations, formatting standards, and review workflows.
> **Tip**: For various wiki standards, see [`/wiki-architecture/`](../wiki-architecture/).

## Changelog

- **2025-09-23**: Adds initial Markdown file.
