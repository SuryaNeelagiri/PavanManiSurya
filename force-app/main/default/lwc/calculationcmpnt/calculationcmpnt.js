 import { LightningElement } from 'lwc';

export default class Calculationcmpnt extends LightningElement {
    firstnumber;
    secondnumber;
    result ;

    handlechange(event){
        const tempvar = event.target.label;
        if(tempvar === 'firstnumber'){
            this.firstnumber = event.target.value;
        }
        if(tempvar === 'secondnumber'){
            this.secondnumber =event.target.value;
        }
    }    

        handleClick(event){
            this.result = parseInt(this.firstnumber) + parseInt(this.secondnumber);
        }
        handlesubtraction(event){
            this.result = parseInt(this.firstnumber) - parseInt(this.secondnumber);
        }
        handlemultification(event){
            this.result = parseInt(this.firstnumber) * parseInt(this.secondnumber);
        }

    

}