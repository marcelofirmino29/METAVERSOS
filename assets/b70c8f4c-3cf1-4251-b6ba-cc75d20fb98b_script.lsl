float gap = 15.0;

default
{

   state_entry()
    {
        // Activate the timer listener every 2 seconds
        llSetTimerEvent(gap);
    }
   
   timer()
    {
    vector wind = llWind(<0,0,0>);
    string speed = (string)llVecMag(wind);
    float speed2 = (float)speed;
    string speed3 = (string)speed2;        
//    llSay(0,"Wind speed string: " + speed);
//    llSay(0,"Wind speed float: " + speed3);
    llTargetOmega(<speed2,0,0>, speed2, 1);    
    }
}
