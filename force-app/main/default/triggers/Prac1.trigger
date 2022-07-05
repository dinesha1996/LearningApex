trigger Prac1 on Account (after update) 
{
        for (Account a : Trigger.old)
        {
            a.phone = '8712347579';
        }
}