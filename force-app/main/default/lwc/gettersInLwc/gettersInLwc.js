import { LightningElement } from 'lwc';

export default class GettersInLwc extends LightningElement {

    fruits = ["Apple", "Banana", "Grapes", "Orange", "Pineapple"];

    number = 10;

    number2= 20;
   

    get firstFruit(){
        return this.fruits[0];
    }

     get sum(){
       let result = this.number*this.number2;
       return result;
    }

}