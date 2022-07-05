//Creates the number of contacts which are equal to the number which we will enter in the Number of Locations field on the Account Object.
trigger NumberofContact1 on Account (after insert)
{
    Numberofcontacts.numofcon(Trigger.new);
}