---
front-matter-title: EPICC Six-Month Follow-Up - Data Dictionary
permalink: /epicc-six-month/
layout: home
parent: EPICC Data Dictionaries
nav_order: 6
tags:
  - data-dictionary
  - epicc-six-month
master_tables:
  - epicc_program_participation
  - epicc_types_mat
schema_version: 1
---
# EPICC Six-Month Follow-Up - Data Dictionary

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
**Variable Name:** sixm_docserno

</details>

<details markdown="1">
<summary><strong>02 - parentdocserno</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** varchar(25)  
**Question Type:** system_metadata_field  
**Variable Name:** sixm_parent_docserno

</details>

<details markdown="1">
<summary><strong>03 - visitdt</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** date  
**Question Type:** date  
**Variable Name:** sixm_visit_date

</details>

<details markdown="1">
<summary><strong>04 - visittm</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** varchar(20)  
**Question Type:** time  
**Variable Name:** sixm_visit_time

</details>

<details markdown="1">
<summary><strong>05 - TiedEnrollment</strong></summary>

**Field Prompt:** Select Pathway Assignment
**Data Type:** varchar(200)  
**Question Type:** dropdown_dynamic_sql  
**Variable Name:** sixm_tiedenrollment

</details>

<details markdown="1">
<summary><strong>06 - Pathway_Date</strong></summary>

**Field Prompt:** Pathway Date
**Data Type:** date  
**Question Type:** date  
**Variable Name:** sixm_pathway_date

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

- **2025-10-17**: Removes function `updateSixMonthForm()` and anything and BHN added such as `showfields()`. Added `treatment_path_six_month_unable_to_contact`, `what_mat_physician_appt_six_month_unable_to_contact`, and `mat_prescribed_physician_appt_six_month_unable_to_contact`. This will allow for BHN to follow the new workflow that was created without having to modify `checkhideall()`, `checkhide()`, or create a new function to accommodate the complex conditional logic.
- **2025-10-01**: Reorganizes the questions to make more sense and an easier work flow. Adds new questions `reason_not_participating_six_month`, `reason_not_attending_sud_tx_six_month`, `other_reason_not_attending_sud_tx_six_month`, and `attending_sud_tx_verfy_six_month`. Creates a new function called `updateSixMonthForm()` to handle the more complex conditional logic and `checkhideall()` still handles the simple `x = x` logic. Updates the `onclick` and `onchange` where needed. Removed 'Client Declined SUD Treatment Services' from `treatment_path_six_month`.
- **2025-08-27**: Adds HTML and JavaScript code for `TiedEnrollment` fix that GVT created to help join all our Pathway forms together.
- **2025-08-15**: Changes the `MAT_PRESCRIBED_PHYSICIAN_APPT_SIX_MONTH` data type from `varchar(30)` to `varchar(50)` to accommodate the newly added value of 'Unable To Contact Client Or Treatment Agency', which was too long for the field. Adds radio button option for `mat_prescribed_physician_appt_six_month`, 'Unable To Contact Client Or Treatment Agency'.
- **2025-08-12**: Restores 'Not Engaged' as an active program participation value after consulting with Carla.
- **2025-06-03**: Comments out any code for function `quicksubmitit()` and anything related to `Quick Submit`.
- **2025-03-14**: Removed Regional Transfer questions since they are not asked at 6 months.
- **2025-03-10**: Comments out `client_attend_intake_appt_six_month` and `intake_appt_date_six_month`. These questions are going to be answered on the `PWSUBroadTreatmentAgency summation` now.
- **2025-02-21**: Updates headers and instructional text for summations.

</details>

</details>
