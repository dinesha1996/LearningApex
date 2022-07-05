trigger PracticeTrigger1 on Account (after insert) 
{
	Contact[] conlist = new List<Contact>();
    
    for(Account a : Trigger.new)
    {
        if(a.name == 'Test Trigger4')
        {
           contact con = new contact();
           con.LastName = 'Harish';
           con.AccountId = a.id;
           conlist.add(con);
        }
    }
    insert conlist;
}