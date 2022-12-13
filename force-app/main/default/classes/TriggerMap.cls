public class TriggerMap {
    public id  InsertSF_Project() {

        Salesforce_Project__c sf = new  Salesforce_Project__c();
        sf.Project_Name__c = 'HW';
        insert sf;
        return sf.id;
    }

    public  void UpdateSF_Project( id sfId, string name){
        Salesforce_Project__c  sfupdate = new    Salesforce_Project__c();
        sfupdate = [SELECT id, Project_Name__c FROM Salesforce_Project__c WHERE id = :sfId];
        sfupdate.Project_Name__c = name;
        update sfupdate;
    }
    
}

