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

| Report Name | Report Category | Program / Requestor | Description / Purpose | Priority | Status | Assigned Author | Format |
|-------------|-----------------|----------------------|------------------------|----------|--------|-----------------|--------|
| BCR Dismissed Enrollment to Accept EPICC Referral | Program Management | Data Team (BCR) | Analyze transitions from BCR dismissals into EPICC enrollment | Medium | Backlog | Bradley | SQL |
| BCR Grant Tracking | Program Management | Data Team (BCR) | Track grant allocation and usage across BCR enrollments | Medium | Backlog | Bradley | SQL |
| BCR Initial Contacts Missing Essential Data | Exception Reports | Data Team (BCR) | Identify missing data elements in intake documentation | High | Backlog | Bradley | SQL |
| BCR Client Counseling Session Grant Check | Exception Reports | Data Team (BCR) | Validate grant assignments within counseling sessions | Medium | Backlog | — | TBD |
| YERE Primary Reason for Referral | Program Management | Theresa Schafer (YERE) | Summarize referral motivations for enrolled youth | High | Backlog | — | TBD |
| BCR Needs and Referrals Placed | Program Management | Data Team (BCR) | Assess alignment of identified needs with referrals placed | Medium | Backlog | — | TBD |
| BCR Referrals Placed Agencies | Program Management | Data Team (BCR) | Analyze which agencies receive placed referrals | Medium | Backlog | — | TBD |
| EPICC Re-Engagement Caseload | Program Management | Data Team (EPICC) | Identify EPICC clients eligible for re-engagement efforts | High | Backlog | — | TBD |
| Enrollment Dismissed, Pathway Closed, Program Worker Not Ended | Exception Reports | Data Team (Multi-Program) | Spot logic mismatches in enrollment lifecycle | High | Backlog | — | TBD |
| ERE Duplicate PWY Forms Per Enrollment | Exception Reports | Data Team (ERE) | Identify duplication errors in ERE pathway documentation | Medium | Backlog | — | TBD |

---

## Report Format Guidelines

Formats will be assigned by the Data Team after reviewing stakeholder needs, data availability, and output goals. Options include:

- `SQL`: Quick Reports within FAMCare (default unless otherwise noted)
- `R`: For analytical summaries, trend analysis, and multi-step data joins
- `Power BI`: Reserved for dashboarding use cases (pending FAMCare vendor integration)

Format may shift over time as tools evolve and vendor capabilities expand.

---

## Status Definitions

| Status     | Meaning                                               |
|------------|-------------------------------------------------------|
| Backlog    | Request logged, awaiting logic specification or build |
| In Progress| Under active development                              |
| Draft      | Prototype ready, pending review                       |
| Published  | Active Quick Report available                         |
| On Hold    | Deferred due to dependencies or prioritization        |

---

## Related Wiki Pages

- [Quick Reports Overview](../QuickReports-Overview.md)
- [Report Roadmap](../QuickReports-Roadmap.md)
- [Saving & Securing Quick Reports](../SavingAndSecuringQuickReports.md)

---
