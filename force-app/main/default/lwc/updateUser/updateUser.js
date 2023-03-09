import COMPANYNAME_FIELD from '@salesforce/schema/User.CompanyName';
import DEPARTMENT_FIELD from '@salesforce/schema/User.Department';
import ID_FIELD from '@salesforce/schema/User.Id';
import CURRENTUSERID from '@salesforce/user/Id';
import { updateRecord } from 'lightning/uiRecordApi';
import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { NavigationMixin } from 'lightning/navigation';
export default class UpdateUser extends NavigationMixin(LightningElement) {
    companyName;
    department;
    userId = CURRENTUSERID; 

    handleChange(event){
        if (event.target.label === "Company Name") {
            this.companyName = event.target.value;
        }
        if (event.target.label === "Department") {
            this.department = event.target.value;
        }
    }
    updateUser(){
        const fields = {};
        fields[ID_FIELD.fieldApiName] = this.userId;
        fields[COMPANYNAME_FIELD.fieldApiName] = this.companyName;
        fields[DEPARTMENT_FIELD.fieldApiName] = this.department;
        
        const userRecordInput = {fields};
        updateRecord(userRecordInput)
            .then(()=> {
                this.dispatchEvent(new ShowToastEvent({
                    title: 'Success',
                    message: 'User: ' + this.userId + ' has been updated',
                    variant: 'success'
                }));
                this[NavigationMixin.Navigate]({
                    type : 'standard__objectPage',
                    attributes: {
                        recorId : '0057S000001d6rf',
                        objectApiName : 'User',
                        actionName :'home'
                    },
                });
            })
            .catch(error => {
                this.dispatchEvent(new ShowToastEvent({
                    title: 'Error updating record',
                    message: error.body.message,
                    variant: 'error'
                }));
            })
    }
}