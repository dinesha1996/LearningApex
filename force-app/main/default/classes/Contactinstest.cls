@istest
public class Contactinstest {
	@istest static void contactinsupdate()
    {
        Contact c = new contact(lastName = 'Invalidname');
            insert c;
        System.assertEquals('The Last Name Invalidname is not allowed for DML',c.Lastname);
    }
}