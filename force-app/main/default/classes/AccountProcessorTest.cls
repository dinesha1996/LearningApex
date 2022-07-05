@istest
public class AccountProcessorTest 
{
	@istest private static void testcount()
    {
        Account acc = new Account(Name = 'Newaccount');
        insert acc;
        
        contact con = new contact (lastname = 'Dinesh', accountid = acc.id);
        insert con;
        
        List<id> acco = new List<Id>();
        acco.add(acc.id);
        
        Test.startTest();
        AccountProcessor.countContacts(acco);
        Test.stopTest();
    }
}