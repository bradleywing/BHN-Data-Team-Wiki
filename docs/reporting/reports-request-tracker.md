---
front-matter-title: SQL Reports Requests Tracker  
maintainer: Data Team  
last_updated: 2025-08-14  
categories: []  
schema_version: 1.0  
tags: []  
permalink: /docs/reporting/reports-request-tracker.md
status: Active  
---

# SQL Report Requests Tracker

This page documents current and planned SQL-based Quick Reports in development or awaiting specification. Reports may originate from stakeholder requests or be initiated internally by the Data Team to support program monitoring, data validation, or exception remediation.

---

## Purpose

- Maintain a centralized record of **requested and proposed reports**
- Track requestors, intended use cases, and development status
- Determine optimal implementation format (SQL, R, Power BI) based on logic and workflow
- Provide visibility into Data Team priorities and progress

---

## Requested Reports Table

| Report Name                                           | Request Type | Report Category     | Program / Requestor     | Description / Purpose                                       | Priority | Status   | Format |
|-------------------------------------------------------|--------------|----------------------|--------------------------|-------------------------------------------------------------|----------|----------|--------|
| BCR Dismissed Enrollment to Accept EPICC Referral     | New Report   | Program Management    | BCR / Data Team          | Analyze transitions from BCR dismissals into EPICC enrollment | Medium   | Backlog  | SQL    |
| BCR Grant Tracking                                    | New Report   | Program Management    | Data Team                | Track grant allocation across BCR enrollments                | Medium   | Backlog  | SQL    |
| BCR Initial Contacts Missing Essential Data           | New Report   | Exception Reports     | BCR / Data Team          | Identify missing data elements in intake documentation       | Medium   | Backlog  | SQL    |
| BCR Client Counseling Session Grant Check             | New Report   | Exception Reports     | BCR / Data Team          | Validate grant assignments within counseling sessions        | Medium   | Backlog  | SQL    |
| YERE Primary Reason for Referral                      | New Report   | Program Management    | YERE / Theresa Schafer   | Count referrals by the primary reason for referral           | High     | Scoping  | SQL    |
| BCR Needs and Referrals Placed                        | New Report   | Program Management    | BCR / Data Team          | Assess alignment of identified needs with referrals placed   | Medium   | Backlog  | SQL    |
| BCR Referrals Placed Agencies                         | New Report   | Program Management    | BCR / Data Team          | Analyze which agencies receive referrals                     | Medium   | Backlog  | SQL    |
| EPICC Re-Engagement Caseload                          | New Report   | Program Management    | EPICC / Data Team        | Identify EPICC clients eligible for re-engagement efforts    | High     | Backlog  | SQL    |
| Enrollment Dismissed, Pathway Closed, Program Worker Not Ended | New Report | Exception Reports     | Multi-Program / Data Team | Spot logic mismatches in enrollment lifecycle               | Medium   | Backlog  | SQL    |
| ERE Duplicate PWY Forms Per Enrollment                | New Report   | Exception Reports     | ERE / Data Team          | Identify duplication errors in ERE pathway assignment        | Medium   | Backlog  | SQL    |
| EPICC Client on Formal Treatment Path But No Referred SU Tx Agency Summation Record | New Report | Exception Reports | EPICC / Data Team | Identifies clients on formal treatment path (Mat or Non-MAT) that lack records in the SU Treatment Agency summation table for that enrollment | Medium | Blocked | SQL |

---

## Report Format Guidelines

Formats will be assigned by the Data Team after reviewing stakeholder needs, data availability, and output goals. Options include:

- `SQL`: Quick Reports within FAMCare (default unless otherwise noted)
- `R`: For analytical summaries, trend analysis, and multi-step data joins
- `Power BI`: Reserved for dashboarding use cases (pending FAMCare vendor integration)
- `TBD`: To be used if format not yet assigned

Format may shift over time as tools evolve and vendor capabilities expand.

---

## Status Definitions

- **Published**: Fully saved within FAMCare with documented logic and folder structure.
- **Under Review**: Awaiting Data Team or program feedback.
- **In Progress**: Actively under development; SQL authored but not finalized.
- **Scoping**: Requirements are being gathered or clarified.
- **Backlog**: Accepted but not yet prioritized or active.
- **On Hold**: Deferred due to dependencies or reprioritization.
- **Blocked**: Work is stalled due to a specific dependency or constraint beyond the team's control.

---

## Related Wiki Pages

- [FAMCare Reports & Assets](../famcare-reports-and-assets.md)
- [Quick Reports Overview](../quick-reports-overview.md)
- [Report Roadmap](../quick-reports-roadmap.md)
- [Saving & Securing Quick Reports](../saving-and-securing-quick-reports.md)

---
