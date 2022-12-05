public  class PrimitiveDataTypeDemo {

    public void printBasicDataType() {
    String batchName  = 'Batch11';
    Integer totalCandidates = 40;
    boolean isAdminCompleted = true;
    system.debug('batch name is '+ batchName);
    system.debug('Total candidates are  '+ totalCandidates);
    system.debug('is admin completed  '+ isAdminCompleted);

    string batchDescription = batchName + ' is the best'; 
    system.debug(batchDescription);

    Decimal decValue = 27.1;
    system.debug('Decimal: ' + decValue);
     Long longValue = 2344566L;
     System.debug('Long: ' + longValue);

     string cumle1 = 'salesforce ogreniyorm ';
     string cumle2 = cumle1.capitalize();
     System.debug('1.yol ile assign etme'+ cumle1);

     string cumle1 = 'salesforce ogreniyorm ';
     string cumle2 = cumle1.capitalize();
     System.debug('1.yol ile assign etme'+ cumle1);


    
    }
   
}
