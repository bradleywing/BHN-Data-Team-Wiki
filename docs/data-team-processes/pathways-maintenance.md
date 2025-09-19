---
front-matter-title: Pathways Maintenance
author: Bradley Wing
last_updated: 2025-08-14
status: active
tags:
  - pathway-creation
  - pathway-event
  - event-metadata
  - master-pathway-dashboard
permalink: /pathways-maintenance/
reviewed-by:
  - name: Bradley Wing
  - date: 2025-09-12
last_reviewed: 2025-09-12
schema_version: 1.0
---

# Pathways Module

## Pathway Creation

Location: Configure>Pathway

- Pathway Name: This is what your Pathway will be titled  
- Duration: This will be the time frame in which the events will take place
- Detailed Description
- AutoStart New Path Upon Completion - Three Options
  - No New Pathway to AutoStart- Once completed the Pathway will not repeat or reset
  - Cycle the Same Pathway- Pathway will continue to repeat itself after completion of events/tasks listed
  - Specify a SQL statement for the next Pathway- Utilized by users with coding and developing knowledge
- You will then be able to select the events that are to be included within the Pathway. If the event has been previously created, you will find it listed below and can be added by checking the associated box
- If a new event is needing to be created, you will follow the instructions below relating to adding of events.  
- Click SAVE prior to closing the window.  

## Create an Event

Location: Configure>Pathway Event

- **Description**
- **Full Description**
- **Start Period**
  - The number of units (days, weeks, or months) that this event will start from when the client is enrolled into the pathway.
  - If there is a dependent event assigned, the timeline will display an assumed start date based on the end date of the dependent event.
  - This start date will adjust after the dependent event is completed.
- **End Period**
  - The number of units (days, weeks, or months) after the Start Period that sets when this event will be due.
  - The amount of time allotted for staff to complete the event is the difference between the end date and the start date.
  - After the end of this period, forms will be flagged as late on the Master Pathway Dashboard.
- **Early Period**
- **Late Period**
- **Recurring Period**
  - If specified and not 0, this is the number of days, weeks, or months for subsequent recurring events to start after the first event.
  - Unless a buffer or lag period is specified, the recurring period starts immediately after the previous event ends.
- **Lag (or Buffer) Period**
  - This feature allows the user to block out a time on the recurring event where staff cannot complete the required event.
- **Desired Occurrences**
  - How many times the staff must complete the form during the Start/End Period and the Recurring Period.
- **Table to Check**
  - This is the table used to determine if the event has been completed.
- **Date to Use**
  - This is the date on the form that will be checked when a form has been completed to determine if it has been completed within the specified time frame allotted for the event.
- **Associated Menu**
  - A menu call that allows the user to find the form if not going to the Master Pathway Dashboard to locate it.
- **Dependent Event**
  - Setting this defines an event as dependent upon the completion of a preceding event.
  - The user may still enter and submit a form that is dependent upon another form that has not already been completed, but it will not be flagged as completed on the Master Pathway Dashboard until the dependent event has been completed.
- **Case Alert**
  - Any number entered in this field will prompt a Case Alert to display the number of days remaining before the event is due to be completed. This Case Alert is displayed as a widget on the user’s Case Load screen.

When creating or modifying Pathway Events, do the following:

- Update Pathway  

## Changelog

- **2025-09-16**: Updates frontmatter to bring closer into alignment with `schema_version` 1.0.
- **2025-08-15**: Adds initial commit to repo.
- **2025-08-04**: Adds Markdown file.
