public   class SoqlDemo2 {

    public static void soqlchildParent_1() {
        List< contact> listContacts = [SELECT id, name, account.name, account.industry FROM Contact WHERE account.industry = 'Energy'];

        System.debug(listContacts);

        for(Contact eachContact : listContacts){
            string accName = eachContact.Account.Name ;
            System.debug('Contact name is '+ eachContact.name + '  its acc is  '+ accName);
        }
    }
}