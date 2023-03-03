import { api, LightningElement } from 'lwc';

import NAME_FIELD from '@salesforce/schema/Account.Name';
import RATING_FIELD from '@salesforce/schema/Account.Rating';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import FAX_FIELD from '@salesforce/schema/Account.Fax';
import OWNERSHIP_FIELD from '@salesforce/schema/Account.Ownership';

import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class RecordEditFormAccount extends LightningElement {

    @api objectApiName;
    @api recordId;
 
    fields={
        name:NAME_FIELD,
        rating:RATING_FIELD,
        industry:INDUSTRY_FIELD,
        fax:FAX_FIELD,
        ownership:OWNERSHIP_FIELD
    }
    successHandler(){
        const evt = new ShowToastEvent({
            title:"Success",
            message:"Successfully saved!!",
            variant:"success"
        });

        this.dispatchEvent(evt);
    }
    errorHandler(){
        const evt = new ShowToastEvent({
            title:"Error",
            message:"Error occured!!",
            variant:"error"
        });
        this.dispatchEvent(evt);
    }
    isIndustry=false;
    isFax=false;
    isOwnership=false;
    changeHandler(event){
        if(event.target.value === "Hot"){
           this.isIndustry=true;
           this.isFax=false;
           this.isOwnership =false;
        }if(event.target.value === 'Cold'){
            this.isIndustry=false;
           this.isFax=true;
           this.isOwnership =false;
        }if(event.target.value ==="Warm"){
           this.isIndustry=false;
           this.isFax=false;
           this.isOwnership =true;
        }
    }
    }
