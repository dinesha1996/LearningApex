public class Testemailtemp 
{  
	Public static void testemail(List<contact> con)   
    {
    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
    List<String> ccAddresses = new List<String>();
    ccAddresses.add('dineshavulapati508@gmail.com');
    for(contact mem:con)
    {      
        mail.setTemplateId('00X2w000000MpFr'); //Id of the Email Template
        mail.setCcAddresses(ccAddresses);
        mail.setTargetObjectId('0032w00000kFqpR'); // Id of Contact or Lead or User
        mail.setSaveAsActivity(false);
        mail.setWhatId(mem.Id); //Optional field to ensure proper merging of objects in template
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }
        
    }
    
}