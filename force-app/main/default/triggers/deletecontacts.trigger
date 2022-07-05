//Throw an error whenever the user try to delete the contact which is not associated to account
trigger deletecontacts on Contact (before delete) 
{
	for(contact c : Trigger.old)
    {
        if(c.accountid == null)
        {
            c.adderror('Not allowed');
        }
    }
}