public class ContactSearch 
{
	Public static List<Contact> searchForContacts(String lastname, String postalcode)
    {
        Contact[] con= [Select id,name from contact where Lastname =:lastname and MailingPostalCode =:postalcode ];
        return con;
       
    }
}