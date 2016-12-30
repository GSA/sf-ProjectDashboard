public with sharing class  ProjDash_Controller {
   
    public List<ProjDash_Project__c> ProjLst{get;set;}
    public List<ProjDash_Project__c> keyProj{get;set;}
    public List<ProjDash_Project__c> compltdProj{get;set;}
    public static Map<String, String> ProjActionMap{get; set;}
    public static List<String> ProjIDList{get; set;}
    public String actionMapJSON {get{return JSON.serialize(ProjActionMap);}}
    public String ProjIDListJSON {get{return JSON.serialize(ProjIDList);}}
    

    public ProjDash_Controller(){
        ProjActionMap = new Map<String, String>();
        ProjIDList = new List<String>();
        

        ProjLst = [
            SELECT
                ID
                ,Name
                ,Phase__c
                ,Status__c
                ,Action_Items__c
                ,Blockers__c
                ,Escalations__c
                ,Deadline__c
                ,Accomplishments__c
                ,Owner_Name__c
            FROM ProjDash_Project__c
            WHERE Status__c!='Complete'
        ];

        compltdProj = [
            SELECT
                ID
                ,Name
                ,Phase__c
                ,Status__c
                ,Action_Items__c
                ,Blockers__c
                ,Escalations__c
                ,Deadline__c
                ,Accomplishments__c
                ,Owner_Name__c
            FROM ProjDash_Project__c
            WHERE Status__c='Complete'
        ];

        keyProj = [
            SELECT
                ID
                ,Name
                ,Phase__c
                ,Status__c
                ,Action_Items__c
                ,Blockers__c
                ,Escalations__c
                ,Deadline__c
                ,Accomplishments__c
                ,Key_Project__c
                ,OwnerId
                ,Owner_Name__c
            FROM ProjDash_Project__c
            Where Key_Project__c = True
            ORDER BY LastModifiedDate desc
            LIMIT 3
        ];

        setActionCountMap(ProjLst);
    }

    public static void setActionCountMap(List<ProjDash_Project__c> proj) {
        for (ProjDash_Project__c i : proj) {
            ProjActionMap.put(i.id, String.valueOf(getActionCount(i.Action_Items__c)));
            ProjIDList.add(i.id);
        }
    }

    public static Integer getActionCount(String txt) {
		return (txt == null || txt.length() == 0) ? 0 : (txt.countMatches('<br>') + 1);
    }


}