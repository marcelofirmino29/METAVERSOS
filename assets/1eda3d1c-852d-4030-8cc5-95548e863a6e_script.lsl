     
default
{
    state_entry()
    {
    }
    
    touch_start(integer times)
    {
        llLoadURL(llDetectedKey(0),"Creative Commons Attribution-Share Alike 3.0 Unported","http://creativecommons.org/licenses/by-sa/3.0/");
    }
}
