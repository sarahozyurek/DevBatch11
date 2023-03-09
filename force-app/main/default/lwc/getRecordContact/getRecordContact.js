import { getFieldDisplayValue, getFieldValue, getRecord } from 'lightning/uiRecordApi';

import { LightningElement, wire } from 'lwc'; 

import FIRSTNAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LASTNAME_FIELD from '@salesforce/schema/Contact.LastName';
import ACCOUNT_FIELD from '@salesforce/schema/Contact.Account.Name';
import DEPARTMENT_FIELD from '@salesforce/schema/Contact.Department';
import LEADSOURCE_FIELD from '@salesforce/schema/Contact.LeadSource';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';

export default class GetRecordContact extends LightningElement { 
 recordId = "003Do000002MWfBIAW"; 
 firstName;
lastName;
department;
accountName;
leadSource;
email;

 @wire(getRecord, {recordId: '$recordId',layoutTypes : ['Full']}) 

 recordHandler({data, error}) { 
 if(data) { 
 console.log('Contact DATA ==>',data); 

//  this.firstName = data.fields.FirstName.value; 
//  this.lastName = data.fields.LastName.value; 
//  this.department = data.fields.Department.value; 
//  this.accountName = data.fields.Account.displayValue; 
//  this.email = data.fields.Email.value; 
//  this.leadSource = data.fields.LeadSource.displayValue; 

//Approach 2 
this.firstName = getFieldValue(data, FIRSTNAME_FIELD);
this.lastName = getFieldValue(data, LASTNAME_FIELD);
console.log("Account name ", data.fields.Account.displayValue);

this.accountName = getFieldValue(data, ACCOUNT_FIELD);
this.department = getFieldValue(data, DEPARTMENT_FIELD);
this.leadSource = getFieldValue(data, LEADSOURCE_FIELD);
this.email = getFieldValue(data, EMAIL_FIELD); 

 } 
 if(error) { 
 console.error(error); 
 } 
 } 
}
