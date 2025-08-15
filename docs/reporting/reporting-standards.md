---
front-matter-title: Reporting Standards  
maintainer: Data Team  
last_updated: 2025-08-14  
categories: []  
schema_version: 1.0  
tags: []  
permalink: /docs/reporting/reporting-standards.md
status: Active  
---

# Reporting Standards

This page documents conventions for:

- R report writing
- SQL query construction:
  - table aliasing
  - join logic
  - field naming
- Power BI schema and report design.

These standards support clarity, auditability, and consistency across all reporting workflows.

---

## R Child Doc Standards

Prefer 0|1 instead of 'No'|'Yes'.

## SQL Standardized Table Aliases

### Table Alias Matrix

The following matrix defines standardized aliases for all commonly used tables across programs. These aliases must be used in SQL queries to ensure consistency and reduce ambiguity.

<details>
<summary><strong>Table Aliases</strong></summary>

| Table Source   | Table Name                       | Alias        | View on Master Table | View Not on Master Table | Primary Join Fields(s) |
|----------------|----------------------------------|--------------|----------------------|--------------------------|------------------------|
| ALL            | ADA_SU_AGENCY                    | ADA          | 1                    | 0                        |                        |
| ALL            | ADA_SU_STATUS                    | CIMOR_ADA    | 1                    | 0                        |                        |
| ALL            | CASENOTEDETAIL                   | CN           | 0                    | 0                        |                        |
| ALL            | CIMOR_STATUS                     | CIMOR_STATUS | 1                    | 0                        |                        |
| ALL            | CLIENT                           | C            | 0                    | 0                        |                        |
| ALL            | CLIENTSTATUS                     | S            | 1                    | 0                        |                        |
| ALL            | CLOSINGREASON                    | CR           | 1                    | 0                        |                        |
| ALL            | CMHC_AGENCY                      | CMHC         | 1                    | 0                        |                        |
| ALL            | CONTACTTYPE                      | CT           | 1                    | 0                        |                        |
| ALL            | EDUCATIONLEVEL                   | EDLEVEL      | 1                    | 0                        |                        |
| ALL            | EMPOLOYMENTSTATUS                | EMPSTATUS    | 1                    | 0                        |                        |
| ALL            | GENDER                           | G            | 1                    | 0                        |                        |
| ALL            | HRFORM                           | HR           | 0                    | 0                        |                        |
| ALL            | MANAGED_MEDICAID_PROVIDER        | MMP          | 1                    | 0                        |                        |
| ALL            | MASTERSERVICE                    | MS           | 1                    | 0                        |                        |
| ALL            | PATHWAY                          | PWY          | 0                    | 0                        |                        |
| ALL            | PATHWAYCLIENT                    | PC           | 0                    | 0                        |                        |
| ALL            | PATHWAYEVENT                     | PE           | 0                    | 0                        |                        |
| ALL            | PATHWAYEVENTCLIENT               | PEC          | 0                    | 0                        |                        |
| ALL            | PAYOR_SOURCE                     | PAY          | 1                    | 0                        |                        |
| ALL            | PROGRAM_REFERRAL_SOURCES         | PRS          | 1                    | 0                        |                        |
| ALL            | PROVIDER                         | P            | 0                    | 0                        |                        |
| ALL            | PROVIDERHIERARCHY                | PH           | 0                    | 0                        |                        |
| ALL            | PROVIDERPLACEMENT                | PP           | 0                    | 0                        |                        |
| ALL            | Q_CLIENT                         | C            | 0                    | 1                        |                        |
| ALL            | Q_CLIENTPASSPORT                 | CP           | 0                    | 1                        |                        |
| ALL            | RACE                             | R            | 1                    | 0                        |                        |
| ALL            | SERVICESITE                      | SP           | 0                    | 0                        |                        |
| ALL            | USERCASELOAD                     | CL           | 0                    | 0                        |                        |
| BCR            | BCR_CHURCHES                     | CHURCH       | 1                    | 0                        |                        |
| BCR            | BCR_PROGRAM_PARTICIPATION        | PART         | 1                    | 0                        |                        |
| BCR            | PWBCRCLIENTCOUNSELINGSESSIONS    | BCC          | 0                    | 0                        |                        |
| BCR            | PWBCREVENT                       | EVENT        | 0                    | 0                        |                        |
| BCR            | PWBCRGRANT                       | BCRGRANT     | 0                    | 0                        |                        |
| BCR            | PWBCRINITIALCONTACT              | BIC          | 0                    | 0                        |                        |
| BCR            | PWBCRPRESENTINGCONCERNS          | BPC          | 0                    | 0                        |                        |
| BCR            | PWBCRREFERRAL                    | BREF         | 0                    | 0                        |                        |
| BCR            | PWBCRREFERRALSPLACED             | BRP          | 0                    | 0                        |                        |
| BCR            | Q_BCR_ACTIVE_HOUSING_STATUS      | BHOUSE       | 0                    | 1                        |                        |
| BCR            | Q_BCR_ACTIVE_PAYOR_SOURCE        | BPAY         | 0                    | 1                        |                        |
| BCR            | Q_BCR_CLIENT                     | BCLIENT      | 0                    | 1                        |                        |
| BCR            | Q_BCR_PATHCLIENT_ENROLLMENTS     | BENROLL      | 0                    | 1                        |                        |
| BCR            | Q_BCR_PATHWAY_FORM_DOCSERNOS     | BPF          | 0                    | 1                        |                        |
| Complex   Care | PWCOMPLEXCAREROSTER              | ROSTER       | 0                    | 0                        |                        |
| Complex   Care | Q_COMPLEX_CARE_ROSTER            | ROSTER       | 0                    | 1                        |                        |
| EPICC          | COMMUNITY_REFERRAL_SOURCES       | CRS          | 1                    | 0                        |                        |
| EPICC          | EPICC_EMS_FIRE_DISTRICT          | EMS          | 1                    | 0                        |                        |
| EPICC          | EPICC_PROGRAM_PARTICIPATION      | EPP          | 1                    | 0                        |                        |
| EPICC          | EPICC_SU_TX_AGENCY               | SUTXAGENCY   | 1                    | 0                        |                        |
| EPICC          | PWEPICCINITIALCONTACT            | EIC          | 0                    | 0                        |                        |
| EPICC          | PWEPICCREENGAGEMENTFORM          | REENGAGE     | 0                    | 0                        |                        |
| EPICC          | PWEPICCREFERRAL                  | EREF         | 0                    | 0                        |                        |
| EPICC          | PWEPICCSIXMONTHFOLLOWUP          | ESIXM        | 0                    | 0                        |                        |
| EPICC          | PWEPICCSORPILOTCESCLIENTCONTACT  | ESPCC        | 0                    | 0                        |                        |
| EPICC          | PWEPICCTHIRTYDAYFOLLOWUP         | ETHIRTYD     | 0                    | 0                        |                        |
| EPICC          | PWEPICCTHREEMONTHFOLLOWUP        | ETHREEM      | 0                    | 0                        |                        |
| EPICC          | PWEPICCTWOWEEKFOLLOWUP           | ETWOW        | 0                    | 0                        |                        |
| EPICC          | PWSUBROADTREATMENTAGENCY         | SUTX         | 0                    | 0                        |                        |
| EPICC          | Q_EPICC_ACTIVE_HOUSING_STATUS    | EHOUSE       | 0                    | 1                        |                        |
| EPICC          | Q_EPICC_ACTIVE_PAYOR_SOURCE      | EPAY         | 0                    | 1                        |                        |
| EPICC          | Q_EPICC_CLIENT                   | ECLIENT      | 0                    | 1                        |                        |
| EPICC          | Q_EPICC_LATEST_SU_TX_AGENCY      | ESUTX        | 0                    | 1                        |                        |
| EPICC          | Q_EPICC_PATHCLIENT_ENROLLMENTS   | EENROLL      | 0                    | 1                        |                        |
| EPICC          | Q_EPICC_PATHWAY_FORM_DOCSERNOS   | EPF          | 0                    | 1                        |                        |
| ERE            | PWERECLIENTNEEDS                 | ERENEEDS     | 0                    | 0                        |                        |
| ERE            | Q_ERE_BHS                        | EREBHS       | 0                    | 1                        |                        |
| ERE            | Q_ERE_CLIENT                     | ERECLIENT    | 0                    | 1                        |                        |
| ERE            | Q_ERE_CLIENT_NEEDS               | ERENEEDS     | 0                    | 1                        |                        |
| ERE            | Q_ERE_IHNA                       | EREIHNA      | 0                    | 1                        |                        |
| ERE            | Q_ERE_PATHCLIENT_ENROLLMENTS     | EREENROLL    | 0                    | 1                        |                        |
| ERE            | Q_ERE_PATHWAY_FORM_DOCSERNOS     | EREPF        | 0                    | 1                        |                        |
| ERE            | Q_ERE_REFERRAL                   | EREREF       | 0                    | 1                        |                        |
| ERE            | Q_ERE_SIX_MONTH                  | ERESIXM      | 0                    | 1                        |                        |
| ERE            | Q_ERE_THREE-MONTH                | ERETHREEM    | 0                    | 1                        |                        |
| YERE           | PWYERE30DAYFOLLOWUPTP            | YTHIRTYD     | 0                    | 0                        |                        |
| YERE           | PWYERE3MONTHFOLLOWUPTP           | YTHREEM      | 0                    | 0                        |                        |
| YERE           | PWYERE6MONTHFOLLOWUPTP           | YSIXM        | 0                    | 0                        |                        |
| YERE           | PWYEREBEHAVIORALHEALTHSERVICESTP | YBHS         | 0                    | 0                        |                        |
| YERE           | PWYERECAREGIVERPROGRAMNEEDS      | CARE         | 0                    | 0                        |                        |
| YERE           | PWYEREHOSPITALVISITNOTE          | HOSP         | 0                    | 0                        |                        |
| YERE           | PWYEREINITIALCONTACT             | YIA          | 0                    | 0                        |                        |
| YERE           | PWYEREREFERRAL                   | YREF         | 0                    | 0                        |                        |
| YERE           | Q_YERE_ACTIVE_HOUSING_STATUS     | YHOUSE       | 0                    | 1                        |                        |
| YERE           | Q_YERE_ACTIVE_PAYOR_SOURCE       | YPAY         | 0                    | 1                        |                        |
| YERE           | Q_YERE_CLIENT                    | YCLIENT      | 0                    | 1                        |                        |
| YERE           | Q_YERE_PATHCLIENT_ENROLLMENTS    | YENROLL      | 0                    | 1                        |                        |
| YERE           | Q_YERE_PATHWAY_FORM_DOCSERNOS    | YPF          | 0                    | 1                        |                        |
| YERE           | YERE_TYPE_OF_SCHOOL_DISCIPLINE   | YTSD         | 1                    | 0                        |                        |
| ...            | ...   | ...                      | ...          | ...                  | ...                         |

> For additional guidance on join logic, see [documentation-standards.md](../data-team-processes/documentation-standards.md).

</details>

---

### Usage Notes

- **Alias Consistency**: All queries must use the aliases defined above. Avoid ad hoc or legacy aliases.
- **View Flags**:
  - `View on Master Table = 1` indicates an alias for a master table that may be queried on front-end HTML forms when entering fields and in queries.
  - `View Not on Master Table = 1` indicates the table is only available in a view.
- **Program-Specific Tables**: Tables scoped to a specific program (e.g. BCR) are grouped accordingly.

---

### Future Enhancements

- Add primary join fields (e.g. `DOCSERNO`, `CLIENT_NUMBER`)
- Link to sample queries using standardized aliases
- Automate alias validation in SQL linting tools
