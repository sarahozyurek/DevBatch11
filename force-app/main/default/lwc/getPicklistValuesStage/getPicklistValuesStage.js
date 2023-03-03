import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi'; import { LightningElement, wire } from 'lwc'; 
import OPP_OBJECT from '@salesforce/schema/Opportunity'; 
import STAGE_FIELD from '@salesforce/schema/Opportunity.StageName'; 
import LEADSOURCE_FIELD from '@salesforce/schema/Opportunity.LeadSource'; 

export default class GetPicklistValuesStage extends LightningElement { 
 defaultRtId; 
 stageOptions = []; 
 leadOptions = [];
 selectedStage; 
 selecedLeadSource;

 
 @wire(getObjectInfo, {objectApiName: OPP_OBJECT}) 
 objectInfoHandler({data, error}) { 
 if(data) { 
 this.defaultRtId = data.defaultRecordTypeId; 
 } 
 if(error) { 
 console.error(error); 
 } 
 } 
 @wire(getPicklistValues, {fieldApiName: STAGE_FIELD, recordTypeId: '$defaultRtId'})  picklistHandler({data, error}) { 
 if(data) { 
 this.stageOptions = data.values; 
 this.leadOptions = data.values;

 } 
 if(error) { 
 console.error(error); 
 } 
 } 
 changeHandler(event) { 
if(event.target.label ==="Select the stage"){
this.selectedStage = event.target.value;

}else {
    this.selecedLeadSource = event.target.value
}


}
 } 

