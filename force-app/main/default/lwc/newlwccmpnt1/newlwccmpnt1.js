import { LightningElement, wire } from 'lwc';
import methodName from '@salesforce/apex/wireserviceapex.methodName';
export default class Newlwccmpnt1 extends LightningElement {
    returnvaluevar;
   @wire(methodName)
   returndata ({error, data}) {
       if (error) {
        console.error('Error:',error);
        }
         else if (data) {
           this.returnvaluevar = data;
            console.log(data);
       }
   }

}