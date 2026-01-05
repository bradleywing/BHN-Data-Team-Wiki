---
front-matter-title: EPICC Initial Contact – Data Dictionary
permalink: /epicc-initial-contact/
layout: home
parent: EPICC Data Dictionaries
nav_order: 2
tags:
  - data-dictionary
  - epicc-initial-contact
master_tables:
  - epicc_program_participation
  - community_referral_source
  - epicc_opioids_of_use
  - epicc_types_mat
schema_version: 1
---
# EPICC Initial Contact – Data Dictionary

## Core Fields

<details markdown="1">
<summary><strong>Click to expand Core Fields</strong></summary>

| Field Order |                                                 FC Field Prompt                                                  |                  FC Field Name                  | Hidden |        Master Table         | Required | Reporting | System | Enabled | Analytical |
|:-----------:|:----------------------------------------------------------------------------------------------------------------:|:-----------------------------------------------:|:------:|:---------------------------:|:--------:|:---------:|:------:|:-------:|:----------:|
|     01      |                                             [System Metadata Field]                                              |                    docserno                     |  Yes   |                             |    NA    |    NA     |  Yes   |   Yes   |    Yes     |
|     02      |                                             [System Metadata Field]                                              |                 parentdocserno                  |  Yes   |                             |    NA    |    NA     |  Yes   |   Yes   |    Yes     |
|     03      |                                             [System Metadata Field]                                              |                     visitdt                     |  Yes   |                             |    NA    |    NA     |  Yes   |   Yes   |    Yes     |
|     04      |                                             [System Metadata Field]                                              |                     visittm                     |  Yes   |                             |    NA    |    NA     |  Yes   |   Yes   |    Yes     |
|     05      |                                            Select Pathway Assignment                                             |                 TiedEnrollment                  |   No   |                             |   Yes    |    NA     |   No   |   Yes   |    Yes     |
|     06      |                                                   Pathway Date                                                   |                  Pathway_Date                   |   No   |                             |   Yes    |    No     |   No   |   Yes   |    Yes     |
|     07      |                                              Time of Referral Call                                               |              time_referral_placed               |   No   |                             |   Yes    |    Yes    |   No   |   Yes   |            |
|     08      |                                         Time of Recovery Coach Response                                          |          time_recovery_coach_response           |   No   |                             |    No    |           |   No   |   No    |            |
|     09      |                                          Time of Recovery Coach Arrival                                          |           time_recovery_coach_arrival           |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     10      |                                                  Referral Type                                                   |              epicc_pro_or_core_ic               |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     11      |                                         How did client hear about EPICC?                                         |       how_client_found_out_about_program        |   No   |                             |    No    |    No     |   No   |   Yes   |            |
|     19      |                                              Program Participation                                               |         epicc_program_participation_ic          |   No   | epicc_program_participation |   Yes    |    Yes    |   No   |   Yes   |            |
|     20      |                                                 Type of Transer                                                  |                transfer_type_ic                 |   No   |                             |   Yes    |    Yes    |   No   |   Yes   |            |
|     21      |                                                   What Region?                                                   |           if_transfer_what_region_ic            |   No   |                             |    No    |           |   No   |   Yes   |            |
|     22      |                                 Was contact with transferring region successful?                                 | if_transfer_contact_transfer_region_success_ic  |   No   |                             |    No    |           |   No   |   Yes   |            |
|     23      |                                                      Status                                                      |         status_unable_contact_transfer          |   No   |                             |   Yes    |    Yes    |   No   |   Yes   |            |
|     24      |                                           Reason for not participating                                           |           reason_not_participating_ic           |   No   |                             |   Yes    |    Yes    |   No   |   Yes   |            |
|     25      |                                 Why does client not meet EPICC program criteria?                                 |        why_not_meet_prog_eligibility_ic         |   No   |                             |   Yes    |    Yes    |   No   |   Yes   |            |
|     26      |                                            Non-Opioid Substance Used                                             |              non_opioid_substance               |   No   |                             |    No    |           |   No   |   Yes   |            |
|     35      |                        What is client's current anticipated service path/treatment type?                         |                treatment_path_ic                |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     36      |                                               Explain Why Unknown                                                |            treatment_path_ic_unknown            |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     37      |                                           Who initiated the referral?                                            |             who_initiated_referral              |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     38      |                                        If Community Referral, Select One                                         |          community_referral_source_ic           |   No   |  community_referral_source  |   Yes    |           |   No   |   Yes   |            |
|     39      |                                                 Type of Contact                                                  |                 type_contact_ic                 |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     40      |                                         Reason Initial Contact Not Made                                          |              reason_ic_not_success              |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     41      |                                       Does client consent to CRC referral?                                       |             consent_crc_referral_ic             |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     42      |                                         If client did not consent, why?                                          |          reason_consent_refused_crc_ic          |   No   |                             |    No    |           |   No   |   Yes   |            |
|     43      |                                                 Opioid(s) of Use                                                 |              epicc_opioids_of_use               |   No   |    epicc_opioids_of_use     |   Yes    |           |   No   |   Yes   |            |
|     51      |                                                  Other Opioids                                                   |                 other_opioid_ic                 |   No   |                             |    No    |           |   No   |   Yes   |            |
|     52      |        Was the referral placed due to an overdose event (Not soley a severe use disorder or withdrawal?)         |             overdose_event_referral             |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     53      |                                               Explain Why Unknown                                                |         overdose_event_referral_unknown         |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     54      |                                               Location of Overdose                                               |                overdose_location                |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     55      |                                           Specify Location if "Other"                                            |             specify_other_location              |   No   |                             |    No    |           |   No   |   Yes   |            |
|     56      |                                      Was this the client's first overdose?                                       |                 first_overdose                  |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     57      |                                             Number of Past Overdoses                                             |               num_past_overdoses                |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     58      |                                       When was most recent past overdose?                                        |         most_recent_past_overdose_date          |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     59      |                                               Explain Why Unknown                                                |      most_recent_past_overdose_date_known       |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     60      |                      Has client been in substance use treatment within the past 12 months?                       |          su_treatment_past_twelve_mos           |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     61      |                                               Explain Why Unknown                                                |      su_treatment_past_twelve_mos_unknown       |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     62      |                              Is client currently receiving substance use treatment?                              |              current_su_treatment               |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     63      |                                               Explain Why Unknown                                                |          current_su_treatment_unknown           |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     64      |          Does client have an opioid prescription/is client being treated for long term pain management?          |     opioid_prescription_long_term_pain_mgmt     |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     65      |                                               Explain Why Unknown                                                | opioid_prescription_long_term_pain_mgmt_unknown |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     66      |                                   Has client ever had a prescription for MAT?                                    |       ever_prescription_mat_not_referral        |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     67      |                                               Explain Why Unknown                                                |   ever_prescription_mat_not_referral_unknown    |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     68      |                                 Does client have a current prescription for MAT?                                 |         current_script_mat_not_referral         |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     69      |                                               Explain Why Unknown                                                |     current_script_mat_not_referral_unknown     |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     70      |                                              Type of MAT Prescribed                                              |             current_script_mat_type             |   No   |       epicc_types_mat       |   Yes    |           |   No   |   Yes   |            |
|     71      |                                        Was MAT initiated in the hospital?                                        |             mat_initiated_hospital              |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     72      |                                             Type of MAT in Hospital                                              |           what_mat_initiated_hospital           |   No   |       epicc_types_mat       |   Yes    |           |   No   |   Yes   |            |
|     73      | Was client given a MAT prescription from a medical provider working in the hospital to take home/upon discharge? |              mat_script_discharge               |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     74      |                                               Explain Why Unknown                                                |          mat_script_discharge_unknown           |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     75      |                                              Type of MAT Prescribed                                              |            what_mat_script_discharge            |   No   |       epicc_types_mat       |   Yes    |           |   No   |   Yes   |            |
|     76      |                                         Was Overdose Education Provided                                          |              overdose_ed_provided               |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     77      |                                                  If "No", why?                                                   |             reason_oe_not_provided              |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     78      |                                               If "Other", specify                                                |                if_other_specify                 |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     79      |                                             Was Narcan Distributed?                                              |               narcan_distributed                |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     80      |                                                   If not, why?                                                   |          reason_narcan_not_distributed          |   No   |                             |    No    |           |   No   |   Yes   |            |
|     81      |                                               If "Other", specify                                                |                  no_narcan_exp                  |   No   |                             |    No    |           |   No   |   Yes   |            |
|     82      |                                   Is client currently pregnant or postpartum?                                    |                preg_post_part_ic                |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     83      |                                               Explain Why Unknown                                                |            preg_post_part_ic_unknown            |  Yes   |                             |   Yes    |           |   No   |   Yes   |            |
|     84      |                                               Is client a veteran?                                               |                 veteran_status                  |   No   |                             |   Yes    |           |   No   |   Yes   |            |
|     85      |                                                 Presenting Notes                                                 |               presenting_notes_ic               |   No   |                             |    No    |           |   No   |   Yes   |            |

