//mettere il testo fra virgolette alla riga 10 


//llSetLinkPrimitiveParamsFast(1,[PRIM_TYPE, PRIM_TYPE_BOX, 0, <0.0, 1.0, 0.0>, 0.0, <0.0, 0.0, 0.0>, <1.0, 1.0, 0.0>, <0.0, 0.0, 0.0>, PRIM_SIZE, <2, 2, 2>, PRIM_ROT_LOCAL,llEuler2Rot(<0,0,0>*DEG_TO_RAD)]);
float te = 10.0;

default
{
    state_entry()
    {
       llSetText ("Modelo de \nRutherford",<0,0,1>,1);
        llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES, <1.0, 0.0, 0.0>,1.0]);

    }
} 