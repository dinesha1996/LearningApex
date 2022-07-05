trigger PracticeTrigger2 on Account (after update,after insert) 
{
    List<Account> accs =[SELECT Id,Name FROM Account
                     WHERE Id IN :Trigger.New AND
                     Id NOT IN (SELECT AccountId FROM Opportunity)];
    List<Opportunity> opps = new List<Opportunity>();
    for(account a : accs)
    {
        opps.add(new opportunity(Name='Funny',stagename='prospecting',CloseDate=System.today().addMonths(1),accountid = a.id));        
    }
    if(opps.size()>0)
    {
        Insert opps;
    }
}