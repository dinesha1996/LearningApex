public class AccountHandler 
{
	public static void insertAccount(Integer value)
    {
        Integer n = 1;
        List <Account> addAccounts = new list<Account>();
        While (n <= value)
        {     
            Account acc = new Account();
            acc.Name= 'Acme Inc'+ n;
            acc.AccountNumber = 'A000'+ n;
            addAccounts.add(acc);
            n++;
        }
        insert addAccounts;
    }
    
}