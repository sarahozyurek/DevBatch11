import { LightningElement } from 'lwc';

export default class TwoWayDataBinding extends LightningElement {
    fullName = "Sarah";
    role;
    roleOptions =  [
        { label: 'SF Admin', value: 'Admin' },
        { label: 'SF Developer', value: 'Developer' },
        { label: 'SF Arct', value: 'Architect' },
    ];

    changeHandler(event){
      if( event.target.label === "Enter your name"){
      this.fullName = event.target.value;
    } else {
      this.role = event.target.value;
    }
  }

    // changeHandlerCombobox(event){
    //   this.role = event.target.value;
    // }
}