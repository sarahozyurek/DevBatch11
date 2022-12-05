public  class ParentChildTekrar {
    public static void fetchOppsAndAccount() {
        List<Opportunity> listofOpps = [SELECT id, name, amount, stageName, accountId, account.phone, account.type, account.industry
                                                                FROM Opportunity WHERE (stageName != 'Closed Won' AND stageName != ' Closed Lost')];
    system.debug('List of opps ' + listofOpps);

    }
}
