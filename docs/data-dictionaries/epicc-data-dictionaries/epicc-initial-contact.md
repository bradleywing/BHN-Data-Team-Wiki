---
front-matter-title: EPICC Initial Contact – Data Dictionary
author: Bradley Wing
last_updated: 2025-09-30
status: draft
program_scope: single
programs: 
  - epicc
tags:
  - data-dictionary
  - documentation
  - epicc-initial-contact
permalink: /epicc-initial-contact/
layout: home
nav_order: 2
parent: EPICC Data Dictionaries
master_tables:
  - epicc_program_participation
schema_version: 1.0
---

# Initial Contact - Data Dictionary

## Core Fields

<details markdown="1">
<summary><strong>Click to expand Core Fields</strong></summary>

| Field Order |                          FC Field Prompt                          |                  FC Field Name                 | Hidden |         Master Table        | Required | Reporting |         Notes        |
|:-----------:|:-----------------------------------------------------------------:|:----------------------------------------------:|:------:|:---------------------------:|:--------:|:---------:|:--------------------:|
|     0201    |                            Pathway Date                           |                  pathway_date                  |   No   |                             |    Yes   |    Yes    |                      |
|     0202    |                       Time of Referral Call                       |              time_referral_placed              |   No   |                             |    Yes   |    Yes    |                      |
|     0203    |                  Time of Recovery Coach Response                  |          time_recovery_coach_response          |   No   |                             |    Yes   |    Yes    |                      |
|     0204    |                   Time of Recovery Coach Arrival                  |           time_recovery_coach_arrival          |   No   |                             |    Yes   |    Yes    |                      |
|     0205    |                           Referral Type                           |              epicc_pro_or_core_ic              |   No   |     epicc_pro_or_core_ic    |    Yes   |     No    |                      |
|     0206    |                  How did client hear about EPICC?                 |       how_client_found_out_about_program       |   No   |                             |    No    |     No    | Pivoted fields below |
|     0207    |                       Program Participation                       |            program_participation_ic            |   No   | epicc_program_participation |    Yes   |     No    |  Dropdown codes only |
|    0207.1   |                 Program Participation Description                 |      program_participation_ic_description      |   No   | epicc_program_participation |    Yes   |    Yes    |  Master table labels |
|     0208    | What is client's current anticipated service path/treatment type? |                treatment_path_ic               |   No   |                             |    Yes   |    Yes    |                      |
|    0209s    |                     Treatment Agency Summation                    |                                                |   No   |                             |          |           |                      |
|     0210    |                 If Community Referral, Select One                 |          community_referral_source_ic          |   No   |  community_referral_source  |    Yes   |           |  Dropdown codes only |
|    0210.1   |                                                                   |    community_referral_source_ic_description    |   No   |                             |    Yes   |           |  Master table labels |
|     0211    |                          Type of Contact                          |                 type_contact_ic                |   No   |                             |    Yes   |           |                      |
|     0212    |                            What Region?                           |           if_transfer_what_region_ic           |   No   |                             |    Yes   |           |                      |
|     0213    |                    Who initiated the referral?                    |             who_initiated_referral             |   No   |                             |    Yes   |           |                      |
|     0214    |          Was contact with transferring region successful?         | if_transfer_contact_transfer_region_success_ic |   No   |                             |    Yes   |           |                      |
|     0215    |          Status if Unable to Contact or Regional Transfer         |         status_unable_contact_transfer         |   No   |                             |    Yes   |           |                      |
|     0216    |          Why does client not meet EPICC program criteria?         |        why_not_meet_prog_eligibility_ic        |   No   |                             |    Yes   |           |                      |
|     0217    |                     Non-Opioid Substance Used                     |              non_opioid_substance              |   No   |                             |    Yes   |           |                      |

```yaml
groupings:
  - field: 0228
    label: Opioid(s) of Use
    pivots: 7
  - field: 0206
    label: Referral Source
    pivots: 5
```

</details>

