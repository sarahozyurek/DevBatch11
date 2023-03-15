import { LightningElement, wire } from 'lwc';
import getOpportunityStages from '@salesforce/apex/OppCtrl.getOpportunityStages';

import OPP_OBJECT from '@salesforce/schema/Opportunity';
import STAGENAME_FIELD from  '@salesforce/schema/Opportunity.StageName';
import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';



export default class OppPickListByStageName extends LightningElement {
    oppOptions =[];
    total;
    error;


    @wire(getObjectInfo, {objectApiName:OPP_OBJECT})
    oppInfo;


    @wire(getPicklistValues, {fieldApiName:STAGENAME_FIELD,recordTypeId : "$oppInfo.data.defaultRecordTypeId" })

    picklistHandler({data,error}){
        if(data){
            console.log('Opp=>', data);
            this.oppOptions= data.values;
        }
        if(error){
            console.error(error);
        }
    }

    changeHandler(event){
    const SelectedStage = event.target.value;

    getOpportunityStages({stage : SelectedStage} )
 .then(result=>{
    if(result> 0){
        this.total = result;
    } else{
        this.error = 'There are no matching Opportunities for selected stage, please select another one!';
    }
 })
 .catch(error=>{
    this.error = error.body.message;
 })
    }

    }

