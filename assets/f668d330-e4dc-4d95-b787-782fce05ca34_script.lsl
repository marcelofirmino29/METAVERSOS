//Loop do while Bola de Tênis 1
default
{
    state_entry()
    {
        llSetStatus( STATUS_PHYSICS, TRUE);
    }
    touch_start(integer total_number)
    {
        integer cont = 0;
        do
        {

            llApplyImpulse(<0.0, 0.0,5.0> * llGetMass(), FALSE);
            llSleep(0.5);

        }
        while((cont ++) < 5000);
    }
}