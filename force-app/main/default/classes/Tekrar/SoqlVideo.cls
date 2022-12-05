public   class SoqlVideo {

    public static void allContacts(){
        List<Contact> ContactList = [SELECT id FROM Contact]; // all list
        system.debug(ContactList);
    }

        public static void latestContact(){
       contact  latestCnt = [SELECT name, email  FROM Contact ORDER BY CreatedDate DESC LIMIT 1 ]; // 1 tane contact
        system.debug(latestCnt);
        string latestname = latestCnt.name;
        string latestemail = latestCnt.email;
        system.debug(latestname +' ' + latestemail);
        }

        public static void allContactsCapital(){
            List<Contact> emailContactList  = [SELECT name, email  FROM Contact WHERE email != null]; // all contact which has a email , convert to capital
            system.debug(emailContactList.size());

            for (Contact  each : emailContactList) {
                       system.debug('uppercase name '+ each.Name.toUpperCase());
                       system.debug('uppercase email '+ each.email.toUpperCase());
            }
        }
            public static void filtername(string fname){ //filtering contact
            List<Contact> filteredContact  = [SELECT name, email, phone FROM Contact WHERE FirstName = :fname];
            system.debug(filteredContact);
            }
            public static void filter2(List<string> accNames){
                List<account> listAcc = [SELECT id, name phone FROM Account WHERE name in :accNames];
                System.debug('List of accounts  '+ listAcc);
            }

}
