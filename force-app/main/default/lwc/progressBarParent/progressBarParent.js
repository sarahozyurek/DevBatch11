import { LightningElement } from 'lwc';

export default class ProgressBarParent extends LightningElement {
    progressSize;
    progressValue;

    get sizeOptions(){
        return [
            {label: "Small", value: "small"},
            {label: "Medium", value: "medium"},
            {label: "Large", value: "large"}
        ]
    }
    changeHandler(event){
        if(event.target.name === "Size"){
            this.progressSize = event.target.value;
        } else {
            this.progressValue = event.target.value;
        }
        
        let size= this.progressSize;
        let value = this.progressValue;

this.template.querySelector('c-progress-bar').progressHandler(size,value);


    }
}