@isTest // class becomes test class 
public  class Calculator2Test {
    @isTest // method becomes test method
    private static void testMessage(){
        //we want to test calc2 class 
        Calculator2.welcomeMessage();
        //we can call parameterized methods from test class
        Calculator2.printNewMessage('this is from test method');
    }
@isTest
    private static void addTest1(){
    integer i= 10;
    integer j = 15;

    integer sum1 = Calculator2.add(i, j),x ;
    system.assertEquals(25, sum1);// assert= testing above we test is manually 
}
@isTest
    private static void addTest2(){
    integer sum1 = Calculator2.add(10,15,25);
    system.assertEquals(50, sum1);// assert= testing above we test is manually 
}

}
//Test methods are static, void and no parameters
