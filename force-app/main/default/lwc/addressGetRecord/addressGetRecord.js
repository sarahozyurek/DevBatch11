import MAILINGCITY_FIELD from '@salesforce/schema/Contact.MailingCity';
import MAILINGCOUNTRY_FIELD from '@salesforce/schema/Contact.MailingCountry';
import MAILINGPOSTALCODE_FIELD from '@salesforce/schema/Contact.MailingPostalCode';
import MAILINGSTATE_FIELD from '@salesforce/schema/Contact.MailingState';
import MAILINGSTREET_FIELD from '@salesforce/schema/Contact.MailingStreet';
import { getFieldValue, getRecord } from 'lightning/uiRecordApi';

import { api, LightningElement, wire } from 'lwc';

export default class AddressGetRecord extends LightningElement {
    isData = false;
    street;
    city;
    state;
    country;
    postal;
    @api recordId;

    @wire(getRecord, {recordId: '$recordId', layoutTypes: ['Full']})
    contact({data, error}) {
        if (data) {
            this.isData = true;
            console.log('data => ', data);
            this.street = getFieldValue(data, MAILINGSTREET_FIELD);
            this.city = getFieldValue(data, MAILINGCITY_FIELD);
            this.state = getFieldValue(data, MAILINGSTATE_FIELD);
            this.country = getFieldValue(data, MAILINGCOUNTRY_FIELD);
            this.postal = getFieldValue(data, MAILINGPOSTALCODE_FIELD);
            
        }
        if (error) {
            console.error(error);
        }
    }
}