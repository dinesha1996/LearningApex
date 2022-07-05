public class Numberofcontacts 
{
	public static void numofcon(List<Account> acc)
    {
        List<Contact> con =  new List<Contact>();
        for(Account a : acc)
		{
        	for(Integer i=0;i<a.NumberofLocations__c;i++)
        	{
            Contact c = new contact (LastName= 'Contact'+i, Accountid = a.id);
            con.add(c);
       	 	}
        }
        insert con;  
	}
}