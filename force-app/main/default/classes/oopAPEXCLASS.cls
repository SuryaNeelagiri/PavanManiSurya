public class oopAPEXCLASS {
    Public void oopmethod(){
        Map<ID,Opportunity> aoMap = new Map<ID,Opportunity>();

        for(Opportunity opp:[select ID,Name,Amount from Opportunity]){
  
            aoMap.put(opp.id,opp);
        }
 
    system.debug(aomap.keyset());
    system.debug(aomap.values());
    }

}