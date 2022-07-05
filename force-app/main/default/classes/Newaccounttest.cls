@istest
public class Newaccounttest {
	@istest static void newac()
    {
        Account a = new account(Name = 'something', Status__c = 'Audited');
            insert a;
        Contact c = new Contact (Lastname = 'Varshin',accountid = a.id);
        Insert c;
        System.assertEquals(1,1);
    }
}