/**
 * External System/Insomnia/Workbench   -->  Salesforce (Inbound Integration)
 * AGENDA: Build Custom APex REST Web Services -- Example: Case Manager
 * Http Methods - GET, POST, PATCH, DELETE, PUT
 *
 * Whenever we are setting up any Inbound Integration with Salesforce, it is mandatory to do following steps
 * 1. Authorization - Create Connected App - (Api Access Monitoring Tool)
 * 2. Authentication - Create User Account -  (Username + Password)
 *
 * When to build Custom Apex REST WebServices?
 * Check in Salesforce REST API Documentation, if you think Feature requested by Business is not possible through Standard APIs provided by Salesforce
 * Then only resort to create a Custom WebService
 * Documention : https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_list.htm
 *
 * Testing Endpoint: https://abinash-panigrahi-0113-dev-ed.my.salesforce.com/services/apexrest/InboundCaseManager/
 * How to build Testing Endpoint URL?
 * 1. Identify Domain - Setup => My Domain . i.e, abinash-panigrahi-0113-dev-ed.my.salesforce.com
 * 2. /services/apexrest/ - This is Constant url mapping, which will always remains the same
 * 3. urlMapping provided at RestResource annotation, i.e. InboundCaseManager
 *
 * Access Modifier of WebService Apex Class needs to be Global when exposing Custom REST Api
 * So it can be access externally
 *
 * For Connected App's Callback URL details
 * Production/Developer Org - https://login.salesforce.com
 * Sandbox - https://test.salesforce.com
 *
 * Connected App Details:
 * Consumer Key : 3MVG9n_HvETGhr3AXgdfTQAhPAk8SdpRr9V9Td27dJcWg8FR.33Ll.OFhV_Y7Jc2nxG7bksX9YQ2ZDU7Mzr40
 * Consumer Secret : 1539D6DC78934F36CAB4113B44CF72F4AA776F7FF0E34A0B9224D40B25DFA3E1
 *
 * Inbound Integration with Salesforce is generally 2 step method:
 * Step 1: Get Session Id/Acess token using Authentication and Authorization details
 * Step 2: Actually using Custom REST APi
 */
