import { LightningElement, track } from 'lwc';

export default class TrackProperty extends LightningElement {
   @track
   location = {
        city : "Dallas",
        country : "USA"
    };
    changeHandler(event){
        this.location.city = event.target.value;


    }


}