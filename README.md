# sf_ProjectDashboard
## Overview
Many Project Portfolio Managers have difficulty reporting valuable project information to high level executives in a clear and concise manner. They also have difficulty gathering the necessary information from Project Managers to fulfill this reporting requirement. Most managers rely on presentations to communicate status, but updating these can be laborious and time consuming. Also, emailing Project Managers for status updates becomes cumbersome; and a constant annoyance to both PM’s and portfolio managers. Also, PM’s may not have the time to type an update every week to send to the portfolio manager. All of this leads to poor data quality, and poor reporting. To solve this, the Project Dashboard application was created.

Salesforce was chosen to host the Project Dashboard because of its ability to be easily customized, its ease of use, and its automated email functionality. This allows for very robust dashboards to be created and customized for executive consumption as well as enable status reminder emails.

The Project Dashboard contains a Visualforce page, that quickly displays high priority projects as well as key project information for easy executive consumption. It also allows for more detailed information consumption as time allows. The page can also be sorted on any of the status criteria, enabling executives to quickly drill into any project that is of interest and understand its progress.

Another key part of the Project Dashboard is the ease of use for Project Managers. Email reminders are sent to the PM’s for their specific projects requesting status updates. Project Managers can then from there create a project pulse with any required update quickly and easily and submit for approval to portfolio manager. The information collected here will be reflected in the project and the dashboard once approved.

Finally, the Project Dashboard allows for final approval from the portfolio manager, in case there is a mistake in an update; portfolio managers can also edit all updates prior to approval to fix spelling errors etc.

The Project Dashboard allows for a comprehensive view of a portfolio of projects and makes it easy for the Portfolio Managers to gather and produce information to executives. If you have additional questions, please reach out to the contact information provided.

## High Level Flow
![High Level Flow](https://github.com/GSA/sf_ProjectDashboard/blob/master/Project%20Dashboard/Images/project_dashboard_process_flow.png "Logo Title Text 1")

##Installation & Configuration Guide
1.	Use the “src” folder and deploy it to the target org where you want to install this application.
2.	Refer to the Technical Design Document in the [Documents](https://github.com/GSA/sf_ProjectDashboard/blob/master/Project%20Dashboard/Documents/ProjectDashboard-TechnicalDesignDocument.docx) folder to assign proper Permission Sets, Page Layouts etc.
3.	The application sends an email to all project owners to update/create the project pulse to update the project using the [ProjDash_EmailReminderScheduler class](https://github.com/GSA/sf_ProjectDashboard/blob/master/Project%20Dashboard/src/classes/ProjDash_EmailReminderScheduler.cls). Schedule this class based on the desired time to send email.
4.	If an OWD email address is to be used to send emails, please go to the above class and uncomment the lines 53-61 and replace the DisplayName in line 57 with your OWD email address name.
5.	The default phase values are Concept Approval, Initiating, Planning, Executing and Close-out/Close. To change these values to any other values please follow the steps below.
  * Go to Set Up-->Custom Labels
  * To Change the phase1 value, update the text in the ProjDash_Tracker_Phase1 custom label.
  * To change phase 2 value, update the text in the ProjDash_Tracker_Phase2 custom label.
  * To change phase 3 values, update the text in ProjDash_Tracker_Phase3 custom label.
  * To change phase 4 value, update the text in the ProjDash_Tracker_Phase4 custom label.
  * To change phase 5 value, update the text in the ProjDash_Tracker_Phase5 custom label.
  * Now go the custom object , ProjDash_Project__c and update the picklist values of the Phase__c field  with the new custom label --       values and exactly in the same order(Phase1 to phase5)
  * Phase 5 is not displayed on the tracker on the ProjectDashboard Visualforce. But when the status is set to complete and phase is         Close-Out/Close  the overall project status is complete and the tracker will display the same.
6.	To change the status values follow the same procedure and update the respective custom labels for status fields.
7.	For further details refer to the Technical Design Document in the [Documents](https://github.com/GSA/sf_ProjectDashboard/blob/master/Project%20Dashboard/Documents/ProjectDashboard-TechnicalDesignDocument.docx) folder.
