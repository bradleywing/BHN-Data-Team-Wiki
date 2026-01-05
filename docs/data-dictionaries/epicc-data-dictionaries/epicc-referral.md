---
front-matter-title: EPICC Referral - Data Dictionary
permalink: /epicc-referral/
layout: home
parent: EPICC Data Dictionaries
nav_order: 1
tags:
  - data-dictionary
  - epicc-referral
master_tables:
  - program_referral_sources
  - community_referral_source
  - epicc_ems_fire_district
  - epicc_program_participation
schema_version: 1
---
# EPICC Referral - Data Dictionary

## Core Fields

<details markdown="1">
<summary><strong>Click to expand Core Fields</strong></summary>

| Field Order |         FC Field Prompt          |       FC Field Name       | Hidden |       Master Table        | Required | Reporting | System | Enabled | Analytical |
|:-----------:|:--------------------------------:|:-------------------------:|:------:|:-------------------------:|:--------:|:---------:|:------:|:-------:|:----------:|
|     01      |     [System Metadata Field]      |         docserno          |  Yes   |                           |    NA    |    NA     |  Yes   |   Yes   |    Yes     |
|     02      |     [System Metadata Field]      |      parentdocserno       |  Yes   |                           |    NA    |    NA     |  Yes   |   Yes   |    Yes     |
|     03      |     [System Metadata Field]      |          visitdt          |  Yes   |                           |    NA    |    NA     |  Yes   |   Yes   |    Yes     |
|     04      |     [System Metadata Field]      |          visittm          |  Yes   |                           |    NA    |    NA     |  Yes   |   Yes   |    Yes     |
|     05      |    Select Pathway Assignment     |      TiedEnrollment       |   No   |                           |   Yes    |    NA     |   No   |   Yes   |    Yes     |
|     06      |           Pathway Date           |       Pathway_Date        |   No   |                           |   Yes    |    No     |   No   |   Yes   |    Yes     |
|     07      |            Call Time             |    time_call_received     |   No   |                           |    No    |    No     |   No   |   Yes   |     No     |
|     08      |         Referrer's Name          |       referrer_name       |   No   |                           |   Yes    |    No     |   No   |   Yes   |     No     |
|     09      |         Referrer's Phone         |      referrer_phone       |   No   |                           |    No    |    No     |   No   |   Yes   |     No     |
|     10      |         Referring Agency         |  epicc_referring_agency   |   No   | program_referral_sources  |   Yes    |    Yes    |   No   |   Yes   |    Yes     |
|     11      | Select Community Referral Source | community_referral_source |   No   | community_referral_source |   Yes    |    Yes    |   No   |   Yes   |    Yes     |
|     12      |         Family Or Friend         |     family_or_friend      |   No   |                           |    No    |    No     |   No   |   Yes   |     No     |

</details>

## Core Field Details

<details markdown="1">
<summary><strong>Click to expand Core Field Details</strong></summary>

<details markdown="1">
<summary><strong>01 - docserno</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** varchar(25)  
**Question Type:** system_metadata_field  
**Variable Name:** ref_docserno

</details>

<details markdown="1">
<summary><strong>02 - parentdocserno</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** varchar(25)  
**Question Type:** system_metadata_field  
**Variable Name:** ref_parent_docserno

</details>

<details markdown="1">
<summary><strong>03 - visitdt</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** date  
**Question Type:** date  
**Variable Name:** ref_visit_date

</details>

<details markdown="1">
<summary><strong>04 - visittm</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** varchar(20)  
**Question Type:** time  
**Variable Name:** ref_visit_time

</details>

<details markdown="1">
<summary><strong>05 - TiedEnrollment</strong></summary>

**Field Prompt:** Select Pathway Assignment
**Data Type:** varchar(200)  
**Question Type:** dropdown_dynamic_sql  
**Variable Name:** ref_tiedenrollment

</details>

<details markdown="1">
<summary><strong>06 - Pathway_Date</strong></summary>

**Field Prompt:** Pathway Date
**Data Type:** date  
**Question Type:** date  
**Variable Name:** ref_pathway_date

</details>

<details markdown="1">
<summary><strong>07 - time_call_received</strong></summary>

**Field Prompt:** Call Time
**Data Type:** varhcar(75)  
**Question Type:** time  
**Variable Name:** NA

</details>

<details markdown="1">
<summary><strong>08 - referrer_name</strong></summary>

**Field Prompt:** Referrer's Name
**Data Type:** text  
**Question Type:** text_single_line  
**Variable Name:** NA

</details>

<details markdown="1">
<summary><strong>09 - referrer_phone</strong></summary>

**Field Prompt:** Referrer's Phone
**Data Type:** text  
**Question Type:** text_single_line  
**Variable Name:** NA

</details>

<details markdown="1">
<summary><strong>10 - epicc_referring_agency</strong></summary>

**Field Prompt:** Referring Agency
**Data Type:** varchar(75)  
**Question Type:** dropdown_master_table  
**Variable Name:** NA

**Master Table:** program_referral_sources

**LOV:**