<details markdown="1">
<summary><strong>Click to expand Core Field Details</strong></summary>

<details markdown="1">
<summary><strong>0205 - epicc_pro_or_core_ic</strong> – LOV</summary>

**LOV:**

- 'CORE'
- 'PRO'

**Audit Notes:**

- Deprecated values: N/A

</details>

<details markdown="1">
<summary><strong>0206 - how_client_found_out_about_program</strong> – LOV & Conditional Logic</summary>

**LOV:**

- 'Friend Or Family Member'
- 'Community Center'
- 'Outreach Worker'
- 'Hospital Staff'
- 'Flyer'
- 'Church'
- 'Other'

**Conditional Logic:**

- Shown only if `epicc_pro_or_core_ic = 'CORE'`

**Audit Notes:**

- Deprecated values: N/A

</details>

<details markdown="1">
<summary><strong>0207 - program_participation_ic</strong> – LOV</summary>

**LOV:**

- '002' ('Ineligible, Does Not Meet Project Criteria')
- '003' ('Ineligible, Not Clinically Appropriate')
- '004' ('Client Declined Services')
- '005' ('Unable To Contact/Locate')
- '006' ('Client In Jail/Incarcerated')
- '007' ('Client Deceased')
- '008' ('Outreaching For 30 Days')
- '010' ('Regional Transfer')
- '011' ('Services Transferred To ERE')
- '012' ('Already Enrolled In SUD Services')
- '013' ('Referral Received Within 30 Days')
- '014' ('Services Transferred To Youth ERE Program')
- '019' ('Enrolled With EPICC')

**Audit Notes:**

- Deprecated values: N/A

</details>

<details markdown="1">
<summary><strong>0208 - treatment_path_ic</strong> – LOV & Conditional Logic</summary>

**LOV:**

- 'MAT'
- 'Non-MAT Treatment'
- 'Recovery Coach Only'
- 'Unknown'

**Conditional Logic:**

- Shown only if `program_participation_ic = '019' ('Enrolled With EPICC')`
**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0210 -community_referral_source_ic</strong> – LOV & Conditional Logic</summary>

**LOV:**

- '001' - 'Adapt - Compass Health'
- '002' - 'Americorp'
- '003' - 'Barnes Care Clinic'
- '004' - 'Biddle House Shelter'
- '005' - 'Bridge Of Hope'
- '006' - 'CBHL'
- '007' - 'Compass Jefferson'
- '008' - 'Empowerment Center'
- '009' - 'Gateway Housing First'
- '010' - 'Gateway Re-Entry'
- '011' - 'H2HH'
- '012' - 'People's Health Center'
- '013' - 'Independence Center'
- '014' - 'Individual/Self'
- '015' - 'Integrated Health Network (IHN)'
- '016' - 'Law Enforcement'
- '017' - 'Living With Purpose'
- '018' - 'Mercy VSurp'
- '019' - 'New Life Center'
- '020' - 'Other'
- '021' - 'Peter And Paul Shelter'
- '022' - 'Phoenix Programs'
- '023' - 'Places For People'
- '024' - 'Queen Of Peace'
- '025' - 'Recovery House'
- '026' - 'Regional Transfer'
- '027' - 'Restorative Justice Movement'
- '028' - 'Saint Patrick Center'
- '029' - 'Sana Lake'
- '030' - 'Shelter'
- '031' - 'Family Or Friend'
- '032' - 'SLU Internal Medicine Clinic'
- '033' - 'Sobering Center'
- '034' - 'The T'
- '035' - 'Walk N Faith'
- '036' - 'Washington University - Infectious Disease'
- '037' - 'Wellston Loop CDC'
- '038' - 'Wentzville BHCC'
- '039' - 'Williams And Associates'

**Conditional Logic:**

- Shown only if `who_initiated_referral_ic = 'Community'`

**Audit Notes:**

Deprecated values:

- '040' - 'Significant Other'

</details>

