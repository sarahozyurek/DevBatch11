import { LightningElement } from 'lwc';

export default class C2pCustomEventParametreParent extends LightningElement {
    progressValue;
    flag = false;

    progressHandle(event){
        console.log(event);
        if(event.detail >=0 && event.detail <=100){
            this.progressValue = event.detail;
            this.flag = false;
        } else {
             this.flag = true;
        }
    
    }
}