</details>

## Core Field Details

<details markdown="1">
<summary><strong>Click to expand Core Field Details</strong></summary>

<details markdown="1">
<summary><strong>01 - docserno</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** varchar(25)  
**Question Type:** system_metadata_field  
**Variable Name:** ic_docserno

</details>

<details markdown="1">
<summary><strong>02 - parentdocserno</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** varchar(25)  
**Question Type:** system_metadata_field  
**Variable Name:** ic_parent_docserno

</details>

<details markdown="1">
<summary><strong>03 - visitdt</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** date  
**Question Type:** date  
**Variable Name:** ic_visit_date

</details>

<details markdown="1">
<summary><strong>04 - visittm</strong></summary>

**Field Prompt:** [System Metadata Field]
**Data Type:** varchar(20)  
**Question Type:** time  
**Variable Name:** ic_visit_time

</details>

<details markdown="1">
<summary><strong>05 - TiedEnrollment</strong></summary>

**Field Prompt:** Select Pathway Assignment
**Data Type:** varchar(200)  
**Question Type:** dropdown_dynamic_sql  
**Variable Name:** ic_tiedenrollment

</details>

<details markdown="1">
<summary><strong>06 - Pathway_Date</strong></summary>

**Field Prompt:** Pathway Date
**Data Type:** date  
**Question Type:** date  
**Variable Name:** ic_pathway_date

