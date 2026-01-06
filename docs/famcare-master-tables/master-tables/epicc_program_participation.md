--- 
front-matter-title: epicc_program_participation Master Table
author: Bradley Wing
last_updated: 2026-01-04
status: active
program_scope: none
programs:
  - none
tags:
  - sql-choice-table
  - master-table
  - lookup-metadata
permalink: /famcare-master-tables/epicc-program-participation/
layout: home
nav_order: 1
parent: FAMCare Master Tables 
reviewed-by: 
  - name: Bradley Wing 
  - date: 2026-01-04
last_reviewed: 2026-01-04
schema_version: 1.0
---

# epicc_program_participation Master Table

|code |description                                |status   | referral| initial_contact|follow_ups | six_month_fu| two_week_fu| thirty_day_fu| three_month_fu|
|:----|:------------------------------------------|:--------|--------:|---------------:|:----------|------------:|-----------:|-------------:|--------------:|
|001  |Eligible For Services                      |Active   |        1|               0|NA         |            0|           0|             0|              0|
|002  |Ineligible, Does Not Meet Project Criteria |Active   |        1|               0|NA         |            0|           1|             1|              1|
|003  |Ineligible, Not Clinically Appropriate     |Active   |        1|               0|NA         |            1|           1|             1|              1|
|004  |Client Declined Services                   |Active   |        1|               0|NA         |            1|           1|             1|              1|
|005  |Unable To Contact/Locate                   |Active   |        1|               1|NA         |            0|           0|             0|              0|
|006  |Client In Jail/Incarcerated                |Active   |        1|               0|NA         |            1|           1|             1|              1|
|007  |Client Deceased                            |Active   |        1|               0|NA         |            1|           1|             1|              1|
|008  |Outreaching For 30 Days                    |Inactive |        0|               0|NA         |            0|           0|             0|              0|
|009  |New Referral Received                      |Active   |        0|               0|NA         |            0|           0|             1|              1|
|010  |Regional Transfer                          |Active   |        0|               0|NA         |            0|           1|             1|              1|
|011  |Services Transferred To LINCS IO           |Active   |        0|               0|NA         |            0|           0|             0|              0|
|012  |Already Enrolled In SUD Services           |Inactive |        0|               0|NA         |            0|           0|             0|              0|
|013  |Referral Received Within 30 Days           |Active   |        0|               1|NA         |            0|           1|             0|              0|
|014  |Services Transferred To Youth ERE Program  |Active   |        0|               0|NA         |            0|           0|             0|              0|
|015  |Engaged                                    |Active   |        0|               0|NA         |            0|           1|             1|              1|
|016  |Not Engaged                                |Active   |        0|               0|NA         |            0|           1|             1|              1|
|017  |Still Engaged In Treatment                 |Inactive |        0|               0|NA         |            1|           0|             0|              0|
|018  |Successfully Completed Treatment           |Inactive |        0|               0|NA         |            1|           0|             0|              0|
|019  |Enrolled With EPICC                        |Active   |        0|               1|NA         |            0|           0|             0|              0|
|020  |Completed EPICC Program                    |Active   |        0|               0|NA         |            1|           0|             0|              0|
|021  |Re-Enroll In EPICC Program                 |Active   |        0|               0|NA         |            1|           0|             0|              0|
|022  |Transfer                                   |Active   |       NA|               1|NA         |           NA|          NA|            NA|             NA|
|023  |Engaged With EPICC                         |Active   |       NA|               0|NA         |           NA|          NA|            NA|             NA|
|024  |Not Participating In EPICC Program         |Active   |       NA|               1|NA         |           NA|          NA|            NA|             NA|

## Changelog

_No changes recorded._
