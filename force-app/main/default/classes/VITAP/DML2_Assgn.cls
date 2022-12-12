public   class DML2_Assgn {
    public static void DML2_Assgn() {

 account acc = new account();
 acc.Name = 'Sarah';
 insert acc;

 account acc2= new account();
 acc2.Name = 'Rabia';
 insert acc2;

 account acc3= new account();
 acc3.Name = 'Assignment';
 insert acc3;
    }

    public static void updating_dml(){
        account acc= new account();
        acc.name = 'Accountt 1 ';
        insert acc;
        acc.name = 'Updated Account';
        update acc;
    }

    public static void createBulkContacts() {
        Contact c1 =  new  Contact(FirstName = 'Mark', LastName = 'Ruffalo');
        insert c1;
        Contact c2 = new Contact(FirstName = 'Mark', LastName = 'Ruffalo');
        insert c2;
        Contact c3 = new Contact(FirstName = 'Chris', LastName = 'Hemsworth');
        insert c3;
        Contact c4 = new Contact(FirstName = 'Scarlett', LastName = 'Johansson');
        insert c4;
        Contact c5 = new Contact(FirstName = 'Scarlett', LastName = 'Johansson');
        insert c5;
    }

    public static List<Contact> searchForContacts(string lname){
        List<Contact> listContact = [SELECT id, name, LastName FROM Contact WHERE Lastname = :lname ];
        return listContact;
    }
}
