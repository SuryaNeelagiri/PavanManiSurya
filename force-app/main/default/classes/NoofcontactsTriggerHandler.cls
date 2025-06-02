public class NoofcontactsTriggerHandler {
    
    public static void noofcontactsmethod(list<contact> newcont){
      
        set<id>  accountids = new set<id>();
        if(!newcont.isempty()){
            for(contact con : newcont ){
                if(con.accountid != null){
                 accountids.add(con.accountid);   
                }
                
               list<account> listaccountstoupdate = [select id,(select id from contacts) from account where id in : accountids];
                list<account> updateacc = new list<account>();
                for(account ac :listaccountstoupdate ){
                    ac.No_of_contacts__c = ac.contacts.size();
                    updateacc.add(ac);
                }
                if(!updateacc.isempty()){
                    update updateacc;
                }
    }
        }
}
    public static void fordeleteop(list<contact> oldcont){
        
    }
}