@RestResource(urlmapping='/InboundCaseManager/*')
global with sharing class RestInboundWebService {

    /**
     * This method will enable feature where we will expose/send Case record by their Salesforce Id
     * HttpMethod - GET
     * Return type of method will be mapped directly to Response Body
     * Endpoint - https://abinash-panigrahi-0113-dev-ed.my.salesforce.com/services/apexrest/InboundCaseManager/xxxxxxxxxxx
     * In GET Request, Input parameters are always provided at the URL level
     */
    @HttpGet
    global static Case getCaseById(){
        // Capture Http Request details sent by the External Syetm during Inbound Integration
        RestRequest request = RestContext.request;
        System.debug('HTTP Request Details sent by External SYstem ' + request);
        System.debug('Endpoint ' + request.requestURI);
        System.debug('Http Method ' + request.httpMethod);
        System.debug('Header ' + request.headers);
        // Grab Case Record ID from the URL
        String caseId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        System.debug('Case Record Id: '+ caseId);
        // SOQL to fetch Case record information
        // Best Pratice: ALways use With SEcurity Enforced whenever writing a SOQL Query
        Case result = [SELECT Id, Description, CaseNumber, Status, Origin, Subject, Priority FROM Case WHERE Id =: caseId WITH SECURITY_ENFORCED];
        System.debug('Case Record : '+ result);
        // Return Case information
        return result;
    }

    /**
	 * This Method is deleting Case record by their Salesforce Id
	 * Endpoint - https://abinash-panigrahi-0113-dev-ed.my.salesforce.com/services/apexrest/InboundCaseManager/5002w000003zzJxAAI
	 * HTTP Method - DELETE
	 * Create Success & Fail Response with dynmaic Status Code and Body
	 */
    @HttpDelete
    global static void deleteCase(){
        // To fetch Rest Request sent by External System
        RestRequest request = RestContext.Request;
        System.debug('HTTP Request Details sent by External System ' + request);
        System.debug('Endpoint ' + request.requestURI);
        System.debug('Http Method ' + request.httpMethod);
        System.debug('Header ' + request.headers);
        // Find Case Id info from the URL Endpoint
        String caseId = request.requestURI.substring(request.requestURI.lastIndexOf('/') + 1);
        System.debug('Case Record Id: '+ caseId);
        // Fetch Case record using SOQL
        List<Case> matchingResult = [SELECT Id FROM Case WHERE Id =: caseId WITH SECURITY_ENFORCED];
        // Build Custom Response
        RestResponse response = RestContext.Response;
        if(!matchingResult.isEmpty()){
            // Success Scenario
            delete matchingResult[0];

            // Success Code for Delete operation => 204
            response.statusCode = 204;
            // Response Body always expect data to be present in Binary format
            response.responseBody = Blob.valueOf('Case record was successfully deleted! :) ');
        } else {
            // Error Scenario
            response.statusCode = 404;
            response.responseBody = Blob.valueOf('Error encountered, Record doesnot exist ! :(');
        }
    }

    /**
     * This method is going to create Case record by getting all required field values from External Sytem request
     * Http Method - POST
     * Testing Endpoint - https://abinash-panigrahi-0113-dev-ed.my.salesforce.com/services/apexrest/InboundCaseManager/
     * Request Body - { 'subject' : 'xxx', 'description' : 'xxx', 'status' : 'xxx', 'priority' : 'xxx', 'origin' : 'xxx'  }
     * Return Custom meaningful JSON response based on Success/Failure
     * Response Body - { 'id' : 'xxx', 'status' : 'Success/Failure', 'errorMessage' : 'xxx' }
     */
    @HttpPost
    global static void createCase(String subject, String description, String status, String priority, String origin){
        // Get Request content sent by External System
        RestRequest request = RestContext.request;
        System.debug('HTTP Request Details sent by External System ' + request);
        System.debug('Endpoint ' + request.requestURI);
        System.debug('Http Method ' + request.httpMethod);
        System.debug('Header ' + request.headers);
        System.debug('Request Body ' + request.requestBody);

        // Create Case Sobject instance
        Case newRec = new Case();
        newRec.Subject = subject;
        newRec.Description = description;
        newRec.Status = status;
        newRec.Priority = priority;
        newRec.Origin = origin;

        // Prepare Custom Response
        RestResponse response = new RestResponse();
        response.addHeader('Content-Type', 'application/json');
        PostResponseWrapper responseContent = new PostResponseWrapper();

        // Insertion Case record
        try {
            insert newRec;

            // Success Response
            response.statusCode = 201;
            // Prepare JSON Response Body
            responseContent.id = newRec.Id;
            responseContent.status = 'Success';
            responseContent.errorMessage = ' ';

        } catch (Exception ex) {
            // Error Response
            response.statusCode = 404;
            // Prepare JSON Response Body
            responseContent.id = ' ';
            responseContent.status = 'Failure';
            responseContent.errorMessage = ex.getMessage();
        }

        // Populate Response Body, wrapperden dolayi
        String responseBody = JSON.serialize(responseContent);
        response.responseBody = Blob.valueOf(responseBody);
    }
/*
* This method is going to update Case record by looking at the Salesforce Id followed by Request body
* HttpMethod - PATCH
* Endpoint - https://abinash-panigrahi-0113-dev-ed.my.salesforce.com/services/apexrest/InboundCaseManager/5002w000003zzJxAAI
* Request Body -  { "subject" : "xxx", "description" : "xxx", "status" : "xxx", "priority" : "xxx", "origin" : "xxx" }
* Request Body will only contain fieldname which you are going to update
* Return Type will be Case JSON record
*/
@HttpPatch
global static Case updatecaseFields(){
   // Grab Current Inbound Integration Request
   RestRequest request = RestContext.Request;
   // Grab the Case Record Id from Endpoint URI
   String caseId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
   // Fetch Case record using Record Id
   List<Case> existingRec = [SELECT Id FROM Case WHERE Id =: caseId WITH SECURITY_ENFORCED];
   // Handling Request JSON Body
   // Request Body would be present in Blob format. Inoerder to convert into String value
   String requestJSON = request.requestBody.toString();
   // Deserialize the JSON STring into name-value pair
   Map<String,Object> fieldValues = (Map<String,Object>) JSON.deserializeUntyped(requestJSON);
   // Iterate through each parameter fieldname and value
   for(String fieldName : fieldValues.keySet()){
       // Set the field and value on the Case sObject
       // existingRec[0].Status = 'New';
       // existingRec[0].put('Status', 'New');
       // Above 2 lines mean the same thing. In Approach #1 field name is static content but in Approach #2 field name is dynamic content
       existingRec[0].put(fieldName, fieldValues.get(fieldName));
   }
   // Update existing case record
   update existingRec[0];
   return existingRec[0];
}
    // Wrapper Class for Response Building
    public class PostResponseWrapper {
        public String id;
        public String status;
        public String errorMessage;
    }
}







