default
{

state_entry()
    {
        llSay(0,"started");
        vector rot=<0.0, 90.0, 0.0>*DEG_TO_RAD;
        rotation finalrot=llEuler2Rot(rot);
        
        //llSay(0,""+(string)rot);
        llSitTarget(<0.7, 0.0, -0.70>,finalrot);
    }

on_rez(integer start_param)
    {
        llSay(0,"started");
        vector rot=<0.0, 90.0, 0.0>*DEG_TO_RAD;
        rotation finalrot=llEuler2Rot(rot);
        
        //llSay(0,""+(string)rot);
        llSitTarget(<0.7, 0.0, -0.70>,finalrot);
    }

    changed(integer change) {
        if (change & CHANGED_LINK) { 
            key av = llAvatarOnSitTarget();
                if (av == NULL_KEY){
                llSay(0, "Até mais...");}
                if (av != NULL_KEY) {
                llSay(0, "Oi " + llKey2Name(av) + ", descansar que ninguém é de ferro..");
            }
        }

 }
} 