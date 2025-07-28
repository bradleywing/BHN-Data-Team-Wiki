# FAMCare Reports & SQL Assets

This page documents Quick Reports used within BHN’s FAMCare implementation. It includes report descriptions, access permissions by role, publication status, and notes regarding their location, design, and maintenance.

---

This matrix catalogs all named reports relevant to BHN’s FAMCare implementation, whether published in FAMCare or maintained for internal analysis. It includes Quick Reports, SSMS logic assets, and staging logic intended for reuse or publication. Assets link to SQL code and paired documentation (where available).

| Category | Report Name | Description | Security Groups | Run Environment | Assets |
|----------|-------------|-------------|------------------|------------------|--------|
| Exception Reports | BCR Client Active 90 Days or Longer | | System Administrator, GVT, BCR Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/bcr-client-active-90-days-or-longer.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/bcr-client-active-90-days-or-longer.md) |
| Exception Reports | BCR Duplicate PWY Forms Per Enrollment | | System Administrator, GVT, BCR Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/bcr-duplicate-pwy-forms_per_enrollment.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/bcr-duplicate-pwy-forms-per-enrollment.md) |
| Exception Reports | BCR Grant Missing | | System Administrator, GVT, BCR Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/bcr-grant-missing.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/bcr-grant-missing.md) |
| Exception Reports | BCR Imports Miss Date Accomplished Enrolled July to Dec | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/bcr-imports-miss-date-accomplished-enrolled-july-to-dec.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/bcr-imports-miss-date-accomplished-enrolled-july-to-dec.md) |
| Exception Reports | BCR Multiple Referrals Per Enrollment | | System Administrator, GVT, BCR Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/bcr-multiple-referrals-per-enrollment.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/bcr-multiple-referrals-per-enrollment.md) |
| Exception Reports | BCR Pathway Added Client Never Enrolled | | System Administrator, GVT, BCR Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/bcr-pathway-added-client-never-enrolled.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/bcr-pathway-added-client-never-enrolled.md) |
| Exception Reports | BCR Referrals Placed Hidden Fields Null | | System Administrator, GVT, BCR Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/bcr-referrals-placed-hidden-fields-null.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/bcr-referrals-placed-hidden-fields-null.md) |
| Exception Reports | Client Dismissed But Client Status Still Active | Identifies clients who have a recorded enrollment dismissal but whose client status remains marked as "Active," and who do not have any open enrollments. | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/client-dismissed-but-client-status-still-active.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/client-dismissed-but-client-status-still-active.md) |
| Exception Reports | Client Status Missing | Identifies clients who lack a current status in the client status field. | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/client-status-missing.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/client-status-missing.md) |
| Exception Reports | Client With Missing Demographics | Identifies clients with missing demographic information. | System Administrator, GVT, BCR Managers, EPICC Managers, ERE Managers, YERE Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/client-with_missing-demographics.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/client-with-missing-demographics.md) |
| Exception Reports | Clients With Multiple Active Enrollments | Flags clients with more than one active enrollment at the same time, regardless of program. | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/clients-with-multiple-active-enrollments.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/clients-with-multiple-active-enrollments.md) |
| Exception Reports | Clients With Multiple Active Pathways | Identifies clients who are assigned to more than one active Pathway at the same time. | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/clients-with-multiple-active-pathways.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/clients-with-multiple-active-pathways.md) |
| Exception Reports | Clients With Multiple Pathways Sharing Same Start Date | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/clients-with-multiple-pathways-sharing-same-start-date.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/clients-with-multiple-pathways-sharing-same-start-date.md) |
| Exception Reports | EPICC Duplicate PWY Forms Per Enrollment | | System Administrator, GVT, EPICC Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/epicc-duplicate-pwy-forms-per-enrollment.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/epicc-duplicate-pwy-forms-per-enrollment.md) |
| Exception Reports | EPICC IC Opioids of Use Hidden Fields Null | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/epicc-ic-opioids-of-use-hidden-fields-null.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/epicc-ic-opioids-of-use-hidden-fields-null.md) |
| Exception Reports | EPICC Imports Miss Date Accomplish Enrolled July to Dec | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/epicc-imports-miss-date-accomplish-enrolled-july-to-dec.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/epicc-imports-miss-date-accomplish-enrolled-july-to-dec.md) |
| Exception Reports | EPICC Imports Miss Date Accomplish Open as of Dec | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/epicc-imports-miss-date-accomplish-open-as-of-dec.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/epicc-imports-miss-date-accomplish-open-as-of-dec.md) |
| Exception Reports | EPICC Referral Completed Missing Initial Contact | | System Administrator, GVT, EPICC Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/epicc-referral-completed-missing-initial-contact.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/epicc-referral-completed-missing-initial-contact.md) |
| Exception Reports | Pathway Closed Enrollment Still Active | | System Administrator, GVT, BCR Managers, EPICC Managers, ERE Managers, YERE Managers | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/pathway-closed-enrollment-still-active.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/pathway-closed-enrollment-still-active.md) |
| Exception Reports | Pathway Still Open Enrollment Closed | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/pathway-still-open-enrollment-closed.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/pathway-still-open-enrollment-closed.md) |
| Exception Reports | YERE Caregiver Needs Hidden Fields Null | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/yere-caregiver-needs-hidden-fields-null.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/yere-caregiver-needs-hidden-fields-null.md) |
| Exception Reports | YERE Core Exceptions By Type | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/yere-core-exceptions-by-type.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/yere-core-exceptions-by-type.md) |
| Exception Reports | YERE Duplicate PWY Forms Per Enrollment | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/yere-duplicate-pwy-forms-per-enrollment.) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/yere-duplicate-pwy-forms-per-enrollment.md) |
| Exception Reports | YERE Hospital Visit Note Hidden Fields Null | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/yere-hospital-visit-note-hidden-fields-null.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/yere-hospital-visit-note-hidden-fields-null.md) |
| Exception Reports | YERE IA Hidden Fields Null | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/yere-ia-hidden-fields-null.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/yere-ia-hidden-fields-null.md) |
| Exception Reports | YERE Youth Needs Hidden Fields Null | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/code/exception-reports/yere-youth-needs-hidden-fields-null.sql) &#124; [Doc](https://github.com/behavioral-health-network/famcare-sql-toolkit/blob/main/docs/exception-reports/yere-youth-needs-hidden-fields-null.md) |

> This table can be expanded as additional reports are developed or published. Folder paths point to files within the `FAMCare-SQL-Toolkit` repository.

---

## Security Groups Legend

- **System Administrator**: Required for Data Team full visibility.
- **GVT**: Required for vendor to have visibility.
- **Program Managers**: Group-specific access; assigned based on report scope.
- **LINCS Managers**, **YERE Managers**, **EPICC Managers**, etc.: Restricted access based on role relevance.

For role-specific guidance, refer to [Saving & Securing Quick Reports](saving-and-securing-quick-reports.md.md).

---

## File Naming & Folder Structure

All SQL logic referenced above lives in `FAMCare-SQL-Toolkit`, aligned to the following structure:




Each file contains multi-line top-level comment blocks per the shared style guide. See: [SQL Comment Style Guide](https://github.com/BHN/FAMCare-SQL-Toolkit/blob/main/comment-style-guide.md)

---

## Links & Resources

- [Report Request Tracker](reports-request-tracker.md)
- [Quick Reports Roadmap](quick-reports-roadmap.md)
- [Saving & Securing Quick Reports](saving-and-securing-quick-reports.md)
- [SQL Comment Style Guide](https://github.com/BHN/FAMCare-SQL-Toolkit/blob/main/comment-style-guide.md)

