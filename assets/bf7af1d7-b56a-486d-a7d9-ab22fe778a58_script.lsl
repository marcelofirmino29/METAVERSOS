float color = 1.0;

default
{
    
    state_entry()
    {
        llSetTimerEvent(1.0);
        llSetPrimitiveParams([PRIM_FULLBRIGHT,ALL_SIDES,TRUE ]);
        
        }
    
    timer()
    {
        if (color == 0.5) color = 1.0;
        else if (color == 1.0) color = 0.5;
        llSetPrimitiveParams([ PRIM_COLOR, ALL_SIDES, <color, 0, 0>, 1.0,PRIM_POINT_LIGHT, TRUE, <color, 0, 0>, 1.0, 0.0, 0.0 ]);
    }
}
 