</details>

<details markdown="1">
<summary><strong>07 - time_referral_placed</strong></summary>

**Field Prompt:** Time of Referral Call
**Data Type:** varchar(75)  
**Question Type:** time  
**Variable Name:** time

</details>

<details markdown="1">
<summary><strong>08 - time_recovery_coach_response</strong></summary>

**Field Prompt:** Time of Recovery Coach Response
**Data Type:** varchar(75)  
**Question Type:** time  
**Variable Name:** time_referral_placed

</details>

<details markdown="1">
<summary><strong>09 - time_recovery_coach_arrival</strong></summary>

**Field Prompt:** Time of Recovery Coach Arrival
**Data Type:** varchar(75)  
**Question Type:** time  
**Variable Name:** time_recovery_coach_response

</details>

<details markdown="1">
<summary><strong>10 - epicc_pro_or_core_ic</strong></summary>

**Field Prompt:** Referral Type
**Data Type:** varchar(30)  
**Question Type:** radio_single_select  
**Variable Name:** time_recovery_coach_arrival

**LOV:**

- PRO
- CORE

</details>

<details markdown="1">
<summary><strong>11 - how_client_found_out_about_program</strong></summary>

**Field Prompt:** How did client hear about EPICC?
**Data Type:** NA  
**Question Type:** radio_single_select  
**Variable Name:** epicc_pro_or_core_ic

**LOV:**

- Friend or Family Member
- Community Center
- Outreach Worker
- Hospital Staff
- Flyer
- Church
- Other

**Conditional Logic:**

- Shown only if `epicc_pro_or_core` = 'CORE'

</details>

<details markdown="1">
<summary><strong>19 - epicc_program_participation_ic</strong></summary>

**Field Prompt:** Program Participation
**Data Type:** varchar(75)  
**Question Type:** dropdown_master_table  
**Variable Name:** epicc_program_participation_ic_code

**Master Table:** epicc_program_participation

**LOV:**

- '005' ('Unable To Contact/Locate')
- '013' ('Referral Received Within 30 Days')
- '019' ('Enrolled With EPICC')
- '022' ('Transfer')
- '024' ('Not Participating In EPICC Program')

</details>

<details markdown="1">
<summary><strong>20 - transfer_type_ic</strong></summary>

**Field Prompt:** Type of Transer
**Data Type:** varchar(75)  
**Question Type:** radio_single_select  
**Variable Name:** transfer_type_ic

**LOV:**

- Regional Transfer
- Services Transferred to ERE
- Services Transferred to Youth Program
- Transfer to BEACN

**Conditional Logic:**

- Shown only if `program_participation_ic` = '022'

</details>

<details markdown="1">
<summary><strong>21 - if_transfer_what_region_ic</strong></summary>

**Field Prompt:** What Region?
**Data Type:** varchar(30)  
**Question Type:** radio_single_select  
**Variable Name:** if_transfer_what_region_ic

**LOV:**

- Central
- Lake
- Southeast
- Southwest
- West

**Conditional Logic:**

- Shown only if `transfer_type_ic` = 'Regional Transfer`

</details>

<details markdown="1">
<summary><strong>22 - if_transfer_contact_transfer_region_success_ic</strong></summary>

**Field Prompt:** Was contact with transferring region successful?
**Data Type:** varchar(30)  
**Question Type:** radio_single_select  
**Variable Name:** if_transfer_contact_transfer_region_success_ic

**LOV:**

- No
- Yes

**Conditional Logic:**

- Shown only if `transfer_type_ic` = 'Regional Transfer`

</details>

<details markdown="1">
<summary><strong>23 - status_unable_contact_transfer</strong></summary>

**Field Prompt:** Status
**Data Type:** varchar(75)  
**Question Type:** radio_single_select  
**Variable Name:** status_unable_contact_transfer

**LOV:**

- Outreaching
- Recommending Termination

**Conditional Logic:**

- Shown only if `program_participation_ic` = '005'

</details>

<details markdown="1">
<summary><strong>24 - reason_not_participating_ic</strong></summary>

**Field Prompt:** Reason for not participating
**Data Type:** varchar(75)  
**Question Type:** dropdown_static  
**Variable Name:** reason_not_participating_ic

**LOV:**

- Client Deceased
- Client Declined EPICC Services
- Client In Jail/Incarcerated
- Doesn't Meet Program Criteria
- Not Clinically Appropriate

**Conditional Logic:**

- Shown only if `program_participation_ic` = '024'

</details>

<details markdown="1">
<summary><strong>25 - why_not_meet_prog_eligibility_ic</strong></summary>

**Field Prompt:** Why does client not meet EPICC program criteria?
**Data Type:** varchar(50)  
**Question Type:** radio_single_select  
**Variable Name:** why_not_meet_prog_eligibility_ic

**LOV:**

- Non-Opioid User
- Not A Missouri Resident
- Missouri Resident But Outside Eastern Region

**Conditional Logic:**

- Shown only if `reason_not_participating_ic` = 'Doesn't Meet Program Criteria'

</details>

<details markdown="1">
<summary><strong>26 - non_opioid_substance</strong></summary>

**Field Prompt:** Non-Opioid Substance Used
**Data Type:** varchar(10)  
**Question Type:** checkbox_muti_select  
**Variable Name:** NA

