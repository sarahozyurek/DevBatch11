import { LightningElement, track, wire } from 'lwc';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import TYPE_FIELD from '@salesforce/schema/Account.Type';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';
import { getRecord, updateRecord } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
const FIELDS = [NAME_FIELD, TYPE_FIELD, INDUSTRY_FIELD, REVENUE_FIELD];
export default class UpdateRecordAccount extends LightningElement {
recordId = "001Do000003AqzxIAC";
typeOptions = [];
industryOptions = [];
@track formData = {};
@wire (getRecord, {recordId : '$recordId', fields : FIELDS})
account;
@wire(getObjectInfo, {objectApiName : ACCOUNT_OBJECT})
accInfo;

@wire(getPicklistValuesByRecordType, {objectApiName : ACCOUNT_OBJECT, recordTypeId : '$accInfo.data.defaultRecordTypeId'})
picklistHandler({data, error}){
    if(data){
        this.typeOptions = data.picklistFieldValues.Type.values;
        this.industryOptions = data.picklistFieldValues.Industry.values;
    }
    if(error){
        console.error(error);
    }
}
    changeHandler(event){
        const {name, value} = event.target;
        this.formData[name] = value;
    }
    saveAccount(){
        this.formData["Id"] = this.recordId;
        console.log(JSON.stringify(this.formData))

        const recordInput = {
            fields : this.formData
        };
        updateRecord(recordInput)
            .then(result =>{

                console.log(result);
                const toast = new ShowToastEvent({
                    title : "Success",
                    message : "Record has been updated successfully",
                    variant : "success"
                });
                this.dispatchEvent(toast);
            })
            .catch(error=>{
                console.error(error)
            })
    }
}