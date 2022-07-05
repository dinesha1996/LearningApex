//Populate contact description with modified user name when user updates contact.
trigger Usercontactupdate on Contact (before update) 
{
	for(contact c : trigger.new)
    {
        c.Description = 'Contacts updated';
    }
}