---
front-matter-title: Change Scope Form
author: Bradley Wing
last_updated: 2025-09-21
status: active
program_scope: none
programs:
  - none
tags:
  - asset-coordination
  - change-management
  - change-scope-form
  - contributor-guidance
  - governance
  - impact-assessment
  - implementation-planning
  - internal-review
permalink: /change-scope-form/
layout: home
nav_order: 4
parent: Data Team Processes
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-12
last_reviewed: 2025-09-12
schema_version: 1.0
---

# Change Scope Form

## Linked Request

- **Request ID**: `REQ-YYYY-NNNN` *(copied from original form using LOADFIELDS)*
- **Request Title**: *(copied from original form using LOADFIELDS)*
- **Requesting Program/Agency**: *(copied from original form using LOADFIELDS)*

## Summary of Requested Change

- **Business Need (from request)**:  
  *(brief summary of the original request’s justification copied from original form using LOADFIELDS)*

- **Data Team Interpretation**:  
  *(how the team understands the request in technical terms)*

## Impacted Assets

- **SQL Views / Tables**:  
  - `Q_EPICC_PATHCLIENT_ENROLLMENTS`
  - `PWEPICCINITIALCONTACT`
  - *(list all impacted assets)*

- **Reports / Dashboards**:  
  - `[Exception Reports] EPICC Duplicate Forms Per Enrollment`
  - `EPICC Periodic Report`

- **Documentation Assets to Update**:  
  - `docs/epicc/workflows/enrollment.md`
  - `docs/epicc/reporting/famcare-reports-and-assets.md`

- **Entities to Train**:
  - Stakeholders
  - Outreach staff

## Logic Summary

- **New Filters / Conditions**:  
  *(e.g., exclude enrollments dismissed before FY2025)*

- **Joins / Relationships**:  
  *(e.g., join `PATHWAYCLIENT.DOCSERNO` to `PROVIDERPLACEMENT.DOCSERNO`)*

- **Exception Handling**:  
  *(e.g., tag records missing `PWSUBROADTREATMENTAGENCY.END_DATE` as `Missing End Date`)*

- **Edge Cases to Flag**:  
  *(e.g., clients with multiple overlapping enrollments)*

## Lifecycle & Deployment

- **Status**: `Draft` | `In Review` | `Approved` | `Deployed` | `Deprecated`
- **Date Scoped**: `YYYY-MM-DD`
- **Scoped By**: `Name`
  *(select using HR dropdown)*
- **Deployment Notes**:  
  *(e.g., deployed to ALPHA on `YYYY-MM-DD`, pending internal review)*
  *(e.g., deployed to PROD on `YYYY-MM-DD`, pending UAT)*
- **Rollback Plan**:  
  *(e.g., revert to `PWEPICCIC` to commit [5a146d5](https://github.com/bradleywing/FAMCare-HTML-Form-Code/commit/5a146d5fee676cc33c8a183905e106cda6eb6740)`)*

## Changelog

- **2025-09-23**: Adds `program_scope:` and `programs:` to frontmatter. Updates value of both to none.
- **2025-09-21**: Updates tags in frontmatter. Adds `nav_order:` and `parent:` fields to frontmatter.
- **2025-09-19**: Adds `layout:` field to frontmatter.
- **2025-09-16**: Adds frontmatter.
- **2025-08-15**: Adds initial commit of the `Change Scope Form` doc, intended to pair with the `Change Request Form` in FAMCare. This is also pending review by the Data Team.
- **2025-08-14**: Adds Markdown file.
