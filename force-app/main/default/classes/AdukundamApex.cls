public class AdukundamApex {
    
    public class baburaocls{
        public string personNameVar;
        public Account acntVar;
    }
    
    public static baburaocls dosomething(){
        string personName = 'sri';
         Account acnt  = [select id, Name From Account Limit 1];



         
        
        baburaocls wrp = new baburaocls();
        wrp.personNameVar = personName;
        wrp.acntVar = acnt;
        
       
        return wrp;
    }
    
    
    

}