- ‘’002’ (‘BJC - Barnes-Jewish Hospital’)
- ‘003’ (‘BJC - Barnes-Jewish Hospital Perinatal Behavioral Health Services’)
- ‘004’ (‘BJC - Barnes-Jewish Hospital Progress West’)
- ‘006’ (‘BJC - Barnes-Jewish Hospital Psychiatric Support Center’)
- ‘007’ (‘BJC - Barnes-Jewish Hospital St. Peters’)
- ‘011’ (‘BJC - Missouri Baptist’)
- ‘014’ (‘Community’)
- ‘015’ (‘EMS/Fire District (No Hospital Transport)’)
- ‘019’ (‘Mercy - Jefferson’)
- ‘021’ (‘Mercy - Lincoln’)
- ‘023’ (‘Mercy - South’)
- ‘027’ (‘Mercy - St. Louis’)
- ‘029’ (‘Mercy - Washington’)
- ‘034’ (‘SSM Health - DePaul’)
- ‘035’ (‘SSM Health - SLU’)
- ‘038’ (‘SSM Health - St. Clare’)
- ‘041’ (‘SSM Health - St. Joseph (St. Charles)’)
- ‘044’ (‘SSM Health - St. Joseph (Wentzville)’)
- ‘046’ (‘SSM Health - St. Mary's’)
- ‘047’ (‘St. Luke's Hospital - Chesterfield’)
- ‘048’ (‘St. Luke's Hospital - Des Peres’)
- ‘050’ (‘SSM Health - St. Joseph (Lake St. Louis)’)
- ‘051’ (‘BJC - Christian Hospital Northeast’)
- ‘052’ (‘BJC - Christian Hospital Northwest’)
- ‘073’ (‘EMS/Fire District’)

</details>

<details markdown="1">
<summary><strong>11 - community_referral_source</strong></summary>

**Field Prompt:** Select Community Referral Source
**Data Type:** varchar(75)  
**Question Type:** dropdown_master_table  
**Variable Name:** NA

**Master Table:** community_referral_source

**LOV:**

- ‘’001’ (‘Adapt - Compass Health’)
- '002’ (‘Americorp’)
- '003’ (‘Barnes Care Clinic’)
- '004’ (‘Biddle House Shelter’)
- '005’ (‘Bridge Of Hope’)
- '006’ (‘CBHL’)
- '007’ (‘Compass Jefferson’)
- '008’ (‘Empowerment Center’)
- '009’ (‘Gateway Housing First’)
- '010’ (‘Gateway Re-Entry’)
- '011’ (‘H2HH’)
- '012’ (‘People's Health Center’)
- '013’ (‘Independence Center’)
- '014’ (‘Individual/Self’)
- '015’ (‘Integrated Health Network (IHN)’)
- '016’ (‘Law Enforcement’)
- '017’ (‘Living With Purpose’)
- '018’ (‘Mercy VSurp’)
- '019’ (‘New Life Center’)
- '020’ (‘Other’)
- '021’ (‘Peter And Paul Shelter’)
- '022’ (‘Phoenix Programs’)
- '023’ (‘Places For People’)
- '024’ (‘Queen Of Peace’)
- '025’ (‘Recovery House’)
- '026’ (‘Regional Transfer’)
- '027’ (‘Restorative Justice Movement’)
- '028’ (‘Saint Patrick Center’)
- '029’ (‘Sana Lake’)
- '030’ (‘Shelter’)
- '031’ (‘Family Or Friend’)
- '032’ (‘SLU Internal Medicine Clinic’)
- '033’ (‘Sobering Center’)
- '034’ (‘The T’)
- '035’ (‘Walk N Faith’)
- '036’ (‘Washington University - Infectious Disease’)
- '037’ (‘Wellston Loop CDC’)
- '038’ (‘Wentzville BHCC’)
- '039’ (‘Williams And Associates’)

**Conditional Logic:**

- Shown only if `epicc_referring_agency` = '014'

</details>

<details markdown="1">
<summary><strong>12 - family_or_friend</strong></summary>

**Field Prompt:** Family Or Friend
**Data Type:** varchar(75)  
**Question Type:** dropdown_static  
**Variable Name:** NA

**Conditional Logic:**

- Shown only if `community_referral_source` = '031'

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

- **2025-10-01**: Updates options for `program_participation_referral` to 'Eligible For Services', 'Ineligible', and 'Unable To Contact/Locate'. Adds a new field `ineligible_referral` where the user will select why the client wasn't eligible at referral and then `ineligible_reason` is conditional upon if 'Doesn't Meet Program Criteria' is selected for `ineligible_referral`.
- **2025-09-18**: Adds HTML and JavaScript code for `TiedEnrollment` fix that GVT created to help join all our Pathway forms together.
- **2025-08-15**: Removes `client_on_outreach_list` since the field is no longer needed. Makes `ems_fire_district_place_referral_in_transit`, `emergency_response_call`, and `suboxone_ems` conditional upon '073' and '015'. Adds open text field for `other_ems_fire_district`. This field is conditionally shown when 'Other EMS/Fire District' is selected for `Which EMS/Fire District?`
- **2025-07-21**: Adds question `why_not_suboxone_ems` after `suboxone_ems question`. If `suboxone_ems` question is answered as No then `why_not_suboxone_ems` question will show.
- **2025-07-14**: Makes `who_administered_suboxone` and `milligrams_suboxone` to be dependent on when `suboxone_ems` is 'Yes'.
- **2025-07-10**: Adds EMS questions (`emergency_response_call`, `suboxone_ems`, `who_administered_suboxone`, `milligrams_suboxone`, `ems_transport_to_hospital`) that were asked by AnswerFirst and EPICC reports out on monthly.
- **2025-06-03**: Comments out code for function `quicksubmitit()`.
- **2025-05-01**: Fixes alignment for the Save and Quick Save buttons.
- **2025-04-14**: Fixes alignment of Save, Quick Save, and Delete buttons to be in the center of the form.
- **2025-03-14**: Removes `agreeable_ed_outreach` from the `validateform()` function and the `setrequire()` function.

</details>

</details>
