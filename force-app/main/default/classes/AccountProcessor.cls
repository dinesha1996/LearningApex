public class AccountProcessor 
{
    @future 
	public static void countContacts(List<ID> Accountids)
    {
        List<Account> accupdate = new List<Account>();
        List<Account> acc = [select id,name, (select id from contacts) from account where id in :accountids];
        for(Account ac :acc)
        {
            List<contact> conlist = ac.contacts;
            ac.number_of_contacts__c = conlist.size();
            accupdate.add(ac);
        }
        update accupdate;
    }
}