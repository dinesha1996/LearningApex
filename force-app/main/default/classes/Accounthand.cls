public class Accounthand {

	public static void insertAccount()
    {
        Integer n = 1;
        List <Account> addAccounts = new list<Account>();
        While (n <= 1)
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