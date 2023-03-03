import { LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {
firstName;
lastName;

firstNameHandler(event){
this.firstName = event.target.value;
}

lastNameHandler(event){
    this.lastName = event.target.value;
}
get fullName(){
    return '$(this.firstName) $(this.lastName)';
}
}