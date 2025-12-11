import { LightningElement,track} from 'lwc';

export default class Togglewebcomonent extends LightningElement {
    



   // @track isFeatureEnabled = false; // Initial state of the toggle

   /*handleToggleChange(event) {
      //  this.isFeatureEnabled = event.target.checked;
       // console.log('Feature Enabled:', this.isFeatureEnabled);
        You can add further logic here based on the toggle state
    }*/
     isshow=false;
        handleToggleChange(event){
        this.isshow=!this.isshow;

       }
}