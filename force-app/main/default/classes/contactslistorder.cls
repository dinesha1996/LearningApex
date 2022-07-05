public class contactslistorder {
  Private String Sortorder = 'lastname';
    public List <contact> getcontacts()
    {
        List<Contact> results = Database.query('SELECT Id, FirstName, LastName, Title, Email ' +
        'FROM Contact ' +
        'ORDER BY ' + 'sortorder' + ' DESC ' +
        'LIMIT 10');
        return results;
    }
    public void sortbylastname()
    {
        this.sortorder='Lastname';
    }
    /*public void sortbyfirstname()
    {
        this.sortorder='firstname';
    }*/
    
}