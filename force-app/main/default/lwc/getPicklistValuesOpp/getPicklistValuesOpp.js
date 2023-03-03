import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi'; import { LightningElement, wire } from 'lwc';
import OPP_OBJECT from '@salesforce/schema/Opportunity';

export default class GetPicklistValuesOpp extends LightningElement {
    defaultRtId;
    stageOptions;
    leadOptions;
    selectedStage;
    selectedLeadSource;
    isSelectedStage = false;
    isSelectedLeadSource = false;


    @wire(getObjectInfo, { objectApiName: OPP_OBJECT })
    objectInfoHandler({ data, error }) {
        if (data) {
            this.defaultRtId = data.defaultRecordTypeId;
        }
        if (error) {
            console.error(error);
        }
    }
    @wire(getPicklistValuesByRecordType, { objectApiName: OPP_OBJECT, recordTypeId: '$defaultRtId' }) picklistHandler({ data, error }) {
        if (data) {
            this.stageOptions = data.picklistFieldValues.StageName.values;
            this.leadOptions = data.picklistFieldValues.LeadSource.values;
            
        }
        if (error) {
            console.error(error);
        }
    }
    changeHandler(event) {
        if (event.target.label === "Select the Stage") {
            this.selectedStage = event.target.value;
            this.isSelectedStage = true;
    
        } else {
            this.selectedLeadSource = event.target.value;
            this.isSelectedLeadSource = true;
        }
    }
}

