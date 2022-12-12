public   class PractieSoql {
        //     1. Prepare a method that returns the sum of all the closed won opportunities Amount present in
        // the org
        public static Decimal AccConAndOppOperations(){
            list<opportunity> oppList=[SELECT Id, StageName,amount, Name FROM Opportunity where stagename = 'Closed Won' ];
            Decimal TotalAmount = 0 ;
            for(opportunity eachOpp : oppList){
                TotalAmount = totalAmount + eachOpp.amount ;
            }
            return  TotalAmount ;

        }

        //Prepare a method that will return all the Accounts for which at least a closed Won Opportunity is
        //present. Make it dynamic if we want to bring account for other opportunity stageNames
            public static list<account> AccountClosed(string sname) {
                List<Account> accList = [SELECT id, name FROM Account  WHERE ID IN (SELECT Accountid FROM Opportunity WHERE StageName = :sname)]; //sname closed lost olan oppt id getir
                System.debug(accList.size());
                return accList;

            }

            //Take account Id as input parameter and create a new contact for the provided account’s Id.
            //Populate Contact last name as same as Account’s Name.
            public static void  CreateContact(Id idAccount){
                contact cont= new contact();
                Account acc =[SELECT name FROM Account WHERE Id = :idAccount];
                cont.lastName = acc.Name;
                cont.AccountId = acc.id;
                insert cont;
            }
//Update the description field of top 10 opportunities as "This is one of the top 10 opportunities.Please work on this properly “.
public static void updateDesc(){
    List<Opportunity> listOpp = [SELECT Id, name, description FROM Opportunity ORDER BY Amount desc limit 10];
    for (opportunity  eachopp : listOpp) {
        eachopp.Description = 'This is one of the top 10 opportunities.Please work on this properly';
    }
    update listOpp;
}

/*Write a logic to create and return n number of opportunities for a particular AccountId.AccountId and n will be passed as parameters in the method. Populate opportunity fields as follows:Close date as 3 years from today, Stage name as Prospecting Opportunity amount as Account’s annual revenue divided by n and Opportunity name same as Account nameFor Ex: if n=2, Then two new opportunities If n=0, Print the message as “Please tell us how manyopportunities needs to be created*/
public static List<Opportunity> createOpp(id accountId, integer n){
    
    List<Opportunity> listOpp = new List<Opportunity>();
    account acc = [SELECT Id, name, AnnualRevenue FROM Account WHERE Id = :accountId];
    if(n<=0){
        system.debug('Enter a valid number');
    } else{
            for(integer i=0; i<n; i++){ 
                Opportunity opp2 = new Opportunity();
                    date todaydate = date.today(); //today's date
                    opp2.CloseDate = todaydate.addYears(3);
                    opp2.stageName = 'Prospecting';
                    opp2.accountid = accountId;
                    opp2.name = acc.name;
                    opp2.amount = acc.AnnualRevenue/n;
                    listOpp.add(opp2);
        }
                     insert listOpp;
} 
        return listOpp;
}
        }