<details markdown="1">
<summary><strong>0211 - type_contact_ic</strong> – LOV</summary>

**LOV:**

- 'In-Person'
- 'Phone'

**Audit Notes:**

- Deprecated values: N/A

</details>

<details markdown="1">
<summary><strong>0212 - if_transfer_what_region_ic</strong> – LOV & Conditional Logic</summary>

**LOV:**

- 'Central'
- 'Lake'
- 'Southeast'
- 'Southwest'
- 'West'

**Conditional Logic:**

- Shown only if `program_participation = '010' ('Regional Transfer')`

**Audit Notes:**

- Deprecated values: N/A

</details>

<details markdown="1">
<summary><strong>0213 - who_initiated_referral</strong> – LOV</summary>

**LOV:**

- 'Community'
- 'EMS'
- 'Hospital'

**Audit Notes:**

- Deprecated values: N/A

</details>

<details markdown="1">
<summary><strong> 0214 - if_transfer_contact_transfer_region_success_ic</strong> – LOV & Conditional Logic</summary>

**LOV:**

- 'No'
- 'Yes'

**Conditional Logic:**

- Shown only if `program_participation = '010' ('Regional Transfer')`

**Audit Notes:**

- Deprecated values: N/A

</details>

<details markdown="1">
<summary><strong>0215 - status_unable_contact_transfer</strong> – LOV & Conditional Logic</summary>

**LOV:**

- 'Outreaching'
- 'Client Services Being Terminated'
- 'Client Continuing Services With Other Recovery Coach'

**Conditional Logic:**

- Shown only if `program_participation IN ('005' ('Unable To Contact/Locate'), '010' ('Regional Transfer'))`

**Audit Notes:**

- Deprecated values: N/A

</details>

<details markdown="1">
<summary><strong>0216 - why_not_meet_prog_eligibility_ic</strong> – LOV & Conditional Logic</summary>

**LOV:**

- 'Non-Opioid User'
- 'Not A Missouri Resident'

**Conditional Logic:**

- Shown only if `program_participation_ic = '002' ('Ineligible, Does Not Meet Project Criteria')`

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0217 - non_opioid_substance</strong> – LOV & Conditional Logic</summary>

**LOV:**

- 'Alcohol'
- 'Cannabis'
- 'Hallucinogen (LSD; Ecstasy; Peyote)'
- 'Inhalant'
- 'PCP'
- 'Stimulant (Cocaine; Amphetamines; Meth)'
- 'Depressant (Barbiturates; Benzodiazepines)'
- 'Other'

**Conditional Logic:**

- Shown only if `why_not_meet_prog_eligibility_ic = 'Non-Opioid User'`

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0218 - reason_ic_not_success</strong> – LOV & Conditional Logic</summary>

**LOV:**

- 'Client Not At Hospital Upon Coach Arrival'
- 'Client Unable To Stay To Complete Intake'
- 'Client Refused Initial Face-To-Face'
- 'Unable To Contact/Locate'
- 'Client Left AMA'

**Conditional Logic:**

- Shown only if `program_participation_ic IN ('002' ('Ineligible, Does Not Meet Project Criteria'), '003' ('Ineligible, Not Clinically Appropriate'), '004' ('Client Declined Services'), '005' ('Unable To Contact/Locate'), '006' ('Client In Jail/Incarcerated'), '007' ('Client Deceased'), '011' ('Services Transferred to ERE'))`

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0220 - consent_crc_referral_ic</strong> – LOV</summary>

**LOV:**

- 'No'
- 'Yes'

**Audit Notes:**

- Deprecated values: N/A

</details>

<details markdown="1">
<summary><strong>0221 - reason_consent_refused_crc_ic</strong> – Textarea & Conditional Logic</summary>

**Field Type:** Free-text input (textarea)

**Conditional Logic:**

- Shown only if `consent_crc_referral_ic = 'No'`

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0222 - overdose_event_referral</strong> – LOV</summary>

**LOV:**

- 'No'
- 'Yes'

