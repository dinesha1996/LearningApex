trigger OldPractice on Account (before update,before insert) 
{
    Account anew = Trigger.new[0];
    Account aold = Trigger.old[0];
    
    System.debug('old  '+aold.name);
    System.debug('New  '+anew.name);
}