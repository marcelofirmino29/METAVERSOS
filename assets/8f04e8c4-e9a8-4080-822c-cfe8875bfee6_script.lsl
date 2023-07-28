integer n;
default
{
    on_rez(integer start_param)
    {
        // Restarts the script every time the object is rezzed
        llResetScript(); 
    }
    
    state_entry()
    {
    }

    link_message(integer a, integer b, string c, key d)
    {
        if(llStringLength(c)==6)
        {
            if(b==1)
            {
                if(llGetSubString(c, 4, 4)=="1")
                {
                    llSetColor(<1.0, 1.0, 0.0>, ALL_SIDES); 
                }
                else
                {
                    llSetColor(<0.0, 0.0, 0.0>, ALL_SIDES);  
                }
            }
        }
    }    
}