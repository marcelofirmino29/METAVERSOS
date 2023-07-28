
// Sound Prim Script - Loop
//
// Repeatly plays the sound in inventory if there is
// ONE and ONLY ONE sound.  Silent otherwise.
//
// Set this between 0.0 and 1.0
float LOUDNESS = 0.5;
//
////////////////////////////////////////////////
Noisy()
{
    if ( llGetInventoryNumber(INVENTORY_SOUND) == 1 )
    {
        string soundname = llGetInventoryName(INVENTORY_SOUND, 0);
        if ( soundname != "" )
        {
            llLoopSound( soundname, LOUDNESS );
        }
    }
    else
    {
        llStopSound();
    }
}
////////////////////////////////////////////////
default
{

state_entry()
{
    llStopSound();
    Noisy();
}

changed(integer change)
{
    if (change & CHANGED_INVENTORY)
    {
    llStopSound();
        Noisy();
    }
}

}
