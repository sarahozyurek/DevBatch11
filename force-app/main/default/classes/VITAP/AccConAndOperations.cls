public class AccConAndOperations {
    public static void allAccounts(){

        List< Account> accList = [SELECT Id, name, AnnualRevenue FROM Account];
        system.debug(accList);

    }



}