**LOV:**

- Alcohol
- Cannabis
- Hallucinogen (LSD, Ecstasy, Peyote)
- Inhalant
- PCP
- Stimulant (Cocaine, Amphetamines, Meth)
- Depressant (Barbiturates, Benzodiazepines)
- Other

**Conditional Logic:**

- Shown only if `why_not_meet_prog_eligibility_ic` = 'Non-Opioid User'

</details>

<details markdown="1">
<summary><strong>35 - treatment_path_ic</strong></summary>

**Field Prompt:** What is client's current anticipated service path/treatment type?
**Data Type:** varchar(30)  
**Question Type:** radio_single_select  
**Variable Name:** treatment_path_ic

**LOV:**

- 0
- 1

**Conditional Logic:**

- Shown only if `program_participation_ic` = '019'

</details>

<details markdown="1">
<summary><strong>36 - treatment_path_ic_unknown</strong></summary>

**Field Prompt:** Explain Why Unknown
**Data Type:** text  
**Question Type:** text_single_line  
**Variable Name:** treatment_path_ic_unknown

**Conditional Logic:**

- Shown only if `treatment_path_ic` = 'Unknown'

</details>

<details markdown="1">
<summary><strong>37 - who_initiated_referral</strong></summary>

**Field Prompt:** Who initiated the referral?
**Data Type:** varchar(75)  
**Question Type:** radio_single_select  
**Variable Name:** who_initiated_referral

**LOV:**

- Community
- EMS
- Hospital

</details>

<details markdown="1">
<summary><strong>38 - community_referral_source_ic</strong></summary>

**Field Prompt:** If Community Referral, Select One
**Data Type:** varchar(75)  
**Question Type:** dropdown_master_table  
**Variable Name:** community_referral_source_ic_code

**Master Table:** community_referral_source

**LOV:**

