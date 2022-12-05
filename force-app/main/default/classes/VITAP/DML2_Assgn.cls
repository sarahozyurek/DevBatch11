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
}
