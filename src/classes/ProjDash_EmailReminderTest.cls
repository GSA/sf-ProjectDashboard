@isTest()
public class ProjDash_EmailReminderTest {
 
    // CRON expression: midnight on March 15.
   // Because this is a test, job executes
   // immediately after Test.stopTest().
   public  static String CRON_EXP = '0 0 0 15 3 ? 2022';

   @testSetup public static void dataPrep() {

      ProjDash_Project__c testproject = new ProjDash_Project__c();
      testproject.Name = 'Project 1';
      Insert testproject;
      System.assert(testproject.Name=='Project 1','1 new project created');
   }



   @isTest Public static  void schedulerTest() {

     System.Test.startTest();

      // Schedule the test job
      String jobId = System.schedule('ScheduleApexClassTest',
                        CRON_EXP,
                        new ProjDash_EmailReminderScheduler());

      // Get the information from the CronTrigger API object
      CronTrigger ct = [SELECT Id, CronExpression, TimesTriggered,
         NextFireTime
         FROM CronTrigger WHERE id = :jobId];

      // Verify the expressions are the same
      System.assertEquals(CRON_EXP,
         ct.CronExpression);

      // Verify the job has not run
      System.assertEquals(0, ct.TimesTriggered);

      // Verify the next time the job will run
      System.assertEquals('2022-03-15 00:00:00',
         String.valueOf(ct.NextFireTime));

      System.Test.stopTest();
   }
}