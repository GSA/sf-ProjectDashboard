/*-------------------------------------------------------------------------------------------------*
Scheduler class for Sending email notifications to Project owners.
*-------------------------------------------------------------------------------------------------*
Author           | Date        | Version | Description
*-------------------------------------------------------------------------------------------------*
Ramesh Dugar       06/8/2016    1.0        Scheduler class created
Mayank Singla      10/14/2016   1.1        Updating
*-------------------------------------------------------------------------------------------------*

*-------------------------------------------------------------------------------------------------*/

global class ProjDash_EmailReminderScheduler implements Schedulable {

    global void execute(SchedulableContext SC) {

        sendmail();

    }

    public void sendmail()
    {
        List<ProjDash_Project__c> ProjList = [ SELECT ID,ownerId,Name   
                                 FROM ProjDash_Project__c
                                 WHERE ID!=null ];

        Set<Id> ownrId = new Set<Id>();

        for(ProjDash_Project__c Project : ProjList){ 
            ownrId.add(Project.ownerId);
        }

        Map<string,string> mapUserEmail = new Map<string, string>();
        List<User> userList = [
                SELECT Id, Email
                FROM User
                WHERE Id IN :ownrId
        ];

        for(User usr : userList){
            mapUserEmail.put(usr.id, usr.email);
        }

        Messaging.SingleEmailMessage m = new Messaging.SingleEmailMessage();
        List<Messaging.SingleEmailMessage> allMails = new List<Messaging.SingleEmailMessage>();

        for(ProjDash_Project__c  proj : ProjList){
            m = new Messaging.SingleEmailMessage();
            String name = proj.Name;
            Id projId = proj.id;
            String fullFileURL = URL.getSalesforceBaseUrl().toExternalForm() +'/'+ proj.id;

         //Uncomment Line no 53-61 and replace the display name at Line 56 with the desired
         //OrgWideEmail  Name
            /*  OrgWideEmailAddress[] owea = [
                    SELECT Id
                    FROM OrgWideEmailAddress
                    WHERE DisplayName = 'GSA IT Team' 
            ];

            if ( owea.size() > 0 ) {
                m.setOrgWideEmailAddressId(owea.get(0).Id);
            }*/
            
         
            m.setSubject(name+'- '+'Pulse Due Today');
            String body ='<html lang="en"><body>'+
                '<br><br>'+
                'Hello All,'+
                '<br><br>'+
                'As a friendly reminder, please update the Project Pulse for your Project below by 4pm today. '+
                '<br><br>'+
                'Please select '+
                '<a href='+'"'+fullFileURL+'"'+'>'+name+'</a>'+
                ' to access your Project.'+
                '<br><br>'+
                'When updating your Project Pulse, please make sure you enter each item on a new line without numbers or dashes.'+''+
                ' Example:'+
                '<br><br>'+
                '<b>'+'Accomplishments:'+'</b>'+
                '<br>'+
                'This is Accomplishment 1'+
                '<br>'+
                'This is Accomplishment 2'+
                '<br><br>'+
                'Thank you.'+'<br>'+
                ''+
                '</body></html>';
            m.setHTMLBody(body);
            m.setToAddresses(new String[]{string.valueof(MapUserEmail.get(proj.OwnerId))});
            allMails.add(m);
        }
        Messaging.sendEmail(allMails);
    }

}