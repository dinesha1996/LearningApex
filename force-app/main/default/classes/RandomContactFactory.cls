public class RandomContactFactory 
{
	public static List<Contact> generateRandomContacts(Integer c, string lastname)
    {
        List<Contact> con = new List<Contact>();
        for(integer i=0;i<c;i++)
        {
            contact c1= new contact(Firstname = 'Dinesh'+i, Lastname = lastname);
            con.add(c1);
        }
        return con;
    }
}