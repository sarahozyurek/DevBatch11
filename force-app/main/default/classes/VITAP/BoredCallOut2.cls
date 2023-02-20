public with sharing class BoredCallOut2 {
    public static HttpResponse getBored() {
        //Prepare Request

        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://www.boredapi.com/api/activity');
        request.setMethod('GET');

        //Prepare Internet, send request and get response 
        Http http = new Http();
        HttpResponse response = http.send(request);

        //Process response 
        System.debug('Resposnse Status '+ response.getStatus());
        System.debug('Resposnse Status Code '+ response.getStatusCode());
        System.debug('Resposnse Content/Body '+ response.getBody());

        //Parsing 
        if (response.getStatusCode() == 200) {
        String jsonString = response.getBody();
        System.debug(jsonString);
        BoredWrapper wrapper = (BoredWrapper) JSON.deserialize(jsonString,BoredWrapper.class);
        ProcessBored(wrapper);
        }
        return response;
    }
    private static void processBored(BoredWrapper wrapper){
        Bored__c b = new Bored__c();
        b.Client__c = wrapper.participants;
        b.Name = wrapper.activity;
        b.Key__c = wrapper.key;
        b.Link__c = wrapper.link;
        b.Total__c = wrapper.price;
        b.Type__c = wrapper.type;

        insert b;
    }
}