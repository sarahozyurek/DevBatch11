public with sharing class AllTicketStatusCompleted {
    @invocableMethod(label='Ticket Status Completed'
    Description='Salesforce Projecte bagli tum ticketlerin statulerini completed yapma'
    category='Salesforce Project')
    //spIds: update yapilan ve statusu comleted olan salesforce project recordlarinin id leri var.
    public static void completedTickets(List<id> spIds) {
        //1. Soql ile bu idlere bagli ve statusu completed olmayan tum tiicketleri liste olarak getiririm..
        List<Salesforce_Ticket__c> stList = [select id, status__c from Salesforce_Ticket__c where salesforce_project__c IN :spIds and status__c != 'Completed'];

        //2. Bu listeyi bir for dongusunun icine koyup statulerini completed yaparim..
        for (Salesforce_Ticket__c st : stList) {
            st.status__c = 'Completed';
        }

        //3. Bu listeyi update ederim..
        try {
            update stList;
        } catch (Exception e) {
            System.debug(e);
        }
    }

    //metodum tek bir parametre aldigindan dolayo wrapper classina ihtiyac duymadim ama birden fazla parametre isteseydi metodum o zaman bir wrapper class olusturup gelen tum parametreleri bu class icinde karsilayip tek bir wrapper class list olarak parametre olarak metoduma gonderirdim..
}