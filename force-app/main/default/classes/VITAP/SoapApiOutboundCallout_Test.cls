/*
Implementation of Unit Test Class for soap api outbound callouts
Step1: Create a new mock apex class which will implement webserviceMock

Step2: Inside Mock Respnse class we will be implementing doInvoke method with bunch of predefined merhod parameters 

Step3 - Initialize Response Class of SOAP Utility/ Service class - similar to creating http response object 

Step4 - Pass Dummy/Fake Response values 

Step5 - Assosiate Mock Response to our Unit Test method 

Step 6- Invoking Soap Callout 

Step 7 - System Assertion 
*/   
 @isTest 
public with sharing class SoapApiOutboundCallout_Test {
    @isTest 
    public static void makeCalculatorCalloutSuccessTest() {
        // SoapApiOutboundCallout.makeMultiplication();
        Test.setMock(WebServiceMock.class, new SoapApiOutboundCalloutCalculatorMock());
        Test.startTest();
        Double result = SoapApiOutboundCallout.makeMultiplication();
        Test.stopTest();
        System.assertEquals(30.0, result, 'Mock Response return should be matching');
    }
    @isTest 
    public static void makeParkrCalloutSuccessTest() {
        Test.setMock(WebServiceMock.class, new SoapApiOutboundCalloutParkMock());
        Test.startTest();
        List<String>  parks = SoapApiOutboundCallout.makeParkCallout();
        Test.stopTest();
        System.assertEquals( 3, parks.size(), 'Mock Response return should be matching');
}
}