**Audit Notes:**

- Deprecated values: N/A

</details>

<details markdown="1">
<summary><strong>0223 - overdose_location</strong> – LOV & Conditional Logic</summary>

**LOV:**

- 'Home/Residence'
- 'Treatment Facility'
- 'Public Place (i.e., Parking Lot, Gas station, etc.)'
- 'Other'

**Conditional Logic:**

- Shown only if `overdose_event_referral = 'Yes'`

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0224 - specify_other_location</strong> – Text & Conditional Logic</summary>

**Field Type:** Free-text input (text)

**Conditional Logic:**

- Shown only if `overdose_location = 'Other'`

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0225 - first_overdose</strong> – LOV & Conditional Logic</summary>

**LOV:**

- 'No'
- 'Yes'

**Conditional Logic:**

- Shown only if `overdose_event_referral = 'Yes'`

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0226 - num_past_overdoses</strong> – Text & Conditional Logic</summary>

**Field Type:** Free-text input (text)

**Conditional Logic:**

- Shown only if `first_overdose = 'No'`

**Audit Notes:**

- value_1
- value_2
- value_3
- value_4

**Conditional Logic:**

- Shown only if `first_overdose = 'No'`

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0227 - most_recent_past_overdose_date</strong> – LOV & Conditional Logic</summary>

**LOV:**

- 'Past 3 Months'
- 'Past 6 Months'
- 'Past Year'
- 'Past 2 - 5 Years'
- '6 - 10 Years Ago'
- '>11+ Years Ago'

**Conditional Logic:**

- Shown only if `first_overdose = 'No'`

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0228 - epicc_opioids_of_use</strong> – LOV</summary>

**LOV:**

- 'Fentanyl'
- 'Heroin'
- 'Prescription Opiates'
- 'Suboxone/MAT'
- 'Multiple Opioates'
- 'Other'

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0229 - su_treatment_past_twelve_mos</strong> – LOV</summary>

**LOV:**

- 'No'
- 'Yes'
- 'Unknown'

**Audit Notes:**

- Deprecated values: N/A

</details>

<details markdown="1">
<summary><strong>0230 - current_su_treatment</strong> – LOV</summary>

**LOV:**

- 'No'
- 'Yes'
- 'Unknown'

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0231 - current_opioid_prescription</strong> – LOV</summary>

**LOV:**

- 'No'
- 'Yes'
- 'Unknown'

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0232 - other_opioid_ic</strong> – Text & Conditional Logic</summary>

**Field Type:** Free-text input (text)

**Conditional Logic:**

- Shown only if `epicc_opioids_of_use = 'Other'`

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0233 - opioid_leading_overdose_ic</strong> – LOV</summary>

**LOV:**

- 'Fentanyl'
- 'Heroin'
- 'Prescription Opiates'
- 'Suboxone/MAT'
- 'Multiple Opioates'
- 'Other'

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0234 - if_other_specify</strong> – Textarea</summary>

**Field Type:** Free-text input (textarea)

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0235 - current_script_mat_not_referral</strong> – LOV</summary>

**LOV:**

- 'No'
- 'Yes'
- 'Unknown'

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0236 - ever_script_mat_not_referral</strong> – LOV</summary>

**LOV:**

- 'No'
- 'Yes'
- 'Unknown'

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0237 - current_script_mat_type</strong> – LOV & Conditional Logic</summary>

**LOV:**

- '001' ('Methadone')
- '002' ('Naltrexone')
- '003' ('Suboxone')
- '004' ('Subutex')
- '005' ('Vivitrol')
- '006' ('Zubsolv')

**Conditional Logic:**

- Shown only if `current_script_mat_not_referral = 'Yes'`

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0238 - mat_initiated_hospital</strong> – LOV & Conditional Logic</summary>

**LOV:**

- 'No'
- 'Yes'

**Conditional Logic:**

- Shown only if `epicc_pro_or_core_ic = 'PRO'`

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0239 - what_mat_initiated_hospital</strong> – LOV & Conditional Logic</summary>

