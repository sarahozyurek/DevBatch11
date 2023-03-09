import { LightningElement, wire } from 'lwc'; 
import NAME_FIELD from '@salesforce/schema/Account.Name'; 
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue'; 
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import RATING_FIELD from '@salesforce/schema/Account.Rating'; 
import TYPE_FIELD from '@salesforce/schema/Account.Type'; 

import { getFieldDisplayValue, getFieldValue, getRecord } from 'lightning/uiRecordApi'; 
const FIELDS = [NAME_FIELD, REVENUE_FIELD, INDUSTRY_FIELD, RATING_FIELD,TYPE_FIELD];
export default class GetRecordAccount extends LightningElement { 
    
recordId = "001Do000003AqzqIAC"; 
 name; 
 revenue; 
 industry; 
 rating;
 type;

 @wire(getRecord, {recordId: '$recordId', fields: FIELDS}) 
 recordHandler({data, error}) { 
 if(data) { 
 this.name = getFieldValue(data, NAME_FIELD); 
 this.revenue = getFieldDisplayValue(data, REVENUE_FIELD);  this.industry = getFieldValue(data, INDUSTRY_FIELD); 
 this.industry = getFieldValue(data, INDUSTRY_FIELD); 
 this.type = getFieldValue(data, TYPE_FIELD); 
 this.rating = getFieldValue(data, RATING_FIELD); 
 
 } 
 if(error) { 
 console.error(error); 
 } 
 } 
}
