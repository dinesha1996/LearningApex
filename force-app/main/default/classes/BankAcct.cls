public class BankAcct {
	 public integer balance=0;
    public string acctName;
    //Declare a public string attribute named accttype
    public string accttype;
    //Declare a method, named makeDeposit, that accepts an integer named deposit
    //Within the method, add the deposit amount to the balance
    public void makeDeposit (integer deposit) {
    balance = balance + deposit;
        System.debug(balance);
    }
   
}