- '001’ (‘Adapt - Compass Health’)
- ‘002’ (‘Americorp’)
- ‘003’ (‘Barnes Care Clinic’)
- ‘004’ (‘Biddle House Shelter’)
- ‘005’ (‘Bridge Of Hope’)
- ‘006’ (‘CBHL’)
- ‘007’ (‘Compass Jefferson’)
- ‘008’ (‘Empowerment Center’)
- ‘009’ (‘Gateway Housing First’)
- ‘010’ (‘Gateway Re-Entry’)
- ‘011’ (‘H2HH’)
- ‘012’ (‘People's Health Center’)
- ‘013’ (‘Independence Center’)
- ‘014’ (‘Individual/Self’)
- ‘015’ (‘Integrated Health Network (IHN)’)
- ‘016’ (‘Law Enforcement’)
- ‘017’ (‘Living With Purpose’)
- ‘018’ (‘Mercy VSurp’)
- ‘019’ (‘New Life Center’)
- ‘020’ (‘Other’)
- ‘021’ (‘Peter And Paul Shelter’)
- ‘022’ (‘Phoenix Programs’)
- ‘023’ (‘Places For People’)
- ‘024’ (‘Queen Of Peace’)
- ‘025’ (‘Recovery House’)
- ‘026’ (‘Regional Transfer’)
- ‘027’ (‘Restorative Justice Movement’)
- ‘028’ (‘Saint Patrick Center’)
- ‘029’ (‘Sana Lake’)
- ‘030’ (‘Shelter’)
- ‘031’ (‘Family Or Friend’)
- ‘032’ (‘SLU Internal Medicine Clinic’)
- ‘033’ (‘Sobering Center’)
- ‘034’ (‘The T’)
- ‘035’ (‘Walk N Faith’)
- ‘036’ (‘Washington University - Infectious Disease’)
- ‘037’ (‘Wellston Loop CDC’)
- ‘038’ (‘Wentzville BHCC’)
- ‘039’ (‘Williams And Associates’)

**Conditional Logic:**

- Shown only if `who_initiated_referral` = 'Community'

</details>

<details markdown="1">
<summary><strong>39 - type_contact_ic</strong></summary>

**Field Prompt:** Type of Contact
**Data Type:** varchar(30)  
**Question Type:** radio_single_select  
**Variable Name:** type_contact_ic

**LOV:**

- In-Person
- Phone

</details>

<details markdown="1">
<summary><strong>40 - reason_ic_not_success</strong></summary>

**Field Prompt:** Reason Initial Contact Not Made
**Data Type:** varchar(75)  
**Question Type:** dropdown_static  
**Variable Name:** reason_ic_not_success

**LOV:**

- Client Not At Hospital Upon Coach Arrival
- Client Unable to Stay To Complete Intake
- Client Refused Initial Face-To-Face
- Unable To Contact/Locate
- Client Left AMA

**Conditional Logic:**

- Shown only if `program_participation_ic` = '005'

</details>

<details markdown="1">
<summary><strong>41 - consent_crc_referral_ic</strong></summary>

**Field Prompt:** Does client consent to CRC referral?
**Data Type:** varchar(30)  
**Question Type:** radio_single_select  
**Variable Name:** consent_crc_referral_ic

**LOV:**

- No
- Yes

</details>

<details markdown="1">
<summary><strong>42 - reason_consent_refused_crc_ic</strong></summary>

**Field Prompt:** If client did not consent, why?
**Data Type:** text  
**Question Type:** text_multi_line  
**Variable Name:** reason_consent_refused_crc_ic

**Conditional Logic:**

- Shown only if `consent_crc_referral_ic` = 'No'

</details>

<details markdown="1">
<summary><strong>43 - epicc_opioids_of_use</strong></summary>

**Field Prompt:** Opioid(s) of Use
**Data Type:** varchar(200)  
**Question Type:** dropdown_master_table  
**Variable Name:** epicc_opioids_of_use

**Master Table:** epicc_opioids_of_use

**LOV:**

- '001' ('Fentanyl')
- '002' ('Heroin')
- '003' ('Prescription Opiates')
- '004' ('Suboxone/MAT')
- '005' ('Multiple Opiates')
- '006' ('Other')
- ''007 ('NA')
- 

</details>

<details markdown="1">
<summary><strong>51 - other_opioid_ic</strong></summary>

**Field Prompt:** Other Opioids
**Data Type:** varchar(75)  
**Question Type:** text_single_line  
**Variable Name:** other_opioid_ic

**Conditional Logic:**

- Shown only if `epicc_opioids_of_use` = '006'

</details>

<details markdown="1">
<summary><strong>52 - overdose_event_referral</strong></summary>

**Field Prompt:** Was the referral placed due to an overdose event (Not soley a severe use disorder or withdrawal?)
**Data Type:** varchar(30)  
**Question Type:** radio_single_select  
**Variable Name:** overdose_event_referral

**LOV:**

- No
- Yes
- Unknown

</details>

<details markdown="1">
<summary><strong>53 - overdose_event_referral_unknown</strong></summary>

**Field Prompt:** Explain Why Unknown
**Data Type:** text  
**Question Type:** text_multi_line  
**Variable Name:** overdose_event_referral_unknown

**Conditional Logic:**

- Shown only if `overdose_event_referral` = 'Unknown'

</details>

<details markdown="1">
<summary><strong>54 - overdose_location</strong></summary>

**Field Prompt:** Location of Overdose
**Data Type:** varchar(52)  
**Question Type:** radio_single_select  
**Variable Name:** overdose_location

**LOV:**

- Home/Residence
- Treatment Facility
- Public Place (i.e., Parking Lot, Gas station, etc.)
- Other

**Conditional Logic:**

- Shown only if `overdose_event_referral` = 'Yes'

</details>

<details markdown="1">
<summary><strong>55 - specify_other_location</strong></summary>

**Field Prompt:** Specify Location if "Other"
**Data Type:** varchar(75)  
**Question Type:** text_single_line  
**Variable Name:** specify_other_location

**Conditional Logic:**

- Shown only if `overdose_location` = 'Other'

</details>

<details markdown="1">
<summary><strong>56 - first_overdose</strong></summary>

**Field Prompt:** Was this the client's first overdose?
**Data Type:** varchar(30)  
**Question Type:** radio_single_select  
**Variable Name:** first_overdose

**LOV:**

- No
- Yes
- Unknown

**Conditional Logic:**

- Shown only if `overdose_event_referral` = 'Yes'

</details>

<details markdown="1">
<summary><strong>57 - num_past_overdoses</strong></summary>

**Field Prompt:** Number of Past Overdoses
**Data Type:** varchar(75)  
**Question Type:** text_single_line  
**Variable Name:** num_past_overdoses

**Conditional Logic:**

- Shown only if `first_overdose` = 'No'

</details>

<details markdown="1">
<summary><strong>58 - most_recent_past_overdose_date</strong></summary>

**Field Prompt:** When was most recent past overdose?
**Data Type:** varchar(75)  
**Question Type:** dropdown_static  
**Variable Name:** most_recent_past_overdose_date

**LOV:**

- Past 3 Months
- Past 6 Months
- Past Year
- Past 2 - 5 Years
- 6 - 10 Years Ago
- 11+ Years Ago
- Unknown

**Conditional Logic:**

- Shown only if `first_overdose` = 'No'

</details>

<details markdown="1">
<summary><strong>59 - most_recent_past_overdose_date_known</strong></summary>

**Field Prompt:** Explain Why Unknown
**Data Type:** text  
**Question Type:** text_multi_line  
**Variable Name:** most_recent_past_overdose_date_unknown

**Conditional Logic:**

- Shown only if `most_recent_past_overdose_date` = 'Unknown'

</details>

<details markdown="1">
<summary><strong>60 - su_treatment_past_twelve_mos</strong></summary>

**Field Prompt:** Has client been in substance use treatment within the past 12 months?
**Data Type:** varchar(30)  
**Question Type:** radio_single_select  
**Variable Name:** su_treatment_past_twelve_mos

**LOV:**

- No
- Yes
- Unknown

</details>

<details markdown="1">
<summary><strong>61 - su_treatment_past_twelve_mos_unknown</strong></summary>

**Field Prompt:** Explain Why Unknown
**Data Type:** text  
**Question Type:** text_multi_line  
**Variable Name:** su_treatment_past_twelve_mos_unknown

**Conditional Logic:**

- Shown only if `su_treatment_past_twelve_mos` = 'Unknown'

</details>

<details markdown="1">
<summary><strong>62 - current_su_treatment</strong></summary>

**Field Prompt:** Is client currently receiving substance use treatment?
**Data Type:** varchar(30)  
**Question Type:** radio_single_select  
**Variable Name:** current_su_treatment

**LOV:**

- No
- Yes
- Unknown

</details>

<details markdown="1">
<summary><strong>63 - current_su_treatment_unknown</strong></summary>

**Field Prompt:** Explain Why Unknown
**Data Type:** text  
**Question Type:** text_multi_line  
**Variable Name:** current_su_treatment_unknown

**Conditional Logic:**

- Shown only if `current_su_treatment` = 'Unknown'

</details>

<details markdown="1">
<summary><strong>64 - opioid_prescription_long_term_pain_mgmt</strong></summary>

**Field Prompt:** Does client have an opioid prescription/is client being treated for long term pain management?
**Data Type:** varchar(30)  
**Question Type:** radio_single_select  
**Variable Name:** opioid_prescription_long_term_pain_mgmt

**LOV:**

- No
- Yes
- Unknown

</details>

<details markdown="1">
<summary><strong>65 - opioid_prescription_long_term_pain_mgmt_unknown</strong></summary>

**Field Prompt:** Explain Why Unknown
**Data Type:** text  
**Question Type:** text_multi_line  
**Variable Name:** opioid_prescription_long_term_pain_mgmt_unknown

**Conditional Logic:**

- Shown only if `opioid_prescription_long_term_pain_mgmt` = 'Unknown'

</details>

<details markdown="1">
<summary><strong>66 - ever_prescription_mat_not_referral</strong></summary>

**Field Prompt:** Has client ever had a prescription for MAT?
**Data Type:** varchar(75)  
**Question Type:** radio_single_select  
**Variable Name:** ever_prescription_mat_not_referral

**LOV:**

- No
- Yes
- Unknown

</details>

<details markdown="1">
<summary><strong>67 - ever_prescription_mat_not_referral_unknown</strong></summary>

**Field Prompt:** Explain Why Unknown
**Data Type:** text  
**Question Type:** text_multi_line  
**Variable Name:** ever_prescription_mat_not_referral_unknown

**Conditional Logic:**

- Shown only if `ever_prescription_mat_not_referral` = 'Unknown'

</details>

<details markdown="1">
<summary><strong>68 - current_script_mat_not_referral</strong></summary>

**Field Prompt:** Does client have a current prescription for MAT?
**Data Type:** varchar(30)  
**Question Type:** radio_single_select  
**Variable Name:** current_script_mat_not_referral

**LOV:**

- No
- Yes
- Unknown

</details>

<details markdown="1">
<summary><strong>69 - current_script_mat_not_referral_unknown</strong></summary>

**Field Prompt:** Explain Why Unknown
**Data Type:** text  
**Question Type:** text_multi_line  
**Variable Name:** current_script_mat_not_referral_unknown

**Conditional Logic:**

- Shown only If `current_script_mat_not_referral` = 'Unknown'

</details>

<details markdown="1">
<summary><strong>70 - current_script_mat_type</strong></summary>

**Field Prompt:** Type of MAT Prescribed
**Data Type:** varchar(75)  
**Question Type:** dropdown_master_table  
**Variable Name:** current_script_mat_type_code

**Master Table:** epicc_types_mat

**LOV:**

- '001' ('Methadone')
- '002' ('Naltrexone')
- '003' ('Subuoxone')
- '004' ('Subutex')
- '005' ('Vivitrol')
- '006'  ('Zubsolv')

**Conditional Logic:**

- Shown only if `current_script_mat_not_referral` = 'Yes'

</details>

<details markdown="1">
<summary><strong>71 - mat_initiated_hospital</strong></summary>

**Field Prompt:** Was MAT initiated in the hospital?
**Data Type:** varchar(75)  
**Question Type:** radio_single_select  
**Variable Name:** mat_initiated_hospital

**LOV:**

- No
- Yes

**Conditional Logic:**

- Shown only if `epicc_pro_or_core_ic` = 'PRO'

</details>

<details markdown="1">
<summary><strong>72 - what_mat_initiated_hospital</strong></summary>

**Field Prompt:** Type of MAT in Hospital
**Data Type:** varchar(75)  
**Question Type:** dropdown_master_table  
**Variable Name:** what_mat_initiated_hospital_code

**Master Table:** epicc_types_mat

**LOV:**

- '001' ('Methadone')
- '002' ('Naltrexone')
- '003' ('Subuoxone')
- '004' ('Subutex')
- '005' ('Vivitrol')
- '006'  ('Zubsolv')

**Conditional Logic:**

- Shown only if `mat_initiated_hospital` = 'Yes'

</details>

<details markdown="1">
<summary><strong>73 - mat_script_discharge</strong></summary>

**Field Prompt:** Was client given a MAT prescription from a medical provider working in the hospital to take home/upon discharge?
**Data Type:** varchar(100)  
**Question Type:** radio_single_select  
**Variable Name:** mat_script_discharge

**LOV:**

- No
- Yes
- Unknown

**Conditional Logic:**

- Shown only if `epicc_pro_or_core_ic` = 'PRO'

</details>

<details markdown="1">
<summary><strong>74 - mat_script_discharge_unknown</strong></summary>

**Field Prompt:** Explain Why Unknown
**Data Type:** text  
**Question Type:** text_multi_line  
**Variable Name:** mat_script_discharge_unknown

**Conditional Logic:**

- Shown only if `mat_script_discharge` = 'Unknown'

</details>

<details markdown="1">
<summary><strong>75 - what_mat_script_discharge</strong></summary>

**Field Prompt:** Type of MAT Prescribed
**Data Type:** varchar(75)  
**Question Type:** dropdown_master_table  
**Variable Name:** what_mat_script_discharge_code

**Master Table:** epicc_types_mat

**LOV:**

- '001' ('Methadone')
- '002' ('Naltrexone')
- '003' ('Subuoxone')
- '004' ('Subutex')
- '005' ('Vivitrol')
- '006'  ('Zubsolv')

**Conditional Logic:**

- Shown only if `mat_script_discharge` = 'Yes'

</details>

<details markdown="1">
<summary><strong>76 - overdose_ed_provided</strong></summary>

**Field Prompt:** Was Overdose Education Provided
**Data Type:** varchar(30)  
**Question Type:** radio_single_select  
**Variable Name:** overdose_ed_provided

**LOV:**

- No
- Yes

</details>

<details markdown="1">
<summary><strong>77 - reason_oe_not_provided</strong></summary>

**Field Prompt:** If "No", why?
**Data Type:** varchar(30)  
**Question Type:** radio_single_select  
**Variable Name:** reason_oe_not_provided

**LOV:**

- Client Declined
- Other

**Conditional Logic:**

- Shown only if `overdose_ed_provided` = 'No'

</details>

<details markdown="1">
<summary><strong>78 - if_other_specify</strong></summary>

**Field Prompt:** If "Other", specify
**Data Type:** text  
**Question Type:** text_multi_line  
**Variable Name:** if_other_specify

**Conditional Logic:**

- Shown only if `reason_oe_not_provided` = 'Other'

</details>

<details markdown="1">
<summary><strong>79 - narcan_distributed</strong></summary>

**Field Prompt:** Was Narcan Distributed?
**Data Type:** varchar(30)  
**Question Type:** radio_single_select  
**Variable Name:** narcan_distributed

**LOV:**

- No
- Yes

</details>

<details markdown="1">
<summary><strong>80 - reason_narcan_not_distributed</strong></summary>

**Field Prompt:** If not, why?
**Data Type:** varchar(30)  
**Question Type:** text_single_line  
**Variable Name:** reason_narcan_not_distributed

**LOV:**

- Client Declined
- Hospital Policy
- Inpatient Hospitalization
- Other

**Conditional Logic:**

- Shown only if `narcan_distributed` = 'No'

</details>

<details markdown="1">
<summary><strong>81 - no_narcan_exp</strong></summary>

**Field Prompt:** If "Other", specify
**Data Type:** varchar(75)  
**Question Type:** radio_single_select  
**Variable Name:** no_narcan_exp

**LOV:**

- No
- Yes

**Conditional Logic:**

- Shown only if `reason_narcan_not_distributed` = 'Other'

</details>

<details markdown="1">
<summary><strong>82 - preg_post_part_ic</strong></summary>

**Field Prompt:** Is client currently pregnant or postpartum?
**Data Type:** varchar(30)  
**Question Type:** radio_single_select  
**Variable Name:** preg_post_part_ic

**LOV:**

- No
- Yes
- Unknown

</details>

<details markdown="1">
<summary><strong>83 - preg_post_part_ic_unknown</strong></summary>

**Field Prompt:** Explain Why Unknown
**Data Type:** text  
**Question Type:** text_multi_line  
**Variable Name:** preg_post_part_ic_unknown

**Conditional Logic:**

- Shown only if `preg_post_part_ic` = 'Unknown'

</details>

<details markdown="1">
<summary><strong>84 - veteran_status</strong></summary>

**Field Prompt:** Is client a veteran?
**Data Type:** varchar(30)  
**Question Type:** radio_single_select  
**Variable Name:** veteran_status

**LOV:**

- No
- Yes

</details>

<details markdown="1">
<summary><strong>85 - presenting_notes_ic</strong></summary>

**Field Prompt:** Presenting Notes
**Data Type:** text  
**Question Type:** text_multi_line  
**Variable Name:** NA

</details>

</details>

## Pivoted Fields (Hidden)

<details markdown="1">
<summary><strong>Click to expand Pivoted Rows</strong></summary>

| Field Order |           FC Field Name            | Parent Field |                                     Populated When                                      | Values | Notes |
|:-----------:|:----------------------------------:|:------------:|:---------------------------------------------------------------------------------------:|:------:|:-----:|
|     12      |      heard_about_from_church       |     0211     |            Populated only if `how_client_found_out_about_program` = 'Church'            |  0;1   |       |
|     13      | heard_about_from_community_center  |     0211     |       Populated only if `how_client_found_out_about_program` = 'Community Center'       |  0;1   |       |
|     14      |       heard_about_from_flyer       |     0211     |            Populated only if `how_client_found_out_about_program` = 'Flyer'             |  0;1   |       |
|     15      |   heard_about_from_friend_family   |     0211     |   Populated only if `how_client_found_out_about_program` = 'Friend or Family Member'    |  0;1   |       |
|     16      |  heard_about_from_hospital_staff   |     0211     |        Populated only if `how_client_found_out_about_program` = 'Hospital Staff'        |  0;1   |       |
|     17      |       heard_about_from_other       |     0211     |            Populated only if `how_client_found_out_about_program` = 'Other'             |  0;1   |       |
|     18      |  heard_about_from_outreach_worker  |     0211     |       Populated only if `how_client_found_out_about_program` = 'Outreach Worker'        |  0;1   |       |
|     27      |    non_opioid_substance_alcohol    |     0226     |                  Populated only if `non_opioid_substance` = 'Alcohol'                   |  0;1   |       |
|     28      |   non_opioid_substance_cannabis    |     0226     |                  Populated only if `non_opioid_substance` = 'Canabis'                   |  0;1   |       |
|     29      |  non_opioid_substance_depressant   |     0226     | Populated only if `non_opioid_substance` = 'Depressant (Barbiturates; Benzodiazepines)' |  0;1   |       |
|     30      | non_opioid_substance_hallucinogen  |     0226     |    Populated only if `non_opioid_substance` = 'Hallucinogen (LSD; Ecstasy; Peyote)'     |  0;1   |       |
|     31      |   non_opioid_substance_inhalant    |     0226     |                  Populated only if `non_opioid_substance` = 'Inhalant'                  |  0;1   |       |
|     32      |     non_opioid_substance_other     |     0226     |                   Populated only if `non_opioid_substance` = 'Other'                    |  0;1   |       |
|     33      |      non_opioid_substance_pcp      |     0226     |                    Populated only if `non_opioid_substance` = 'PCP'                     |  0;1   |       |
|     34      |   non_opioid_substance_stimulant   |     0226     |  Populated only if `non_opioid_substance` = 'Stimulant (Cocaine; Amphetamines; Meth)'   |  0;1   |       |
|     44      |       opioid_of_use_fentanyl       |     0243     |                   Populated only when `epicc_opioids_of_use` = '001'                    |  0;1   |       |
|     45      |        opioid_of_use_heroin        |     0243     |                   Populated only when `epicc_opioids_of_use` = '002'                    |  0;1   |       |
|     46      |   opioid_of_use_multiple_opiates   |     0243     |                   Populated only when `epicc_opioids_of_use` = '005'                    |  0;1   |       |
|     47      |          opioid_of_use_na          |     0243     |                   Populated only when `epicc_opioids_of_use` = '007'                    |  0;1   |       |
|     48      |        opioid_of_use_other         |     0243     |                   Populated only when `epicc_opioids_of_use` = '006'                    |  0;1   |       |
|     49      | opioid_of_use_prescription_opiates |     0243     |                   Populated only when `epicc_opioids_of_use` = '003'                    |  0;1   |       |
|     50      |     opioid_of_use_suboxone_mat     |     0243     |                   Populated only when `epicc_opioids_of_use` = '004'                    |  0;1   |       |

</details>

## Changelog

<details markdown="1">
<summary><strong>View Changelog Details</strong></summary>

<details markdown="1">
  <summary><strong>2025</strong></summary>

### 2025

- **2025-12-24**: Creates new data dictionary file to support scripting to Markdown files, splitting across a main `fields` table for all forms across all programs, `forms_meta` table for front matter YAML content, and `forms_changelogs`to maintain all changelogs.
- **2025-10-04**: Adds collapsible `<details markdown="1"></details>` section to the changelog. Adds year subsection to better organize long changelog lists.
- **2025-09-30**: Replaces `<div markdown="1"></div>` with `<details markdown="1">` after learning that `Jekyll` must be configured to parse Markdown inside HTML blocks. While GitHub Pages will should build tables correctly if Kramdown is configured to use the `GitHub Flavored Markdown (GFM)` in the `_config.yaml`.
- **2025-09-22**: Adds `nav_order:` and `parent:` fields to frontmatter. Adds `<div markdown="1"></div>` element to each `<details></details>` element throughout the page to satisfy the Kramdown Markdown editor used by Jekyll so that the collapsible sections do not break the Markdown within them. Changes `status:` to `draft` since `In Development` is no longer a valid status. Adds `documentation` tag to frontmatter.
- **2025-09-19**: Adds `permalink:` and `layout:` fields to frontmatter.
- **2025-09-18**: Renames file to `epicc-initial-contact.md` to eliminate ambiguity in permalinks.
- **2025-08-21**: Reformats and tweaks content.
- **2025-08-15**: Adds substantial content.
- **2025-08-03**: Renames file to `table-initial-contact.md`. Removes the `Changelog` and transfers it to the HTML file in `FAMCare-HTML-Form-Code` repo because the content centered on changes to the form and table; adds substantial content, mostly consisting of `LOV` sections; updates the frontmatter.
- **2025-08-02**: Adds collapsible `<details>` elements; reformats significant amounts of the file; adds more `LOV` sections.
- **2025-08-01**: Adds Markdown file, adds frontmatter, adds most content, including a `Core Fields` matrix and various `LOV` sections.

</details>

</details>
