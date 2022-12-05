public  class StringDemoClass2 {
    public void stringMethod2(){

        string sentence = 'Today is Sunday';
        System.debug(sentence);

        integer lengOfString = sentence.length();
        System.debug('length of the string is '+lengOfString);

        Boolean apexContains = sentence.contains('apex');
        system.debug(apexContains);

        string upSentence = sentence.toUpperCase();
        system.debug(upSentence);

        boolean ignSentence = sentence.containsIgnoreCase('sunday');
        system.debug(ignSentence);

        




    }
 
}
