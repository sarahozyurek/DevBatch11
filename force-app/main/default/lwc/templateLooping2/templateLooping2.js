
import { LightningElement } from 'lwc';

export default class TemplateLooping2 extends LightningElement {
    accounts = [
        {
            id: "1",
            Name:  "SoftInnovas",
            Industry:   "Education",
            Rating : "Hot"
        },

        {
            id: "2",
            Name:  "Amazon",
            Industry:   "Business",
            Rating : "Warm"
        },
        {
            id: "2",
            Name:  "Chase ",
            Industry:   "Banking",
            Rating : "Cold"
        }
    ]
}