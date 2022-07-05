trigger casecreated on Case (before insert) {
for(Case c : Trigger.new)
{
    if(Trigger.isinsert && c.origin == 'Email')
    {
        c.status = 'New';
        c.Priority = 'Medium';
    }
}
}