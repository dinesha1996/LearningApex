public class ClosedOpp 
{
	public static void Oppclosed(List<Opportunity> opps)
    {
       List<Task> litask = new List<Task>();
    for(opportunity o : opps )
    {
        if(o.stagename == 'Closed Won')
        {
            litask.add(new Task(Subject = 'Follow Up Test Task'));
        }
    }
    if(litask.size()>0)
    {
        insert litask;
    }
    }
}