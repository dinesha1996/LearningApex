@isTest
private class Numberofcontactstest 
{
	@istest static void numofcontacts()
    {
        Account a = new Account(Name = 'something1', NumberofLocations__c = 4);
        Insert a;
        Contact c = new Contact (LastName = 'Contacts', Accountid = a.id);
        Insert c;
        List<Contact> con = [select id from contact where accountid =: a.id];
        System.assertEquals(a.NumberofLocations__c,con.size()-1);
    }
}