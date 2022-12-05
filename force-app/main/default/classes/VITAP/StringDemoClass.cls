public class StringDemoClass {

    public void stringMethod1(){
         String sessionDescription = 'learning string methods in apex language.';
         system.debug(sessionDescription);
 
         integer lengthOfStr = sessionDescription.length();
         system.debug('length of session description is ' + lengthOfStr);
 
         string capsSessionDescription = sessionDescription.toUpperCase();
         system.debug('in CAPS -> ' + capsSessionDescription);
 
         //3. check if string contains 'apex'
         boolean apexContains = sessionDescription.contains('apex');
         system.debug('contains apex??????????? ' + apexContains);
 
         //3.2 check if string contains 'apex'
         boolean apexContains2 = sessionDescription.contains('Apex'); //'learning string methods in apex language.';
         system.debug('contains Apex??? ' + apexContains2);
 
         //3.3 check if string contains 'apex'
         boolean apexContains22 = sessionDescription.containsIgnoreCase('Apex'); 
         system.debug('contains ignore case Apex??? ' + apexContains22);
 
 
         //if string contains Salesforce.
         boolean sfContains = sessionDescription.contains('salesforce');
         system.debug('contains salesforce??????????? ' + sfContains);


        string cumle1 = 'salesforce ogreniyorum..';
        System.debug('orjinal cumlem => ' + cumle1);
        // bir metodun yaptığı değişikliği görmenin iki yolu var..
        // 1 bir değişkene assign ederim sonra yazdırırım.
        string cumle2 = cumle1.capitalize();
        System.debug('1. yol assign etme => ' + cumle2);

        // metotla beraber system debug içine yazarız..
        System.debug('2. yol debug içinde gorme => ' + cumle1.capitalize());
    }
 }