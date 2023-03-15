import searchName from '@salesforce/apex/leadController.searchName';
import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';
import LEAD_OBJECT from '@salesforce/schema/Lead';
import INDUSTRY_FIELD from '@salesforce/schema/Lead.Industry';

export default class LeadBoxScreen extends LightningElement {
    isName = false;
    isIndustry = false;
    industryOptions  = [];
    leads; 
    error;

    @wire(getObjectInfo, {objectApiName : LEAD_OBJECT})
      leadInfo;

    @wire(getPicklistValues, {fieldApiName :INDUSTRY_FIELD, recordTypeId : '$leadInfo.data.defaultRecordTypeId'})
    picklistHandler({data, error}){
        if (data) {
            this.industryOptions = data.values;           
        } 
        if (error) {
            console.error(error);           
        }
    }

    handleClick(event){
        if (event.target.label === "Search by Name") {
            this.isName = !this.isName;
            this.leads = undefined;      
            this.isIndustry = false;    

        } else {
            this.isIndustry = !this.isIndustry;
            this.leads = undefined;    
            this.isName = false;

        }      
    }

    changeHandler(event){
        const selectedName = event.target.value;
        const selectedIndustry = event.target.value;
        if(event.target.label === 'Enter Search Word'){
            searchName({word : selectedName})
            .then(result => {
                if (result.length > 0 && selectedName.length >1 ) {
                     this.leads = result;
                     console.log('leads => ', this.leads); 
                     this.error = undefined;         
                } else {
                  this.error = "isleminiz daha gerceklesmedi";
                  this.leads = undefined;
  
                }
            })
      } else {
        searchIndustry({industry:selectedIndustry})
        .then(result =>{
            if(result.length>0){
                this.leads = result;
                this.error = undefined;
            } else {
                this.error = 'Listede aradigniz record bulunamadi!'
            }
        })
        .catch(error =>{
            this.error = error.body.message;
        })
      }

        }

       
}