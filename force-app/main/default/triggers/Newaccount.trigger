trigger Newaccount on Account (after insert) {
List<Contact> con = new List<Contact>();
    for(Account a : Trigger.new)
    {
        If(Trigger.isinsert && a.status__c == 'Audited')
        {
            Contact c = new Contact(LastName = 'Varsha', Accountid=a.id);
            con.add(c);
        }
    }
    insert con;
}