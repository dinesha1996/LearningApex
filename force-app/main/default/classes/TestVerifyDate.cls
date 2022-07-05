@istest
private class TestVerifyDate {
    @istest static void test_case1(){
        Date D= verifydate.CheckDates(date.parse('01/01/2022'), date.parse('01/05/2022'));
        system.assertequals(date.parse('01/05/2022'),D);
    }
     @istest static void test_case2(){
        Date D= verifydate.CheckDates(date.parse('01/01/2022'), date.parse('05/05/2022'));
        system.assertequals(date.parse('01/31/2022'),D);
    }
     @istest static void test_Date_case1(){
        Boolean flag= verifydate.DateWithin30Days(date.parse('01/01/2020'), date.parse('12/30/2019'));
        system.assertequals(false,flag);
     }
    @istest static void test_Date_case2(){
        Boolean flag= verifydate.DateWithin30Days(date.parse('01/01/2020'), date.parse('02/02/2019'));
        system.assertequals(false,flag);
     }
    @istest static void test_Date_case3(){
        Boolean flag= verifydate.DateWithin30Days(date.parse('01/01/2020'), date.parse('01/15/2020'));
        system.assertequals(true,flag);
     }
    @istest static void test_EndDate_case1(){
        Date returndate = verifydate.SetEndOfMonthDate(date.parse('01/01/2020'));
    }
}