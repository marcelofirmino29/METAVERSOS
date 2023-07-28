default
{
    state_entry()
    {
        llSay(0,"started");
        vector rot=<180.0, 0.0, 90.0>*DEG_TO_RAD;
        rotation finalrot=llEuler2Rot(rot);
        
        //llSay(0,""+(string)rot);
        llSitTarget(<-0.0, -0.50, -1.1>,finalrot);
    }
}