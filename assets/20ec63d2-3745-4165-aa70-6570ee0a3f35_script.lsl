//Movendo objetos usando a Função llMoveToTarget

default
{
    state_entry()
    {
        llSetStatus(STATUS_PHYSICS, TRUE);
 
    }
    touch_start(integer x)
    {
            llMoveToTarget(llGetPos()+<10,0,0>,1.0);
    }
} 