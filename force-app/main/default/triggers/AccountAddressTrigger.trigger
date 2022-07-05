trigger AccountAddressTrigger on Account (before insert,before update) 
{
	for(Account a : Trigger.new)
    {
        PracticeApex.Accounting();
    }
}