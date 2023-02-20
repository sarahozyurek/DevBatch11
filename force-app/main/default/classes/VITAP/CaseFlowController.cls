public with sharing class CaseFlowController {

    @InvocableMethod(
        label='Send Email to Contact'
        description='Auto-generated email sent to Customers'
        category='Case'
    )
    public static void sendEmailToContact(List<Request> inputParameters){
        // We are fetching the first element of InputParameters
        String contactId = inputParameters[0].contactIds; //inputParameters.get(0).contactIds.get(0);
        String caseId = inputParameters[0].caseIds; //inputParameters.get(0).caseIds.get(0);
        String caseNumber = inputParameters[0].caseNumber; //inputParameters.get(0).caseNumber.get(0);
        // Message.SingleEmailMessage to prepare Email Message to Contact record
        Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
        message.Subject = 'Your Case has been received! ' + caseNumber;
        message.plaintextbody = 'Hey Customer, Thanks for reaching out to SOftInnovas. We will get back to you shortly!';
        message.toaddresses = new List<String> { contactId };
        message.setSaveAsActivity(true);
        // Send Email to Contact record and capture the result
        List<Messaging.SingleEmailMessage> messages = new List<Messaging.SingleEmailMessage>();
        messages.add(message);
        Messaging.SendEmailResult[] results = Messaging.sendEmail(messages);
        // Return Result To Flow
        if(results[0].success){
            System.debug('Email was sent successfully!');
        } else {
            System.debug('Email delivery got failed!');
        }
    }

    // Wrapper Class -- Collection/Set of Varibales -- Structural Represent of Data
    public class Request {

        @InvocableVariable(
            label='Case Record Id'
            description='The Id of Case record'
            required=true
        )
        public String caseIds;

        @InvocableVariable(
            label='Contact Record Id'
            description='The Id of Contact record'
            required=true
        )
        public String contactIds;

        @InvocableVariable(
            label='Case Number'
            description='The AutoNum of Case record'
        )
        public String caseNumber;
    }
}

//Error from Project \
try {
    case__c  cs = new case__c();
    cs.name__c = 'Error';
    insert cs;
} catch (Exception ex) {
    system.debug('Case is created');
    CreateErrorLogs.CreateError(datetime.now(), ex.getMessage(), 'caseInsert');
}