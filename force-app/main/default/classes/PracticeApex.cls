public class PracticeApex 
{
	public static void Accounting()
    {
        Account a = new Account();
        if(a.Match_Billing_Address__c == True)
        {          
            a.ShippingPostalCode = a.BillingPostalCode;
        }
        
    }
}