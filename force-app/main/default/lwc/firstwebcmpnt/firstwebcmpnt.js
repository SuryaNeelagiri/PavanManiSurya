import { LightningElement } from 'lwc';

export default class Firstwebcmpnt extends LightningElement {

    displayvar = 'skala';
    objvar = 'salesforce';
    handlevent(event){
        this.displayvar =event.target.value;
       // var tempvar = event.target.value;
        //this.displayvar = tempvar;

    }
    handleventtwo(event){
        this.objvar = event.target.value;
        var tempvar = event.target.value;
        this.objvar = tempvar;
        console.log(tempvar)
    }
    
    
}