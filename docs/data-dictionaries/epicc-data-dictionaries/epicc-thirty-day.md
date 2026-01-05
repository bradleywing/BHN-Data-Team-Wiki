---
front-matter-title: EPICC Thirty-Day Follow-Up - Data Dictionary
permalink: /epicc-thirty-day/
layout: home
parent: EPICC Data Dictionaries
nav_order: 4
tags:
  - data-dictionary
  - epicc-thirty-day
master_tables:
  - epicc_program_participation
  - epicc_types_mat
schema_version: 1
---
# EPICC Thirty-Day Follow-Up - Data Dictionary

## Core Fields

<details markdown="1">
<summary><strong>Click to expand Core Fields</strong></summary>

| Field Order |      FC Field Prompt      | FC Field Name  | Hidden | Master Table | Required | Reporting | System | Enabled | Analytical |
|:-----------:|:-------------------------:|:--------------:|:------:|:------------:|:--------:|:---------:|:------:|:-------:|:----------:|
|     01      |  [System Metadata Field]  |    docserno    |  Yes   |              |    NA    |    NA     |  Yes   |   Yes   |    Yes     |
|     02      |  [System Metadata Field]  | parentdocserno |  Yes   |              |    NA    |    NA     |  Yes   |   Yes   |    Yes     |
|     03      |  [System Metadata Field]  |    visitdt     |  Yes   |              |    NA    |    NA     |  Yes   |   Yes   |    Yes     |
|     04      |  [System Metadata Field]  |    visittm     |  Yes   |              |    NA    |    NA     |  Yes   |   Yes   |    Yes     |
|     05      | Select Pathway Assignment | TiedEnrollment |   No   |              |   Yes    |    NA     |   No   |   Yes   |    Yes     |
|     06      |       Pathway Date        |  Pathway_Date  |   No   |              |   Yes    |    No     |   No   |   Yes   |    Yes     |

</details>

## Core Field Details

<details markdown="1">
<summary><strong>Click to expand Core Field Details</strong></summary>

<details markdown="1">
<summary><strong>01 - docserno</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** varchar(25)  
**Question Type:** system_metadata_field  
**Variable Name:** thirtyd_docserno

</details>

<details markdown="1">
<summary><strong>02 - parentdocserno</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** varchar(25)  
**Question Type:** system_metadata_field  
**Variable Name:** thirtyd_parent_docserno

</details>

<details markdown="1">
<summary><strong>03 - visitdt</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** date  
**Question Type:** date  
**Variable Name:** thirtyd_visit_date

</details>

<details markdown="1">
<summary><strong>04 - visittm</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** varchar(20)  
**Question Type:** time  
**Variable Name:** thirtyd_visit_time

</details>

<details markdown="1">
<summary><strong>05 - TiedEnrollment</strong></summary>

**Field Prompt:** Select Pathway Assignment
**Data Type:** varchar(200)  
**Question Type:** dropdown_dynamic_sql  
**Variable Name:** thirtyd_tiedenrollment

</details>

<details markdown="1">
<summary><strong>06 - Pathway_Date</strong></summary>

**Field Prompt:** Pathway Date
**Data Type:** date  
**Question Type:** date  
**Variable Name:** thirtyd_pathway_date

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

- **2025-10-17**: Removes function `updateThirtyDayForm()` and anything and BHN added such as `showfields()`. Added `treatment_path_thirty_day_unable_to_contact`, `what_mat_physician_appt_thirty_day_unable_to_contact`, and `mat_prescribed_physician_thirty_day_unable_to_contact`. This will allow for BHN to follow the new workflow that was created without having to modify `checkhideall()`, `checkhide()`, or create a new function to accommodate the complex conditional logic. Fixes typo in `transfer_type_thirty_day` from transfered to transferred.
- **2025-10-01**: Reorganizes the questions to make more sense and an easier work flow. Adds new questions `reason_not_participating_thirty_day`, `reason_not_attending_sud_tx_thirty_day`, `other_reason_not_attending_sud_tx_thirty_day`, and `attending_sud_tx_verfy_thirty_day`. Creates a new function called `updateThirtyDayForm()` to handle the more complex conditional logic and `checkhideall()` still handles the simple `x = x` logic. Updates the `onclick` and `onchange` where needed. Removes 'Client Declined Services' from `treatment_path_thirty_day` and updates the options for `client_status_thirty_day` from starting with 'Recommending' to 'Recommend'.
- **2025-08-25**: Adds HTML and JavaScript code for `TiedEnrollment` fix that GVT created to help join all our pathway forms together.
- **2025-08-15**: Changes the `MAT_PRESCRIBED_PHYSICIAN_APPT_THIRTY_DAY` data type from varchar(30) to varchar(50) to accommodate the newly added value of 'Unable To Contact Client Or Treatment Agency', which was too long for the field. Fixes typo in `why_not_meet_prog_eligibility_thirty_day` field name. Adds `why_not_meet_prog_eligibility_thirty_day`. Makes `intake_conducted_appt_date_thirty_day` and `why_not_meet_prog_eligibility_thirty_day` required questions. Updates typos in `client_status_thirty_day` and `date_transferred_reengagement_specialist_thirty_day`.
- **2025-07-22**: Adds 'Southeast' option to `if_transfer_what_region_thirty_day`.
- **2025-06-03**: Comments out any code for function `quicksubmitit()` and anything related to `Quick Submit`.
- **2025-03-14**: Fixes save button issue. `preg_post_part_thirty_day` was in the `validateform()` function and it shouldn't have been.
- **2025-03-12**: Removes `client_attend_intake_appt_thirty_day` and `intake_appt_date_thirty_day` since those questions are now being answered on the `PWBroadTreatmentAgency` summation. Changed view for `program_participation` to `thirty_day_fu` since columns for each follow-up form were added to the master table.

</details>

</details>
