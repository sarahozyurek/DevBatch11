import getMatchingOpps from '@salesforce/apex/OpportunityCtrl.getMatchingOpps';
import { LightningElement, wire } from 'lwc';

const COLUMNS = [
    { label: 'Opp Name', fieldName: 'Name', type:'text' },
    { label: 'Type', fieldName: 'Type', type: 'text' },
    { label: 'Stage Name', fieldName: 'StageName', type: 'text' },
    { label: 'Amount', fieldName: 'Amount', type: 'currency' }
];

export default class WiredApex2 extends LightningElement {

    stageName = "Closed Won";
    columns = COLUMNS;

    @wire (getMatchingOpps, {stage : '$stageName'})
    opps;
}