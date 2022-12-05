public   class Soql_Hw {
    public static void soql_WhereClause() {
        
        List<Contact> contactList = [SELECT id, name FROM Contact WHERE Name LIKE 'A%'];
        System.debug('List of contact starts with A   ' + contactList );
        System.debug('The size of the list is:  '+ contactList);
    }
    public static void soql_FromMethod() {
        List<Contact> contactList = [SELECT  ID, LastName, Phone FROM Contact];

        for(Contact  eachContact  : contactList) {
            string lastName = eachContact.LastName;
            string phoneNum = eachContact.Phone;
            System.debug('Last name:     ' + lastName + 'Phone number:   '+ phoneNum);
        }
            system.debug('The size of the contact list   '+ contactList.size());
    }
}