**LOV:**

- '001' ('Methadone')
- '002' ('Naltrexone')
- '003' ('Suboxone')
- '004' ('Subutex')
- '005' ('Vivitrol')
- '006' ('Zubsolv')

**Conditional Logic:**

- Shown only if `mat_initiated_hospital = 'Yes'`

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0240 - mat_script_discharge</strong> – LOV & Conditional Logic</summary>

**LOV:**

- 'No'
- 'Yes'

**Conditional Logic:**

- Shown only if `epicc_pro_or_core = 'PRO'`

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0241 - what_mat_script_discharge</strong> – LOV & Conditional Logic</summary>

**LOV:**

- '001' ('Methadone')
- '002' ('Naltrexone')
- '003' ('Suboxone')
- '004' ('Subutex')
- '005' ('Vivitrol')
- '006' ('Zubsolv')

**Conditional Logic:**

- Shown only if `mat_script_discharge = 'Yes'`

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0242 - overdose_ed_provided</strong> – LOV</summary>

**LOV:**

- 'No'
- 'Yes'

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0243 - reason_oe_not_provided</strong> – LOV & Conditional Logic</summary>

**LOV:**

- 'Client Declined'
- 'Other'

**Conditional Logic:**

- Shown only if `overdose_ed_provided = 'No'`

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0244 - if_other_specify</strong> – Textarea & Conditional Logic</summary>

**Field Type:** Free-text input (textarea)

**Conditional Logic:**

- Shown only if `reason_oe_not_provided = 'Other'`

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0246 - reason_narcan_not_distributed</strong> – LOV & Conditional Logic</summary>

**LOV:**

- 'Client Declined'
- 'Hospital Policy'
- 'Inpatient Hospitalization'
- 'Other'

**Conditional Logic:**

- Shown only if `narcan_distributed = 'No'`

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0247 - no_narcan_exp</strong> – Text & Conditional Logic</summary>

**Field Type:** Free-text input (text)

**Conditional Logic:**

- Shown only if `reason_narcan_not_distributed = 'Other'`

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0248 - preg_post_part_ic</strong> – LOV</summary>

**LOV:**

- 'No'
- 'Yes'

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0249 - veteran_status</strong> – LOV</summary>

**LOV:**

```yaml
- 'No'
- 'Yes'
```

**Audit Notes:**

- note

</details>

<details markdown="1">
<summary><strong>0251 - presenting_notes_ic</strong> – Textarea</summary>

**Field Type:** Free-text input (textarea)

**Audit Notes:**

- note

</details>

</details>

---

## Pivoted Fields (Hidden)

<details markdown="1">
<summary><strong>Click to expand Pivoted Rows</strong></summary>

| Field   Order |     FC Field Prompt     |           FC Field Name           | Hidden | Required |        Notes       |
|:-------------:|:-----------------------:|:---------------------------------:|:------:|:--------:|:------------------:|
| 0206.1        | Friend or Family Member | heard_about_from_friend_family    | Yes    | No       | Renamed 11/18/2024 |
| 0206.2        | Community Center        | heard_about_from_community_center | Yes    | No       | Renamed 11/18/2024 |
| 0206.3        | Outreach Worker         | heard_about_from_outreach_worker  | Yes    | No       | Renamed 11/18/2024 |
| 0206.4        | Hospital Staff          | heard_about_from_hospital_staff   | Yes    | No       | Renamed 11/18/2024 |
| 0206.5        | Flyer                   | heard_about_from_flyer            | Yes    | No       | Renamed 11/18/2024 |
| 0206.6        | Church                  | heard_about_from_church           | Yes    | No       | Renamed 11/18/2024 |
| 0206.7        | Other                   | heard_about_from_other            | Yes    | No       | Renamed 11/18/2024 |

</details>

## Changelog

<details markdown="1">
  <summary><strong>View Changelog Details</strong></summary>

### 2025

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
