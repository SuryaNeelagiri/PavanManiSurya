import { LightningElement } from 'lwc';

export default class Welcomescreen1 extends LightningElement {
     welcome = 'you got a wlecome message';
     handleChange(event){
         this.welcome = event.target.value;
         console.log('welcome message changed to: ' + this.welcome);
     }

}         