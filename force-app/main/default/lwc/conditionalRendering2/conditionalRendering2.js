import { LightningElement } from 'lwc';

export default class ConditionalRendering2 extends LightningElement {
    country;
    // showContent;
    // showContentTr;


    changeHandler(event){
        this.country = event.target.value;
    }
        get showContent(){
            if(this.country === 'USA'){
               return true;
            }else{
            return  false;
      
         }

     }
    }
