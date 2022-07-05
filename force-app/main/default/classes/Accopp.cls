public class Accopp 
{
	public static void accoppupdate(List<Account> accs, Map<id,account> oldmapaccs)
    {
        List<Contact> con = new List<Contact>();
        for(Account a: accs)
        {
            if(a.Status__c == 'Account' && oldmapaccs.get(a.id).status__c == 'Audited')
            {
                con.add(new Contact(FirstName = 'Dinesh', LastName = 'Avulapati'));
                System.debug('old  '+a.Status__C);
   			    System.debug('New  '+a.Status__C);
                System.debug('New Old');
            }
        }
        insert con;
    }
}