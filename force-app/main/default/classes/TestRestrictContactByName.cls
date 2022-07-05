@istest
public class TestRestrictContactByName {
    
	@istest static void Testrestrict_case1()
    {
        contact c = new contact();
        c.Lastname = 'Invalidname';
        
        Test.startTest();
        Database.saveresult result = Database.insert(c,false);
        Test.stoptest();
        
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size()>0);
        System.assertEquals('The Last Name "Invalidname" is not allowed for DML', result.geterrors()[0].getmessage());
    }
}