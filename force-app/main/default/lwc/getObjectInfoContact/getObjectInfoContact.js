import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import CASE_OBJECT  from '@salesforce/schema/Contact'


export default class GetObjectInfoAccount extends LightningElement {

   caseDefaultRtfId;
   caseEnquiryRtId;

    //caseEmpId;
    @wire(getObjectInfo, { objectApiName:CASE_OBJECT })
    infoHandler({ data, error }) {

        if (data) {
            console.log('DATA ==> ', data);
            this.caseDefaultRtfId = data.defaultRecordTypeId;
            const rtIds = data.recordTypeInfos;
            this.caseDefaultRtfId = Object.keys(rtIds).find(rtid=> rtIds[rtid].name === "Enquiry" );
        }

        if (error) {
            console.log(error);
        }

    }
}