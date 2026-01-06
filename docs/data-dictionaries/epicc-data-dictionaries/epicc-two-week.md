---
front-matter-title: EPICC Two-Week Follow-Up - Data Dictionary
permalink: /epicc-two-week/
layout: home
parent: EPICC Data Dictionaries
nav_order: 3
tags:
  - data-dictionary
  - epicc-two-week
master_tables:
  - epicc_program_participation
  - epicc_types_mat
schema_version: 1
---
# EPICC Two-Week Follow-Up - Data Dictionary

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
**Variable Name:** twow_docserno

</details>

<details markdown="1">
<summary><strong>02 - parentdocserno</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** varchar(25)  
**Question Type:** system_metadata_field  
**Variable Name:** twow_parent_docserno

</details>

<details markdown="1">
<summary><strong>03 - visitdt</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** date  
**Question Type:** date  
**Variable Name:** twow_visit_date

</details>

<details markdown="1">
<summary><strong>04 - visittm</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** varchar(20)  
**Question Type:** time  
**Variable Name:** twow_visit_time

</details>

<details markdown="1">
<summary><strong>05 - TiedEnrollment</strong></summary>

**Field Prompt:** Select Pathway Assignment
**Data Type:** varchar(200)  
**Question Type:** dropdown_dynamic_sql  
**Variable Name:** twow_tiedenrollment

</details>

<details markdown="1">
<summary><strong>06 - Pathway_Date</strong></summary>

**Field Prompt:** Pathway Date
**Data Type:** date  
**Question Type:** date  
**Variable Name:** twow_pathway_date

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

- **2025-10-17**: Adds `||INCLUDE FUNCTIONSUMMATIONLIBRARY.HTM||` back in to allow the summations to work. Removes function `updateTwoWeekForm()` and anything BHN added such as `showfields()`. Adds `treatment_path_two_week_unable_to_contact`, `what_mat_physician_appt_two_week_unable_to_contact`, and `mat_prescribed_physician_two_week_unable_to_contact`. This will allow for BHN to follow the new workflow that was created without having to modify `checkhideall()`, `checkhide()`, or create a new function to accommodate the complex conditional logic. Fixes typo in `transfer_type_two_week` from 'transferd' to 'transferred'.
- **2025-10-01**: Reorganizes the questions to make more sense and an easier work flow. Adds new questions `reason_not_attending_sud_tx_two_week`, `attending_sud_tx_verify_two_week`, `other_reason_not_attending_sud_tx_two_week`, and `attending_sud_tx_verify_two_week`. Creates a new function called `updateTwoWeekForm()` to handle the more complex conditional logic and `checkhideall()` still handles the simple `x = x` logic. Updates the `onclick` and `onchange` where needed. Updates options for `client_status_two_week` from 'Recommending' to 'Recommend'. Takes out option 'Client Declined SUD Treatment Services' from `treatment_path_two_week`.
- **2025-08-25**: Adds HTML and JavaScript code for `TiedEnrollment` fix that GVT created to help join all our Pathway forms together.
- **2025-08-15**: Changes the `MAT_PRESCRIBED_PHYSICIAN_APPT_TWO_WEEK` data type from `varchar(30)` to `varchar(50)` to accommodate the newly added value of 'Unable To Contact Client Or Treatment Agency', which was too long for the field.
- **2025-08-13**: Adds conditional question `why_not_meet_prog_eligibility_two_week` when program participation option '002' ('Ineligible, Does Not Meet Project Criteria') is selected. Adds radio button option to  `mat_prescribed_physician_appt_two_week`, 'Unable To Contact Client Or Treatment Agency'. Adds `presenting_notes_two_week` to the bottom of the form.
- **2025-07-22**: Adds 'Southeast' option to `if_transfer_what_region_two_week`.
- **2025-06-03**: Fixes alignment for the `Save` and `Delete` button. Comments out any code for function `quicksubmitit()` and anything related to `Quick Submit`.
- **2025-03-12**: Removes `client_atted_intake_appt_two_week` and `intake_appt_date_two_week` since those questions are now going to be answered on the `SUBroadTreatmentAgency` Summation. Also changed the view for `program_participation` since two week has it's own column on the table now.

</details>

</details>
