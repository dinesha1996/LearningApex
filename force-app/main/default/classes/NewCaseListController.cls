public class NewCaseListController {

    public list <case> getNewCases()
    {
        List<case> caseslist = Database.query('Select Id,CaseNumber,Status From case Where Status = \'New\'');
        return caseslist;
    }
}