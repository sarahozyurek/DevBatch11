import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
export default class GetPickListValuesByRecordTypeAccount extends LightningElement {
    defaultRtId;
    typeOptions;
    ratingOptions;
    isSelected = false;
    selectedType;
    selectedRating;
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

            this.typeOptions = data.picklistFieldValues.Type.values;
             this.ratingOptions = data.picklistFieldValues.Rating.values;
        }
        if(error){
            console.log(error);
        }
    }
changeHandler(event){
        if (event.target.name ==="Type") {
            this.selectedType =event.target.value;
            this.isSelected=true;
        } else{
            this.selectedRating = event.target.value;
            this.isSelected=true;
        }
    }
    }
