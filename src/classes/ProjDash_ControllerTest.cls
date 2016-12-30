@isTest
public class ProjDash_ControllerTest {

    static testMethod void DashboardControllerTest() {

        ProjDash_Controller con = new ProjDash_Controller();

        System.assert(con.ProjLst.size() == 4, 'Incorrect number of Projects on page list');
        System.assert(con.compltdProj.size() == 1, 'Incorrect number of completed Projects on page list');
        System.assert(con.keyProj.size() == 3, 'Incorrect number of key Projects');
    }

    static testMethod void testActionMap() {
        ProjDash_Controller con = new ProjDash_Controller();
		Map<String,String> m = ProjDash_Controller.ProjActionMap;
        for (String s : ProjDash_Controller.ProjIDList) {
            System.assert(m.get(s) != null, s + ' was not inserted.');
        }
    }


    static testMethod void testGetActionCount() {
        Integer oneLine = ProjDash_Controller.getActionCount('asdf');
        Integer nullInput = ProjDash_Controller.getActionCount(null);
        Integer threeLines = ProjDash_Controller.getActionCount('asdf<br>asdf<br>asdf');

        System.assert(oneLine == 1, 'Given string with no breaks, did not parse to 1 row.');
        System.assert(nullInput == 0, 'Given null string, did not parse to 0 rows.');
        System.assert(threeLines == 3, 'Given string with two breaks, did not parse to 2 rows.');
    }

   	static testMethod void testGetJSON() {
        ProjDash_Controller con = new ProjDash_Controller();
        String mapJSON = con.actionMapJSON;
        String projJSON = con.ProjIDListJSON;
        List<ProjDash_Project__c> ProjList = [SELECT id FROM ProjDash_Project__c WHERE status__c!='Complete'];

        for (ProjDash_Project__c proj : ProjList) {
            System.assert(mapJSON.contains(proj.id), proj.id + 'not included in MapJSON');
            System.assert(projJSON.contains(proj.id), proj.id + 'not included in ProjListJSON');
        }
    }

    @testSetup
    static void setup() {
         List<ProjDash_Project__c> proj = new List<ProjDash_Project__c>{new ProjDash_Project__c(Name='I1', Status__c=null, Key_Project__c=True),
            												new ProjDash_Project__c(Name='I2', Status__c=null,  Key_Project__c=True),
            												new ProjDash_Project__c(Name='I3', Status__c=null,  Key_Project__c=True),
            												new ProjDash_Project__c(Name='nonKeyProject'),
            												new ProjDash_Project__c(Name='completedProject', Status__c='Complete')};
        insert proj;
        System.assert(proj.size()==5,'5 new projects created');
    }

}