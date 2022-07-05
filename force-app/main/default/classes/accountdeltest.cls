@istest
public class accountdeltest {
	@istest static void accdeltest()
    {
        account a = new account(Name='lloyd');
         insert a;
        Opportunity opp = new Opportunity (Name=a.Name +'Opp',Stagename = 'Prospecting',CloseDate=system.today(),Accountid = a.id);
        // insert opp;
        Test.startTest();
            Database.DeleteResult del = Database.Delete(a,false);
        Test.stopTest();
         System.assertEquals('Cannot delete account with related opportunities.',
                             del.getErrors()[0].getMessage());
    }
}