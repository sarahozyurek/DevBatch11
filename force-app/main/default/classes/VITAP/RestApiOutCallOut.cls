public with sharing class RestApiOutCallOut {
    public static HttpResponse getAnimals(){
            // STEP 3 ****
            // Prepare Http Request
            HttpRequest request = new HttpRequest();
            // 3.a. Setting Endpoint URL for Traget System
            request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
            // 3.b. Setting Http Method for Request
            request.setMethod('GET');
            // STEP 4 ****
            // Make REST Callout
            Http http = new Http();
            HttpResponse response = http.send(request);
            // STEP 5 ****
            // Getting Http Response
            System.debug('Resposnse Status '+ response.getStatus());
            System.debug('Resposnse Status Code '+ response.getStatusCode());
            System.debug('Resposnse Content/Body '+ response.getBody());
            // STEP 6 ****
            // Parsing JSON Response
            // Condition check for Success response
            if (response.getStatusCode() == 200) {
                String jsonString = response.getBody();
                Map<String, Object> animalInfo = (Map<String, Object>) JSON.deserializeUntyped(jsonString);
                // animalInfo.get('animals') will return value of Object data type, but if we want to get list of string values. We need to type casting
                List<Object> animalNames = (List<Object>) animalInfo.get('animals');
                for(Object animal : animalNames){
                    String animalName = (String) animal;
                    System.debug('Final Parse Result : '+ animalName);
                }
            }
                 return response;
        }

        public static HttpResponse getUser(){
            // Prepare Request
            HttpRequest request = new HttpRequest();
            request.setEndpoint('https://reqres.in/api/users/2');
            request.setMethod('GET');
    
            // Send Request
            Http http = new Http();
            HttpResponse response = http.send(request);
    
            // Get Response
            System.debug('Response Status : ' + response.getStatus());
            System.debug('Response Status Code : ' + response.getStatusCode());
            System.debug('Response Body : ' + response.getBody());
    
            // Parse Response
            // Always check for Success status in response
            if (response.getStatusCode() == 200) {
                String jsonString = response.getBody();
                Map<String,Object> dataSupportValue = (Map<String,Object>) JSON.deserializeUntyped(jsonString);
                // Convert Object to String -- Similar to Typecasting
                //String dataValue = String.valueOf(dataSupportValue.get('data'));
                //Map<String,Object> userInfo = (Map<String,Object>) JSON.deserializeUntyped(dataValue);
                // No Consequite Deserailisation on JSON string is possible
                Map<String, Object> userInfo = (Map<String, Object>) dataSupportValue.get('data');
                // Capture User Information
                String emailId = String.valueOf(userInfo.get('email'));
                String firstName = String.valueOf(userInfo.get('first_name'));
                String lastName = String.valueOf(userInfo.get('last_name'));
                Integer userId = Integer.valueOf(userInfo.get('id'));
                System.debug('Email Id : ' + emailId);
                System.debug('Name : ' + firstName + ' ' +  lastName);
                System.debug('Id : ' + userId);
                // TASK : Do the Same with Support part
            }
            return response;
        }
    
        public static HttpResponse getListOfUsers(){
            // Preapare Request
            HttpRequest request = new HttpRequest();
            request.setEndpoint('https://gorest.co.in/public/v2/users');
            request.setMethod('GET');
    
            // Send Request
            Http http = new Http();
            HttpResponse response = http.send(request);
    
            // Fetch Response
            System.debug('Response Status Code : ' + response.getStatusCode());
            System.debug('Response Status : ' + response.getStatus());
            System.debug('Response Body : ' + response.getBody());
    
            // Parsing Response
            if(response.getStatusCode() == 200){
                String jsonString = response.getBody();
                // Deserialising JSON using APex Wrapper Class
                List<UserWrapper> userInfos = (List<UserWrapper>) JSON.deserializeStrict(jsonString, List<UserWrapper>.class);
                for(UserWrapper user : userInfos){
                    String userName = user.name;
                    System.debug(' Famous Person Name :  ' + userName);
                    Integer userId = user.id;
                    System.debug(' Famous Person Id :  ' + userId);
                    System.debug(' Famous Person Email : ' + user.email);
                    System.debug(' Famous Person Status : ' + user.status);
                    System.debug(' Famous Person Gender : ' + user.gender);
                }
            }
    
            return response;
        }
    
        // Wrapper Class to store User Information
        // Key name of JSON should match the variable name in APex Wrapp[er class
        // Datatype needs to be determined
        public class UserWrapper {
            public Integer id;
            public String name;
            public String email;
            public String gender;
            public String status;
        }
    
    
        /**
         * REST Callout - POST Http Method
         * Create Resource/Data Information in External System
         */
        public static HttpResponse postAnimal() {
            // Prepare Http Request
            HttpRequest request = new HttpRequest();
            request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
            request.setMethod('POST');
            // Content which wea re adding to Http Request is of JSON type
            // We are calling out to External SYstem and referring that our Data Contenrt is of JSON type
            request.setHeader('Content-Type','application/json');
            // JSON Body Content
            request.setBody('{ "name" : "fluffy bunny" }');
    
            // Send Http Request
            Http http = new Http();
            HttpResponse response = http.send(request);
    
            // Fetch Response
            System.debug('Response Status : '+ response.getStatus());
            System.debug('Response Status Code : '+ response.getStatusCode());
            System.debug('Response Body : ' + response.getBody());
    
            // Process Response
            if(response.getStatusCode() == 201){
                // Success Scenario
                System.debug('Animal Resource is CREATED!! :) ');
            } else {
                // Failure Scenario
                System.debug('Animal Resource is not Created, Something went wrong!! :( ');
            }
    
            return response;
        }
    
    
        /**
         * REST Callout - POST Http Method
         * Create an User in External System
         */
        public static HttpResponse postUser(){
            // Prepare Request
            HttpRequest request = new HttpRequest();
            request.setEndpoint('https://reqres.in/api/users');
            request.setMethod('POST');
            // Declare Content Type is of JSON type
            request.setHeader('Content-Type','application/json');
    
            // Preapare JSON String
            // Approach 1 - Maual String Construction
            // request.setBody('{ "name" : "Abinash Panigrahi", "job" : "Salesforec Architect" }');
    
            // Approach 2 - Wrapper Class and Serialise
            UserRequest obj = new UserRequest();
            obj.name = 'Abinash Panigrahi';
            obj.job = 'Salesforce Architect';
            // Convert Wrapper Class content to JSON String
            String jsonBody = JSON.serialize(obj);
            request.setBody(jsonBody);
    
            // Send Request
            Http http = new Http();
            HttpResponse response = http.send(request);
    
            // Fetch Response
            System.debug('Response Status : '+ response.getStatus());
            System.debug('Response Status Code : '+ response.getStatusCode());
            System.debug('Response Body : '+ response.getBody());
    
            // Process Response
            if(response.getStatusCode() == 201){
                System.debug('User Resource Successfully Created! :) ');
                // TASK: To Fetch User Id from Reposne
    
                // JSON deserailisation
                // Approach 1
                String jsonString = response.getBody();
                //Map<String, Object> userResp = (Map<String, Object>) JSON.deserializeUntyped(jsonString);
                //String userId = String.valueOf(userResp.get('id'));
                //System.debug('User Craeted Newly Generated Id : '+ userId);
                // Approach 2
                UserResponse userResp = (UserResponse) JSON.deserializeStrict(jsonString,UserResponse.class);
                String userId = userResp.id;
                System.debug('User Craeted Newly Generated Id : '+ userId);
            } else {
                System.debug('User Resource Failed! :( ');
            }
    
            return response;
        }
    
        // Wrapper Class to hold User Information
        public class UserRequest {
            public String name;
            public String job;
        }
    
        public class UserResponse {
            public String id;
            public String name;
            public String job;
            public String createdAt;
        }
    
        /**
         * As a best pratice, Authentication details for Outbound Integration needs to be stored in Named Credential
         * 1. End Point
         * 2. Username & Password
         * REST Callout - To Heroku App with AUthentication using Named Credential
         */
        public static void getAnimalWithAuthenticationNamedCredential(){
            // Prepare Request
            HttpRequest request = new HttpRequest();
            // ERefering Named Credential
            // EndPoint information & User credential
            request.setEndpoint('callout:Animal_Heroku_App');
            /**
             * Apex Code before Named Credential -- DONOT USE (JUST FOR EXPLANANTION)
             * request.setEndPoint('https://th-apex-http-callout.herokuapp.com/animals');
             * String username = 'panigrahi.abinash@outlook.com';
             * String password = 'FunkyArchitect';
             * Blob userCredential = Blob.valueOf(username + ':' + password);
             * request.setHeader('Authorization', 'BASIC '+ EncodingUtil.base64encode(userCredential));
             */
    
            request.setMethod('GET');
    
            // Sending Request
            Http http = new Http();
            HttpResponse response = http.send(request);
    
            // Fetching Response
            System.debug('Resposnse Status '+ response.getStatus());
            System.debug('Resposnse Status Code '+ response.getStatusCode());
            System.debug('Resposnse Content/Body '+ response.getBody());
    
        }
    }