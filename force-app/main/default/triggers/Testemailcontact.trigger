trigger Testemailcontact on Contact (after insert) 
{
	Testemailtemp.testemail(Trigger.new);
}