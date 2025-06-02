@isTest
public class MyIterableTest {
    @isTest
    public static void testIterableForLoop(){
        
        List<String> strings = new List<String> {'Hello','World'};
        MyIterable myIterable=new  MyIterable(strings);
        for(string str:myIterable){
            system.debug(str);
        }
        
    }
    
}