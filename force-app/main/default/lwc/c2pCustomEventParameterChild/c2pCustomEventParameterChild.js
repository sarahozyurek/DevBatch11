import { LightningElement } from 'lwc';

export default class C2pCustomEventParameterChild extends LightningElement {
    progress;

    changeHandler(event){
        this.progress = event.target.value;
    }
    clickHandler(){
        const progressEvent = new CustomEvent('setprogress', {detail : this.progress});
        this.dispatchEvent(progressEvent);

    }
}