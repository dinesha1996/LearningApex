public class StringArrayTest 
{
	public static List<String> generateStringArray(Integer n)
    {
        List<String> my = new List<String>{};
        for(integer i=0;i<n;i++)
        {
            my.add('Test' +i);
            System.debug(my[i]);
        }
        return my;
    }
    
}