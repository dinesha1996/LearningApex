trigger PracticeTrigger on Account (after insert) 
{
    for(Account a:Trigger.old)
    {
        System.debug('count of records'+a);
        a.description='Dinesh';
    }
}