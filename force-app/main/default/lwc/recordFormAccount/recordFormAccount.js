import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import ACCOUNT_OBJECT  from '@salesforce/schema/Account';
import NAME_FIELDS from '@salesforce/schema/Account.Name';
import TYPE_FIELDS from '@salesforce/schema/Account.Type';
import INDUSTRY_FIELDS from '@salesforce/schema/Account.Industry';
import REVENUE_FIELDS from '@salesforce/schema/Account.AnnualRevenue';


export default class RecordFormAccount extends LightningElement {

    objectName = ACCOUNT_OBJECT;
    accFields = [ 
    NAME_FIELDS, 
    INDUSTRY_FIELDS,
    TYPE_FIELDS,
    INDUSTRY_FIELDS,
    REVENUE_FIELDS ];

    recordId = "001Do0000091AsjIAE"; 
    
    successHandler(){
        var successToast = new ShowToastEvent({
            title: "Success",
            message: "Record Successfully updated",
            variant: "success",
            mode: "sticky"
        })
        this.dispatchEvent(successToast);
    }

    errorHandler(){
        var errorEvent = new ShowToastEvent({
            title: "Error",
            message: "FAILED",
            variant: "error",
            mode: "sticky"
        })
        this.dispatchEvent(errorEvent);
    }
}