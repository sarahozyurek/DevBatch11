import { LightningElement } from 'lwc';

export default class C2pCustomEventChild extends LightningElement {

handleSubtract(){
    //create a custom event =subtraction
const subtractEvent = new CustomEvent("subtraction");
this.dispatchEvent(subtractEvent);
}

handleAdd(){
const addEvent = new CustomEvent("addition");
this.dispatchEvent(addEvent);

}
}