
import { LightningElement } from 'lwc';
import CONTACT_OBJECT from '@salesforce/schema/Contact';
import NAME from '@salesforce/schema/Contact.Name';
import ACCOUNT_NAME from '@salesforce/schema/Contact.AccountId';
import PHONE from '@salesforce/schema/Contact.Phone';
import LEADSOURCE from '@salesforce/schema/Contact.LeadSource';
import DEPARTMENT from '@salesforce/schema/Contact.Department';
import BIRTHDATE from '@salesforce/schema/Contact.Birthdate';

export default class ContactReadOnlyForm extends LightningElement {

    objectName =CONTACT_OBJECT;
    fields ={
        name : NAME,
        accountName :ACCOUNT_NAME,
        phone:PHONE,
       leadsource:  LEADSOURCE,
        department:DEPARTMENT,
       birthdate: BIRTHDATE
    };
    recordId = "003Do000002MWfRIAW";




}