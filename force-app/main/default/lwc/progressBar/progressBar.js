import { api, LightningElement } from 'lwc';

export default class ProgressBar extends LightningElement {
size;
value;
@api progressHandler(sizeParam, valueParam){
this.size = sizeParam;
this.value= valueParam;

}


}