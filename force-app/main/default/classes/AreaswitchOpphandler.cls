public class AreaswitchOpphandler 
{
	Public static void areaswitch(List<Opportunity> Opp)
    {
        Opportunity Opp1 = [Select id,Plans__c from Opportunity ];
        AreaSwitch__mdt[] ast = [select id,Invoiceable__c,MasterLabel from AreaSwitch__mdt where Invoiceable__c = true];
        for(AreaSwitch__mdt ase : ast)
        {
            if(Opp1.Plans__c == ase.MasterLabel)
            {
                Opp1.Discount__c = 1;
            }
        }
    }
}