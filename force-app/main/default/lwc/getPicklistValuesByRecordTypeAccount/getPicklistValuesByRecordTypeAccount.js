import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';

import { LightningElement, wire } from 'lwc';

import ACCOUNT_OBJECT from '@salesforce/schema/Account';

export default class GetPickListValuesByRecordTypeAccount extends LightningElement {
    defaultRtId;
    typeOptions;
    ratingOptions;

    @wire (getObjectInfo, {objectApiName : ACCOUNT_OBJECT})
    objectInfoHandler({data, error}){

        if(data){
            this.defaultRtId = data.defaultRecordTypeId;
        }
        if(error){
            console.log(error);
        }
    }
    @wire (getPicklistValuesByRecordType, {objectApiName : ACCOUNT_OBJECT, recordTypeId:'$defaultRtId'})
    picklistHandler({data, error}){
        
        if(data){
            console.log("Picklist Values Account ==> ",data);

            this.typeOptions = data.picklistFieldValues.Type.values; this.ratingOptions = data.picklistFieldValues.Industry.values;
        }
        if(error){
            console.log(error);
        }
    }
}