trigger HelloWorldTrigger on Account (before update,before insert) 
{
     List<Account> acc = new List<Account>([select id from account where id in : Trigger.old]);
     System.debug(acc);
}