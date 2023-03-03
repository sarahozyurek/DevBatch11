import { LightningElement } from 'lwc';

export default class Addition extends LightningElement {
    num1 = 0;
    num2 = 0;
    result = 0;

    changeHandler(event){

        if(event.target.label == "First Number"){
            this.num1 = event.target.value;
        }
        else {
            this.num2 = event.target.value;
        }
        
        //1st way
        this.result = Number(this.num1)+  Number(this.num2) 
    }

}