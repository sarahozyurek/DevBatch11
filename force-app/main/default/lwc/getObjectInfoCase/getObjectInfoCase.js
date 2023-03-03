import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import CASE_OBJECT from '@salesforce/schema/Case';

export default class GetObjectInfoCase extends LightningElement {
    caseDefaultRtId;
    caseEnquiryRtId;

    @wire (getObjectInfo, {objectApiName : CASE_OBJECT})
    infoHandler({data, error}){

        if(data){
            console.log('DATA ==> ' , data);
            this.caseDefaultRtId = data.defaultRecordTypeId;

            const rtids = data.recordTypeInfos;

            this.caseEnquiryRtId = Object.keys(rtids).find(rtid => rtids[rtid].name === "Enquiry");
        }
    }
}