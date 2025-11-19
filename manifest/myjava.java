trigger ContactTrigger onb Contact(before insert,before update){
    Set<String> emailSet = new Set<String>();
    for(Contact con : Trigger.new){
        if(con.email!=null){
            emailSet.add(con.email);
        }
    }
    Map<String,contact> maVar = new   Map<String,contact>();
    for(Contact cc : [select id from contact where email in :emailSet]){

        maVar.put(cc.email,cc)
    }
    for(Contact conVar Trigger.new){

    if(conVar.email!=null && maVar.containsKey(con.email)){
        con.email.adderror('dupliacte email found');
    }
    }
}