--- 
front-matter-title: closing_reasons Master Table
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
permalink: /famcare-master-tables/closing-reasons/
layout: home
nav_order: 1
parent: FAMCare Master Tables 
reviewed-by: 
  - name: Bradley Wing 
  - date: 2026-01-04
last_reviewed: 2026-01-04
schema_version: 1.0
---

# closing_reasons Master Table

|code |eto_to_recode                                  |description                                    |status   | ere| bcr| complex_care| epicc| lincs_nav| yere|
|:----|:----------------------------------------------|:----------------------------------------------|:--------|---:|---:|------------:|-----:|---------:|----:|
|001  |Administrative                                 |Administrative                                 |Active   |   1|   1|            1|     1|         1|    1|
|002  |AnswerFirst determined ineligible              |AnswerFirst Determined Ineligible              |Active   |   0|   0|            0|   888|         1|    1|
|003  |Caregiver declined services                    |Caregiver Declined Services                    |Active   |   0|   0|            0|     0|         0|    1|
|004  |Caregiver declined services post-referral      |Caregiver Declined Services Post-Referral      |Inactive |   0|   0|            0|     0|         0|    1|
|005  |Caregiver declined YERE post-referrals offered |Caregiver Declined YERE Post-Referrals Offered |Active   |   0|   0|            0|     0|         0|    1|
|006  |Client admitted to residential treatment       |Client Admitted To Residential Treatment       |Active   |   0|   0|            0|     0|         0|    1|
|007  |Client deceased                                |Client Deceased                                |Active   |   1|   0|            1|     1|         1|    1|
|008  |Client Declined                                |Client Declined                                |Active   |   1|   0|            1|     0|         1|    1|
|009  |Client in jail/incarcerated                    |Client In Jail/Incarcerated                    |Active   |   0|   0|            0|     1|         0|    0|
|010  |Client Refused Services                        |Client Refused Services                        |Active   |   0|   0|            0|   888|         1|    0|
|011  |CMHC determined ineligible                     |CMHC Determined Ineligible                     |Active   |   1|   0|            0|   888|         1|    0|
|012  |Disengaged/lost contact after engaging         |Disengaged/Lost Contact After Engaging         |Active   |   0|   0|            0|     0|         0|    1|
|013  |Dismissed from Program                         |Dismissed From Program                         |Active   |   0|   1|            0|     0|         0|    0|
|014  |Ineligible, Does Not Meet Project Criteria     |Ineligible, Does Not Meet Project Criteria     |Active   |   0|   0|            0|     1|         1|    0|
|015  |Ineligible, Not Clinically Appropriate         |Ineligible, Not Clinically Appropriate         |Active   |   0|   0|            0|     1|         0|    0|
|016  |New Referral Received                          |New Referral Received                          |Active   |   0|   0|            0|     1|         0|    0|
|017  |No longer eligible                             |No Longer Eligible                             |Active   |   0|   0|            0|     0|         0|    1|
|018  |No longer interested                           |No Longer Interested                           |Active   |   0|   1|            0|     0|         0|    0|
|019  |Program Completion                             |Program Completion                             |Active   |   1|   0|            0|     1|         1|    1|
|020  |Reconnect                                      |Reconnect                                      |Active   |   0|   0|            0|     0|         0|    1|
|021  |Reconnect with Intensive Support               |Reconnect With Intensive Support               |Active   |   0|   0|            0|     0|         0|    1|
|022  |Referral Received Within 30 Days               |Referral Received Within 30 Days               |Active   |   0|   0|            0|     1|         0|    0|
|023  |Regional Transfer                              |Regional Transfer                              |Active   |   0|   0|            0|     1|         0|    0|
|024  |Successful linkage                             |Successful Linkage                             |Active   |   0|   1|            0|     0|         0|    0|
|025  |Unable to contact                              |Unable To Contact                              |Active   |   0|   0|            0|     1|         0|    0|
|026  |Unable to locate                               |Unable To Locate                               |Active   |   0|   1|            0|     0|         0|    1|
|027  |Unable to locate/make contact post-referral    |Unable To Locate/Make Contact Post-Referral    |Active   |   0|   0|            0|     0|         0|    1|
|028  |NA                                             |Transfer To Compass                            |Active   |   0|   0|            0|     0|         0|    1|
|029  |NA                                             |Dismissed Pending Final Status                 |Inactive |   0|   0|            0|     1|         0|    0|
|030  |NA                                             |Dismissed To Accept EPICC Referral             |Active   |   0|   1|            0|     0|         0|    0|
|031  |NA                                             |Transfer To DM3700                             |Active   |   1|   0|            0|     0|         1|    0|
|032  |NA                                             |Extended Incarceration                         |Active   |   0|   0|            1|     0|         0|    0|
|033  |NA                                             |No Contact                                     |Active   |   0|   0|            1|     0|         0|    0|
|034  |NA                                             |Not Appropriate For Outpatient Mental Health   |Active   |   0|   0|            1|     0|         0|    0|
|035  |NA                                             |Organization Transfer                          |Active   |   0|   0|            1|     0|         0|    0|
|036  |NA                                             |Out Of Service Area                            |Active   |   0|   0|            1|     0|         0|    0|
|037  |NA                                             |Program Graduation                             |Active   |   0|   0|            1|     0|         0|    0|
|038  |NA                                             |Transitioned To Higher-Acutity Care With ERE   |Active   |   0|   0|            0|     1|         0|    0|
|039  |NA                                             |Unable To Make Contact Post-Referral           |Active   |   1|   0|            0|     0|         0|    0|
|040  |NA                                             |Unable To Make Contact Post-Engagment          |Active   |   1|   0|            0|     0|         0|    0|
|041  |NA                                             |Unable To Re-Engage                            |Active   |   0|   0|            0|     1|         0|    0|
|042  |NA                                             |Re-Referred                                    |Active   |   1|   0|            0|     0|         0|    0|
|043  |NA                                             |BEACN Client                                   |Active   |   0|   0|            0|     1|         0|    0|
|044  |NA                                             |Re-Enroll In EPICC Program                     |Active   |   0|   0|            0|     1|         0|    0|
|045  |NA                                             |Not Selected For The Cohort                    |Active   |   0|   0|            1|     0|         0|    0|

## Changelog

_No changes recorded._
