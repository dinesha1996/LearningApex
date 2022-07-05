public class AccountUtility 
{
	public static void viewAnnualRevenue()
    {
        List<Account> accountsList = [select Name,AnnualRevenue from Account];
        for (Account acctRev : accountsList)
        {
           String st= acctRev.name +':'+acctRev.AnnualRevenue;
            System.debug(st);
        }
    }
}