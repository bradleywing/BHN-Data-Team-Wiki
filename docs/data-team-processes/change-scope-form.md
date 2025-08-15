# Change Scope Form

## Linked Request

- **Request ID**: `REQ-YYYY-NNNN` *(copied from original form using LOADFIELDS)*
- **Request Title**: *(copied from original form using LOADFIELDS)*
- **Requesting Program/Agency**: *(copied from original form using LOADFIELDS)*

## Summary of Requested Change

- **Business Need (from request)**:  
  *(brief summary of the original request’s justification copied from original form using LOADFIELDS)*

- **Data Team Interpretation**:  
  *(how the team understands the request in technical terms)*

## Impacted Assets

- **SQL Views / Tables**:  
  - `Q_EPICC_PATHCLIENT_ENROLLMENTS`
  - `PWEPICCINITIALCONTACT`
  - *(list all impacted assets)*

- **Reports / Dashboards**:  
  - `[Exception Reports] EPICC Duplicate Forms Per Enrollment`
  - `EPICC Periodic Report`

- **Documentation Assets to Update**:  
  - `docs/epicc/workflows/enrollment.md`
  - `docs/epicc/reporting/famcare-reports-and-assets.md`

- **Entities to Train**:
  - Stakeholders
  - Outreach staff

## Logic Summary

- **New Filters / Conditions**:  
  *(e.g., exclude enrollments dismissed before FY2025)*

- **Joins / Relationships**:  
  *(e.g., join `PATHWAYCLIENT.DOCSERNO` to `PROVIDERPLACEMENT.DOCSERNO`)*

- **Exception Handling**:  
  *(e.g., tag records missing `PWSUBROADTREATMENTAGENCY.END_DATE` as `Missing End Date`)*

- **Edge Cases to Flag**:  
  *(e.g., clients with multiple overlapping enrollments)*

## Lifecycle & Deployment

- **Status**: `Draft` | `In Review` | `Approved` | `Deployed` | `Deprecated`
- **Date Scoped**: `YYYY-MM-DD`
- **Scoped By**: `Name`
  *(select using HR dropdown)*
- **Deployment Notes**:  
  *(e.g., deployed to ALPHA on `YYYY-MM-DD`, pending internal review)*
  *(e.g., deployed to PROD on `YYYY-MM-DD`, pending UAT)*
- **Rollback Plan**:  
  *(e.g., revert to `PWEPICCIC` to commit [5a146d5](https://github.com/bradleywing/FAMCare-HTML-Form-Code/commit/5a146d5fee676cc33c8a183905e106cda6eb6740)`)*
