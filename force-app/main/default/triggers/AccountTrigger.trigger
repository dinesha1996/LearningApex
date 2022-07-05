trigger AccountTrigger on Account (before insert) 
{
	List<Account> accs = new List<Account>();
    for (Account a : Trigger.new)
    {
        if(a.phone=='8712347579')
        {
            System.debug('Debug logs');
        }
    }
}