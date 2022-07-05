//How to write a trigger to inject the above 2 scenarios in one trigger
trigger Usercontactupdateandinsert on Contact (before insert,before update) 
{
	for(Contact c : Trigger.new)
    {
        If(Trigger.isinsert)
        {
            c.description = 'Contacts created';
        }
        if(Trigger.isupdate)
        {
            C.Description = 'Contacts updated';
        }
    }
}