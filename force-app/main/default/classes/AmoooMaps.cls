public class AmoooMaps {
    
    public static void dosomething(){
        
        set<Id> accountIdset = new set<Id>();
        for(Contact con: [Select id, accountId from contact where accountId != null]){
            accountIdset.add(con.AccountId);
        }
        Map<Id, Account> accountsMap = new Map<Id, Account>([Select id, name from account where Id IN: accountIdset]);
        system.debug('Account map::'+accountsMap);
        system.debug('Account map::'+accountsMap.size());
        system.debug('Account map::'+accountsMap.keyset());
        system.debug('Account map::'+accountsMap.values());
        
    }
    
    public static void oneTomanyMaps(){
        // it is retrive the contacts date//        
        List<contact> conslist = [Select Id, AccountId, LastName From contact where accountId != null];
        Map<Id, List<Contact>> accountIdWithlistofContactsMap = new Map<Id, List<Contact>>();        
        for(contact con: conslist){            
            if(accountIdWithlistofContactsMap.containskey(con.AccountId)){
                List<contact> existingconlist = accountIdWithlistofContactsMap.get(con.AccountId);
                existingconlist.add(con);
                accountIdWithlistofContactsMap.put(con.AccountId, existingconlist);
            }else{
                List<contact> conlist = new List<contact>();
                conlist.add(con);
                accountIdWithlistofContactsMap.put(con.AccountId, conlist);
            }
        }
        
    }
    
    public static void oneTomanyMaps2(){
        
        
        Map<Id, List<Contact>> accountIdWithlistofContactsMap = new Map<Id, List<Contact>>();        
        for(contact con: [Select Id, AccountId, LastName From contact where accountId != null]){            
            if(accountIdWithlistofContactsMap.containskey(con.AccountId)){
                accountIdWithlistofContactsMap.get(con.AccountId).add(con);        
            }else{                
                accountIdWithlistofContactsMap.put(con.AccountId, new List<contact>{con});
            }
        }
        
    }
    
    
}