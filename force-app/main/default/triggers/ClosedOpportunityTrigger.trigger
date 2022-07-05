trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) 
{
    ClosedOpp.Oppclosed(Trigger.new);
}