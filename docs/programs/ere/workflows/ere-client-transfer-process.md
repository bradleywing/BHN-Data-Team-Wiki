---
front-matter-title: ERE Client Transfer Process  
author: Bradley Wing
last_updated: 2025-09-11
category: program-documentation
category_label: Program Documentation
status: active  
lifecycle: production
program_scope: single
programs:
  - ere
tags:
  - program-docs
  - workflow-logic
  - program-structure
  - client-transfer
change-control: internal-review-required
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-11
last_reviewed: 2025-09-11
schema_version: 1.0
---

# ERE Client Transfer Process

## Description

Documents the process for client re-assignment from one outreach worker to another.

## Initial Enrollment Into FAMCare

BHN Data Team staff are to enter enrollments and referrals into FAMCare exactly as assigned by AnswerFirst and to assign the enrollment to an Outreach Liaison and their agency. If the AnswerFirst referral does not specify an agency and/or Outreach Liaison by name, the Complex Care Specialist is to determine the appropriate assignment of the program referral on the `PROVIDERPLACEMENT` form in FAMCare.

## ERE Client Transfer Processes

### Transfer Request Documented at the Time of Referral

This process is to be followed when transfer needs are identified at the time of referral. These are **transfer requests noted in the AnswerFirst referral** that are made at the request of the hospital clinical staff or providers, the client, or an ERE Outreach Liaison.

- The Outreach Liaison receives the referral from AnswerFirst and is to reach out to the requested Outreach Liaison and their agency supervisor to coordinate immediate referral response, with every effort made to respond to all referrals in person and within one hour of the referral.
  - If the originally assigned Outreach Liaison is to respond to the referral, this person should complete the client meeting and then send any relevant notes to the receiving Outreach Liaison. The original Outreach Liaison should then update FAMCare with any relevant documentation once the referral is processed by the BHN Data Team staff.
  - If the receiving Outreach Liaison is to respond to the referral, then that person should complete the client meeting and then update FAMCare with any relevant documentation once the referral is processed by the BHN Data Team staff.
- The originally assigned Outreach Liaison is to email the Complex Care Specialist, the ERE Regional Coordinator, their agency supervisor, and the receiving Outreach Liaison with the following information:
  - client name
  - DOB
  - the reason for the transfer
- Once the referral is entered into FAMCare by the BHN Data Team staff, the Complex Care Specialist is to update the  `PROVIDERPLACEMENT` form in FAMCare to reflect the transfer and is also to send an email to both the originally assigned Outreach Liaison and their agency supervisor in addition to the receiving Outreach Liaison and their agency supervisor.
  - If the Complex Care Specialist is unavailable to process the transfer, the request is to be made to the ERE Regional Coordinator, who is to approve and confirm the request and carbon copy the BHN ERE Program Manager, who will update the `PROVIDERPLACEMENT` form in FAMCare to reflect the change.

### Client Reassignment Within the Same Agency

This process is to be followed when clients are to be reassigned to a different Outreach Liaison within the same agency.

- The Outreach Liaison is to email or text the BHN ERE Program Manager and their agency supervisor with the following information:
  - client name
  - AnswerFirst message number
  - new Outreach Liaison team member to whom the client is to be reassigned

### Client Transfer After Initial Contact

This process is to be followed when a transfer need for a client is identified after the referral has been entered and an initial contact with the client has been attempted or completed.

- The Outreach Liaison is to email the Complex Care Specialist and their agency supervisor with the following information:
  - client name
  - DOB
  - the reason for the transfer
  - the referral from AnswerFirst
  - hospital paperwork (if received)
  - a summary of the situation and any relevant clinical information that will help the receiving Outreach Liaison work to complete any relevant documentation in FAMCare
- The Complex Care Specialist is to reach out to the receiving Outreach Liaison and their agency supervisor to confirm that they will accept the transfer.
- If approved by the receiving agency, the Complex Care Specialist will update the `PROVIDERPLACEMENT` form in FAMCare to reflect the transfer and is to send an email to the original Outreach Liaison and their agency supervisor in addition to the receiving Outreach Liaison and their agency supervisor to confirm.
  - If the Complex Care Specialist is unavailable to process the transfer, the request is to be made to the ERE Regional Coordinator, who is to approve and confirm the request and carbon copy the BHN ERE Program Manager, who will update `PROVIDERPLACEMENT` form in FAMCare to reflect the change.

## ERE Transfer Reasons

| Dismissal Reason                                        | Definition                                                                                                                                                                                                                                                                                                                                                                                                                    |
|---------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Added To Client In Error     | Client assigned because of any other administrative error.        |
| AnswerFirst Home Address Error                          | The AnswerFirst process resulted in an incorrect referral assignment, whether because of a technical error, mistype, or misunderstanding about a client’s housing status or zip code residency.    |
| Client Active In Services At Different Agency           | Client is actively receiving services at a different agency.<br><br>**Note**: This is not a reconnect; clients transferred for this reason will not have an active case open in CIMOR.   |
| Client Moved To Different Catchment Area                | Client requires agency transfer because they are moving outside of catchment area.        |
| Client Reassigned To Program Worker From Prior Referral | Client has a working history with an outreach liaison and has requested to work with them again.      |
| Family Requested Agency Switch                          | Family member, caregiver, or legal guardian requests specific outreach liaison or agency to manage client.      |
| Hospital Requested Reassignment                         | Referring hospital requests specific outreach liaison or agency to manage client.          |
| Inter-Agency Transfer                                   | Client reassigned to a different outreach liaison within their own agency.       |
| Outreach Worker Requests Transfer                       | Client reassigned to a different outreach liaison outside of their agency for any of the following reasons:<ul><li>Outreach worker receives a direct referral from hospital or other referral partner;</li><li>Outreach worker meets with patient in the hospital prior to referral being called into AnswerFirst and would like to retain that client even though the AnswerFirst assignment is with another outreach worker.</li></ul> |
| Reassigned Due To Agency Or Program Worker Capacity     | Client transferred to a different outreach liaison because of caseload management.<br><br>**Note**: Concerns about caseload volume and client reassignment should be discussed with the Outreach Liaison's agency supervisor, the Complex Care Specialist, and ERE Regional Coordinator before requesting a transfer.     |
| Reassigned Due To Program Worker Leaving Program        | Client reassigned to a different outreach liaison because their assigned outreach worker departed the agency.     |

## Changelog

- **2025-08-27-25**: Adds initial client transfer documentation.
