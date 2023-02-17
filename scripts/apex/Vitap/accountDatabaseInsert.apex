Account acc1 = new account();
acc1.name = 'Abc Test';
acc1.Industry = 'Energy';

Account acc2 = new account();
acc2.name = 'xyz Test';

Account acc3 = new account();
Account acc4 = new account();

List<account> acclist = new List<account> {acc1, acc2, acc3, acc4};

List<database.Saveresult> results = Database.insert(acclist, false);

for(Database.Saveresult eachResult: results){
    if(eachResult.isSuccess()){
        system.debug('Account succesfully inserted, ID is ' + eachResult.getid());

    } else {
        system.debug('Errors : ' + eachResult.getErrors());
    }
}

