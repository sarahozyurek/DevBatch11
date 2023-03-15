import getMatchingContact from '@salesforce/apex/ContactCtrl.getMatchingContact';
import { LightningElement } from 'lwc';

export default class ImperativeApex2 extends LightningElement {

    contacts;
    error;

    changeHandler(event){
        const searchWord = event.target.value;

        getMatchingContact ({searchKey : searchWord})
            .then(result => {
                if(result.length > 0){
                    this.contacts = result;
                    this.error = undefined;
                } else{
                    this.contacts = undefined;
                    this.error = "Hey, System could not find any matching record. Try again!"
                } 
            })
            .catch(error => {
                this.contacts = undefined;
                this.error = error.body.message;
            })
    }
}