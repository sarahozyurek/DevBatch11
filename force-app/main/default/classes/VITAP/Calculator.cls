public class Calculator {
    //void --> return type. 
    //() --> parameters.
   public void welcomeMessage(){
        system.debug('welcome to apex calc');
   }

   public void printNewMessage(string msg){
        //msg = variable => is used INSIDE the method.
        system.debug(msg);
   }
   //return string, append '...ok cool' to parameter
   public string printAndReturnMessage(string msg){
        string returnString = msg + '...OK cool.';
        return returnString;
   }

   public integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
   }

   public integer add(integer a, integer b,integer c){

    return a+b+b;
}


}