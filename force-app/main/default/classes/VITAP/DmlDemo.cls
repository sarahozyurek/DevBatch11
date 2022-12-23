public  class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
        Account newAccount = new Account(Name='SOFT INNOVAS');
        System.debug('NOT inserted'+ newAccount);
        insert newAccount;
        System.debug('NSERTED' +newAccount);
    }
   //check Salesforce Project 
    public static void dmlInsertDemo_customObj(){
        Salesforce_project__c spNew = new Salesforce_project__c();

        spNew.project_name__c = 'Learning DML';
        spNew.description__c = 'So far so good :)';
        insert spNew;
        System.debug('NSERTED' +spNew);
    }


    public static void dmlInsertDemo_4() {
        account acc = [select id, name from account where name = 'SoftInnovas Inc.' limit 1];

        //create contact
        contact cnt = new contact();
        cnt.LastName = 'Biden';
        cnt.AccountId = acc.id;
        insert cnt;
        system.debug('contact record: ' + cnt);
    }

    public static void dmlupdateDemo_1(){

        Account acc = new Account();
        acc.name = 'Tom';
        insert acc ;
        acc.name = 'Jerry';
        update acc;
        system.debug(acc);
    }
}
