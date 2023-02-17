//This apex class will serve the purpose of a mock response class for SOAP API Outbound Callout - calculator example 
@isTest 
public with sharing class SoapApiOutboundCalloutCalculatorMock implements WebServiceMock {
    public void doInvoke(
        Object stub,
        Object request,
        Map<String, Object> response,
        String endpoint,
        String soapAction,
        String requestName,
        String responseNS,
        String responseName, 
        String responseType
    ){
CalculatorSOAPApex.doMultiplyResponse response_x = new CalculatorSOAPApex.doMultiplyResponse();
//manually Assigning fake response body
response_x.return_x = 30.0;

//Assign resonse instance to the main respoinse parameter 
response.put('response_x', response_x);
  }
    }
//MethodNameResponse 
