public  class Calculator3 {

 public static integer add(List<integer> listInt){
     integer returnInt = 0 ; // temporary var 

     for (integer eachInt  : listInt) {
        system.debug('eachInt -> '+ eachInt);
        system.debug('returnInt -> '+ returnInt);
        returnInt+= eachInt;
     }
     return returnInt;

 } 

}
