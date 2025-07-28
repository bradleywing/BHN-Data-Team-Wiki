# FAMCare Reports & SQL Assets

This page documents Quick Reports used within BHN’s FAMCare implementation. It includes report descriptions, access permissions by role, publication status, and notes regarding their location, design, and maintenance.

---

This matrix catalogs all named reports relevant to BHN’s FAMCare implementation, whether published in FAMCare or maintained for internal analysis. It includes Quick Reports, SSMS logic assets, and staging logic intended for reuse or publication. Assets link to SQL code and paired documentation (where available).

| Category | Report Name | Description | Security Groups | Run Environment | Assets |
|----------|-------------|-------------|------------------|------------------|--------|
| Exception Reports | BCR Client Active 90 Days or Longer | | System Administrator, GVT, BCR Managers | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/BCR-Client-Active-90-Days-Or-Longer.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/BCR-Client-Active-90-Days-Or-Longer.md) |
| Exception Reports | BCR Duplicate PWY Forms Per Enrollment | | System Administrator, GVT, BCR Managers | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/BCR-Duplicate-PWY-Forms_per_Enrollment.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/BCR-Duplicate-PWY-Forms-per-Enrollment.md) |
| Exception Reports | BCR Grant Missing | | System Administrator, GVT, BCR Managers | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/BCR-Grant-Missing.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/BCR-Grant-Missing.md) |
| Exception Reports | BCR Imports Miss Date Accomplished Enrolled July to Dec | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/BCR-Imports-Miss-Date-Accomplished-Enrolled-July-to-Dec.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/BCR-Imports-Miss-Date-Accomplished-Enrolled-July-to-Dec.md) |
| Exception Reports | BCR Multiple Referrals Per Enrollment | | System Administrator, GVT, BCR Managers | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/BCR-Multiple-Referrals-Per-Enrollment.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/BCR-Multiple-Referrals-Per-Enrollment.md) |
| Exception Reports | BCR Pathway Added Client Never Enrolled | | System Administrator, GVT, BCR Managers | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/BCR-Pathway-Added-Client-Never-Enrolled.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/BCR-Pathway-Added-Client-Never-Enrolled.md) |
| Exception Reports | BCR Referrals Placed Hidden Fields Null | | System Administrator, GVT, BCR Managers | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/BCR-Referrals-Placed-Hidden-Fields-Null.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/BCR-Referrals-Placed-Hidden-Fields-Null.md) |
| Exception Reports | Client Dismissed But Client Status Still Active | Identifies clients who have a recorded enrollment dismissal but whose client status remains marked as "Active," and who do not have any open enrollments. | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/Client-Dismissed-But-Client-Status-Still-Active.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/Client-Dismissed-But-Client-Status-Still-Active.md) |
| Exception Reports | Client Status Missing | Identifies clients who lack a current status in the client status field. | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/Client-Status-Missing.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/Client-Status-Missing.md) |
| Exception Reports | Client With Missing Demographics | Identifies clients with missing demographic information. | System Administrator, GVT, BCR Managers, EPICC Managers, ERE Managers, YERE Managers | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/Client-With_Missing-Demographics.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/Client-With-Missing-Demographics.md) |
| Exception Reports | Clients With Multiple Active Enrollments | Flags clients with more than one active enrollment at the same time, regardless of program. | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/Clients-With-Multiple-Active-Enrollments.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/Clients-With-Multiple-Active-Enrollments.md) |
| Exception Reports | Clients With Multiple Active Pathways | Identifies clients who are assigned to more than one active Pathway at the same time. | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/Clients-With-Multiple-Active-Pathways.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/Clients-With-Multiple-Active-Pathways.md) |
| Exception Reports | Clients With Multiple Pathways Sharing Same Start Date | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/Clients-With-Multiple-Pathways-Sharing-Same-Start-Date.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/Clients-With-Multiple-Pathways-Sharing-Same-Start-Date.md) |
| Exception Reports | EPICC Duplicate PWY Forms Per Enrollment | | System Administrator, GVT, EPICC Managers | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/EPICC-Duplicate-PWY-Forms-Per-Enrollment.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/EPICC-Duplicate-PWY-Forms-Per-Enrollment.md) |
| Exception Reports | EPICC IC Opioids of Use Hidden Fields Null | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/EPICC-IC-Opioids-of-Use-Hidden-Fields-NULL.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/EPICC-IC-Opioids-of-Use-Hidden-Fields-NULL.md) |
| Exception Reports | EPICC Imports Miss Date Accomplish Enrolled July to Dec | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/EPICC-Imports-Miss-Date-Accomplish-Enrolled-July-to-Dec.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/EPICC-Imports-Miss-Date-Accomplish-Enrolled-July-to-Dec.md) |
| Exception Reports | EPICC Imports Miss Date Accomplish Open as of Dec | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/EPICC-Imports-Miss-Date-Accomplish-Open-as-of-Dec.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/EPICC-Imports-Miss-Date-Accomplish-Open-as-of-Dec.md) |
| Exception Reports | EPICC Referral Completed Missing Initial Contact | | System Administrator, GVT, EPICC Managers | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/EPICC-Referral-Completed-Missing-Initial-Contact.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/EPICC-Referral-Completed-Missing-Initial-Contact.md) |
| Exception Reports | Pathway Closed Enrollment Still Active | | System Administrator, GVT, BCR Managers, EPICC Managers, ERE Managers, YERE Managers | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/Pathway-Closed-Enrollment-Still-Active.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/Pathway-Closed-Enrollment-Still-Active.md) |
| Exception Reports | Pathway Still Open Enrollment Closed | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/Pathway-Still-Open-Enrollment-Closed.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/Pathway-Still-Open-Enrollment-Closed.md) |
| Exception Reports | YERE Caregiver Needs Hidden Fields Null | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/YERE-Caregiver-Needs-Hidden-Fields-Null.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/YERE-Caregiver-Needs-Hidden-Fields-Null.md) |
| Exception Reports | YERE Core Exceptions By Type | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/YERE-Core-Exceptions-By-Type.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/YERE-Core-Exceptions-By-Type.md) |
| Exception Reports | YERE Duplicate PWY Forms Per Enrollment | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/YERE-Duplicate-PWY-Forms-Per-Enrollment.) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/YERE-Duplicate-PWY-Forms-Per-Enrollment.md) |
| Exception Reports | YERE Hospital Visit Note Hidden Fields Null | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/YERE-Hospital-Visit-Note-Hidden-Fields-Null.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/YERE-Hospital-Visit-Note-Hidden-Fields-Null.md) |
| Exception Reports | YERE IA Hidden Fields Null | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/YERE-IA-Hidden-Fields-NULL.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/YERE-IA-Hidden-Fields-NULL.md) |
| Exception Reports | YERE Youth Needs Hidden Fields Null | | System Administrator, GVT | SSMS, Quick Report | [SQL](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/code/exception-reports/YERE-Youth-Needs-Hidden-Fields-Null.sql) &#124; [Doc](https://github.com/Behavioral-Health-Network/FAMCare-SQL-Toolkit/blob/main/docs/exception-reports/YERE-Youth-Needs-Hidden-Fields-Null.md) |

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

