import { LightningElement } from 'lwc';
import CONTACT_OBJECT from '@salesforce/schema/Contact';
import FIRSTNAME from '@salesforce/schema/Contact.FirstName';
import LASTNAME from '@salesforce/schema/Contact.LastName';
import LEADSOURCE from '@salesforce/schema/Contact.LeadSource';
import TITLE from '@salesforce/schema/Contact.title';



export default class ContactRecordViewForm extends LightningElement {
    objectName = CONTACT_OBJECT;
    recordId = '003Do000002MWfRIAW';


    fields = {
        firstname: FIRSTNAME,
        lastname: LASTNAME,
        leadsource: LEADSOURCE,
        title: TITLE

    }

}