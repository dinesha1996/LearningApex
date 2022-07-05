trigger NewAreaswitch on Opportunity (before insert) 
{
            AreaswitchOpphandler.areaswitch(Trigger.new);
}