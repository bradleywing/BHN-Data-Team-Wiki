---
front-matter-title: EPICC Three-Month Follow-Up - Data Dictionary
permalink: /epicc-three-month/
layout: home
parent: EPICC Data Dictionaries
nav_order: 5
tags:
  - data-dictionary
  - epicc-three-month
master_tables:
  - epicc_program_participation
  - epicc_types_mat
schema_version: 1
---
# EPICC Three-Month Follow-Up - Data Dictionary

## Core Fields

<details markdown="1">
<summary><strong>Click to expand Core Fields</strong></summary>

| Field Order |      FC Field Prompt      | FC Field Name  | View Field Name | View Description Field Name |     Variable Name      | Hidden | Master Table | Required | Reporting | System | Enabled | Analytical |
|:-----------:|:-------------------------:|:--------------:|:---------------:|:---------------------------:|:----------------------:|:------:|:------------:|:--------:|:---------:|:------:|:-------:|:----------:|
|    0501     |  [System Metadata Field]  |    docserno    |    docserno     |             NA              |    threem_docserno     |  Yes   |              |    NA    |    NA     |  Yes   |   Yes   |    Yes     |
|    0502     |  [System Metadata Field]  | parentdocserno | parent_docserno |             NA              | threem_parent_docserno |  Yes   |              |    NA    |    NA     |  Yes   |   Yes   |    Yes     |
|    0503     |  [System Metadata Field]  |    visitdt     |   visit_date    |             NA              |   threem_visit_date    |  Yes   |              |    NA    |    NA     |  Yes   |   Yes   |    Yes     |
|    0504     |  [System Metadata Field]  |    visittm     |   visit_time    |             NA              |   threem_visit_time    |  Yes   |              |    NA    |    NA     |  Yes   |   Yes   |    Yes     |
|    0505     | Select Pathway Assignment | TiedEnrollment | tiedenrollment  |             NA              | threem_tiedenrollment  |   No   |              |   Yes    |    NA     |   No   |   Yes   |    Yes     |
|    0506     |       Pathway Date        |  Pathway_Date  |  pathway_date   |             NA              |  threem_pathway_date   |   No   |              |   Yes    |    No     |   No   |   Yes   |    Yes     |

</details>

## Core Field Details

<details markdown="1">
<summary><strong>Click to expand Core Field Details</strong></summary>

<details markdown="1">
<summary><strong>0501 - docserno</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** varchar(25)  
**Question Type:** system_metadata_field  
**Variable Name:** threem_docserno

</details>

<details markdown="1">
<summary><strong>0502 - parentdocserno</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** varchar(25)  
**Question Type:** system_metadata_field  
**Variable Name:** threem_parent_docserno

</details>

<details markdown="1">
<summary><strong>0503 - visitdt</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** date  
**Question Type:** date  
**Variable Name:** threem_visit_date

</details>

<details markdown="1">
<summary><strong>0504 - visittm</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** varchar(20)  
**Question Type:** time  
**Variable Name:** threem_visit_time

</details>

<details markdown="1">
<summary><strong>0505 - TiedEnrollment</strong></summary>

**Field Prompt:** Select Pathway Assignment
**Data Type:** varchar(200)  
**Question Type:** dropdown_dynamic_sql  
**Variable Name:** threem_tiedenrollment

</details>

<details markdown="1">
<summary><strong>0506 - Pathway_Date</strong></summary>

**Field Prompt:** Pathway Date
**Data Type:** date  
**Question Type:** date  
**Variable Name:** threem_pathway_date

</details>

</details>

## Pivoted Fields (Hidden)

<details markdown="1">
<summary><strong>Click to expand Pivoted Rows</strong></summary>

_No pivoted fields defined for this form._

</details>

## Changelog

<details markdown="1">
<summary><strong>View Changelog Details</strong></summary>

<details markdown="1">
<summary><strong>2025</strong></summary>

### 2025

- **2025-10-17**: Removes function `updateThreeMonthForm()` and anything BHN added such as `showfields()`. Added `treatment_path_three_month_unable_to_contact`, `what_mat_physician_appt_three_month_unable_to_contact`, and `mat_prescribed_physician_appt_three_month_unable_to_contact`. This will allow for BHN to follow the new workflow that was created without having to modify `checkhideall()`, `checkhide()`, or create a new function to accommodate the complex conditional logic. Fixes typo in `transfer_type_thirty_day` from transfered to transferred.
- **2025-10-01**: Reorganizes the questions to make more sense and an easier work flow. Adds new questions `reason_not_participating_three_month`, `reason_not_attending_sud_tx_three_month`, `other_reason_not_attending_sud_tx_three_month`, and `attending_sud_tx_verfy_three_month`. Creates a new function called `updateThreeMonthForm()` to handle the more complex conditional logic and `checkhideall()` still handles the simple `x = x` logic. Updates the `onclick` and `onchange` where needed. Updates `client_status_three_month` to change 'Recommending' to 'Recommend'. Takes out 'Client Declined SUD Treatment Services' as an option for `treatment_path_three_month`.
- **2025-08-25**: Adds HTML and JavaScript code for `TiedEnrollment` fix that GVT created to help join all our Pathway forms together.
- **2025-08-15**: Changed the `MAT_PRESCRIBED_PHYSICIAN_APPT_THREE_MONTH` data type from `varchar(30)` to `varchar(50)` to accommodate the newly added value of 'Unable To Contact Client Or Treatment Agency', which was too long for the field. Adds `why_not_meet_prog_eligibility_three_month` as a conditional question when program participation option '002' ('Ineligible'), 'Does Not Meet Program Criteria' is selected. Makes `why_not_meet_prog_eligibility_three_month` and `intake_conducted_appt_date_three_month` required questions. Adds `presenting_notes_threem` at the bottom of the form.
- **2025-07-22**: Adds 'Southeast' option to `if_transfer_what_region_three_month`.
- **2025-06-11**: Updates `what_mat_physician_appt_thirty_day` to `what_mat_physician_appt_three_month`.
- **2025-06-03**: Comments out all code for function `quicksubmitit()` and anything related to `Quick Submit`.
- **2025-03-12**: Comments out missed `client_attend_intake_appt_three_month` code.

</details>

</details>
