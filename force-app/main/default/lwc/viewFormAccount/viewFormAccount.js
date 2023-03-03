import { api, LightningElement } from 'lwc';

import ACCOUNT_OBJECT  from '@salesforce/schema/Account';
import NAME_FIELDS from '@salesforce/schema/Account.Name';
import TYPE_FIELDS from '@salesforce/schema/Account.Type';
import INDUSTRY_FIELDS from '@salesforce/schema/Account.Industry';
import RATING from '@salesforce/schema/Account.Rating';
import ANNUALREVENUE from '@salesforce/schema/Account.AnnualRevenue';



export default class RecordFormAccount extends LightningElement {

    objectName = ACCOUNT_OBJECT;
    @api recordId = "001Do0000091AsjIAE"; 

    fields = { 
        name : NAME_FIELDS, 
        revenue: ANNUALREVENUE,
        type:  TYPE_FIELDS,
        industry: INDUSTRY_FIELDS,
        rating: RATING 
    };


    
   
}