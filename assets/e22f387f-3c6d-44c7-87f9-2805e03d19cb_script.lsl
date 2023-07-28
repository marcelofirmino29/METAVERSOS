string ampm;
integer seconds;
integer mins;
integer hours;

list bseconds;
list bmins;
list bhours;

list rl_Int2Bin ( integer num, integer it )
    {
        integer i = it;
        list binary = [];
        do
        {
                binary += !!( num & ( 1 << --i ) );
        } while ( i );
        return binary;
    } 
integer sHour=0;
       
    
default
{
    
    on_rez(integer start_param)
    {
        // Restarts the script every time the object is rezzed
        llResetScript(); 
    }
    
    state_entry()
    {
    llSetText(" ",<0,0,1>,1);
    seconds =  llFloor(llGetWallclock());
    mins = llFloor(seconds/60);
    seconds = seconds - (mins*60);
    hours = llFloor(mins/60);
    mins = mins - (hours*60);
    if(hours>12)hours=hours-12;        
    sHour=hours;
    
    llSetTimerEvent(1.0);  
    }
    

    timer()
    {
            seconds =  llFloor(llGetWallclock());
            mins = llFloor(seconds/60);
            seconds = seconds - (mins*60);
            hours = llFloor(mins/60);
            mins = mins - (hours*60);
            if(hours>12)hours=hours-12;        

        if (hours!=sHour)
        {
            sHour=hours;
            llPlaySound("watch_beep",0.5);
        }                
        

        bhours=rl_Int2Bin(hours,4);
        bmins=rl_Int2Bin(mins,6);
        bseconds=rl_Int2Bin(seconds,6);




        llMessageLinked(LINK_ALL_OTHERS,0,(string)bhours,"");

        llMessageLinked(LINK_ALL_OTHERS,0,(string)bmins,"");

        llMessageLinked(LINK_ALL_OTHERS,1,(string)bseconds,"");



    }
}