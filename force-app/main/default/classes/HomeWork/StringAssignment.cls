public  class StringAssignment {
    public void stringAssign() {
        string localString = 'Thanks for the session on the string';
        system.debug(localString);

        integer lenOfString  = localString.length();
        system.debug(lenOfString);
        
        string upString = localString.toUpperCase();
        system.debug(upString);

        boolean contString = localString.contains('session');
        system.debug('Contains session? -> '+ contString);

        boolean contString2 = localString.contains('sessions');
        system.debug('Contains sessions?-> ' + contString2);

        boolean contString3 = localString.contains('SESSION');
        system.debug('Contains SESSION? -> '+ contString3);
    }
}
