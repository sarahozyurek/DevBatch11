import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    fullName = "Sarah";

    age = 18;
    location = {
        city : "Dallas",
        country: "United States"
    };

sum(a,b){
return  a+b;
}

}