
import Color from '@salesforce/schema/ColorDefinition.Color';
import { LightningElement } from 'lwc';

export default class QuerySelectorDemo extends LightningElement {
    fruits = ["Banana", "Pineapple", "Orange", "Mango", "Apple"];

clickHandler(){
    const h1elem = this.template.querySelector('h1');
    console.log(h1elem.innerText);
   h1elem.style.border = "3px solid purple";
   h1elem.style.fontSize= "26";
   h1elem.style.fontWeight= "bold";

   h1elem.style.textAlign = 'center';
   h1elem.style.color = "#5B1E76";
   h1elem.style.backgroundColor = "#D4BFDD";

   //p - query selector 
   const pelem = this.template.querySelector('p');
   console.log(pelem.innerText);
   pelem.style.color = "#5B1977";
   pelem.style.fontFamily = "Verdana, Geneva, Tahoma, sans-serif";
   pelem.style.fontStyle = "italic";
   pelem.style.backgroundColor = "#F1E7F5";
   pelem.style.border = "3px solid #D4BFDD";
   pelem.style.textAlign = 'center';

//fruits
const divElem = this.template.querySelectorAll(".child");
divElem.forEach(item=> {
    console.log(item.innerText);
    item.style.color = "purple";
item.style.fontFamily = "Verdana, Geneva, Tahoma, sans-serif";
item.style.fontStyle = "italic";
item.style.backgroundColor = "#E6BFF7";
item.style.border = "2px solid purple";
item.style.textAlign = 'center';

})
//
const buttonElem = this.template.querySelector("lightning-button");
buttonElem.label = "Dont click again!";
buttonElem.variant = "destructive";
}
}