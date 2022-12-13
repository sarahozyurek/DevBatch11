trigger SFProjectTrigger on Salesforce_Project__c (before insert, before update, after insert, after update) {

    if (trigger.isBefore && trigger.isInsert) {
     for (Salesforce_Project__c eachsf : trigger.new) {
        eachsf.project_Name__c = 'New Trigger Project';
       system.debug(eachsf.project_Name__c );
     }  
    }

 if(trigger.isAfter&& trigger.isUpdate){
    Map<Id, Salesforce_Project__c> mapsfNew = trigger.newMap;
    Map<Id, Salesforce_Project__c> mapsfOld = trigger.oldMap;

    set<id> sfIDS = mapsfNew.keySet();
    for (ID eachsf : sfIDS) {
        system.debug('Old project name:    '+ mapsfOld.get(eachsf).Project_Name__c + ' ,New project name:   '+ mapsfNew.get(eachsf).Project_Name__c);
    }
 }
}