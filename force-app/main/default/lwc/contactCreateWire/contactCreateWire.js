import CONTACT_OBJECT from '@salesforce/schema/Contact';
import LEADSOURCE_FIELD from '@salesforce/schema/Contact.LeadSource';
import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { createRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';


export default class ContactCreateWire extends LightningElement {
    leadSourceOptions = [];
    conRtId;
    formData = {};

    handleChange(event){
        // const name = event.target.name;
        // const value = event.target.value;
        const {name, value} = event.target;
        this.formData[name] = value;
        console.log('formData => ', JSON.stringify(this.formData));

    }

    @wire(getObjectInfo, {objectApiName: CONTACT_OBJECT})
    contactInfo({data, error}){
        if (data) {
            console.log('data', data);
            this.conRtId = data.defaultRecordTypeId;
        }
        if (error) {
            console.error(error);
        }
    }
    @wire(getPicklistValues, {fieldApiName: LEADSOURCE_FIELD, recordTypeId: '$conRtId'})
    picklistHandler({data, error}){
        if (data) {
            console.log('piclist data => ', data);
            this.leadSourceOptions = data.values;
        }
        if (error) {
            console.error(error);
        }
    }

    saveContact(){
        const recordInput= {
            apiName: CONTACT_OBJECT.objectApiName,
            fields: this.formData
        }

        createRecord(recordInput)
.then(result=>{
    console.log('Result ===>', result);
    this.dispatchEvent(new ShowToastEvent({
        title: 'Success',
        message: 'Contact has been created successfully!!!',
        variant: 'success'
    }));
    this.cancelContact();

})
    }
    cancelContact(){
        this.template.querySelector('form.contactForm').reset();
        this.template.querySelector('lightning-combobox').value=undefined;
        this.formData = {};
    }
}