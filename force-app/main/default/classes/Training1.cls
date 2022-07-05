public class Training1 
{
	public static void train1()
    {
        List<Invoice_Product__c> acc= new List<Invoice_Product__c>(); 
        Invoice_Product__c a1= new Invoice_Product__c(Product_Name__c='Watch', Quantity__c =1, Unit_Price__c=100);
        acc.add(a1);
        System.debug(a1);
    }
}