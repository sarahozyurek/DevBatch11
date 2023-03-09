import { deleteRecord } from 'lightning/uiRecordApi';
import { api, LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { NavigationMixin } from 'lightning/navigation';
​
export default class ContactDelete extends NavigationMixin(LightningElement) {
​
    @api recordId;
    @api objectApiName;
​
    deleteHandler(){
        deleteRecord(this.recordId)
            .then(() => {
                this.dispatchEvent(new ShowToastEvent({
                    title: 'Success',
                    message: 'Record deleted',
                    variant: 'success'
                }));
               this[NavigationMixin.Navigate] ({
                    type : 'standard__objectPage',
                    attributes: {
                        objectApiName: this.objectApiName,
                        actionName: 'home'
                    }
               })
            })
            .catch(error => {
                this.dispatchEvent(new ShowToastEvent({
                    title: 'Error',
                    message: error.body.message,
                    variant: 'error'
                }));
            })
    }
}