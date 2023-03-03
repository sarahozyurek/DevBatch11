import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi'; import { LightningElement, wire } from 'lwc'; 
import ACCOUNT_OBJECT from '@salesforce/schema/Account'; 
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry'; export default class GetPicklistValuesIndustry extends LightningElement { 
    
//we will use it in function
 defaultRtId; 
 industryOptions = []; 
 isSelected = false;
 selectedIndustry;


 @wire(getObjectInfo, {objectApiName: ACCOUNT_OBJECT}) 

 objectInfoHandler({data, error}) { 
 if(data) { 
 this.defaultRtId = data.defaultRecordTypeId; 
 } 
 if(error) { 
 console.log(error); 
 } 
 } 

 @wire(getPicklistValues, {fieldApiName: INDUSTRY_FIELD, recordTypeId: '$defaultRtId'}) 
 
 picklistHandler({data, error}) { 
 if(data) { 
 console.log("Picklist Data => ",data); 
 this.industryOptions = data.values; 
 } 
 if(error) { 
 console.error(error); 
 } 
 } 
 changeHandler(event){

        this.selectedIndustry = event.target.value;
        this.isSelected = true;
    }
 }


