@isTest
private class CelTest 
{
	@isTest static void cels()
    {
        Integer c= celsiusclass.celsiusf(4);
        System.assertequals(7,c);
    }
    @isTest static void cels1()
    {
        Integer c1= celsiusclass.celsiusf(10);
        System.assertequals(19,c1);
    }
}