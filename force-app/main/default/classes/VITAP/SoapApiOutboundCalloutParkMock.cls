@isTest 
public with sharing class SoapApiOutboundCalloutParkMock implements WebServiceMock{
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
        parksSOAPApex.byCountryResponse response_x = new  parksSOAPApex.byCountryResponse();
        List<String> parkNames = new    List<String> {'Park1', 'Park2', 'Park3'};

        response_x.return_x =parkNames;
//Assign resonse instance to the main respoinse parameter 
        response.put('response_x', response_x);
    }
}