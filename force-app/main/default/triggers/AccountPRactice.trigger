trigger AccountPRactice on Account (after insert,after update) 
{
	Accopp.accoppupdate(Trigger.new,Trigger.oldmap);
}