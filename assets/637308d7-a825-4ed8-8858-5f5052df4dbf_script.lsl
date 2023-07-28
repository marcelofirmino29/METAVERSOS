float te = 10.0;

default
{
    state_entry()
    {
       llSetText ("ÁGUA\n(H20)",<0,1,1>,1);
        llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES, <0.0, 1.0, 1.0>,1.0]);

    }
}