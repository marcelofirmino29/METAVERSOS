// Windmill Sounds Script
// Created Nov 12, 2011 by Nebadon Izumi
// Creative Commons Attribution-ShareAlike 3.0 Unported
// http://creativecommons.org/licenses/by-sa/3.0/

float gap = 5.0; // Ajust timer how often it plays.
float volume = 0.7; // Adjust the volume 1.0 = Loud 0.0 = Silent

sound()
    {
    vector wind = llWind(<0,0,0>);
    string speed = (string)llVecMag(wind);
    float speed2 = (float)speed;
    if (speed2 >= 0.4 && speed2 <= 0.5)
        { 
        llLoopSound("windmill_01", volume);        
        }
    if (speed2 >= 0.601 && speed2 <= 0.7)
        { 
        llLoopSound("windmill_02", volume);
        }        
    if (speed2 >= 0.801 && speed2 <= 0.9)
        { 
        llLoopSound("windmill_03", volume);
        } 
    if (speed2 >= 0.901)
        { 
        llLoopSound("windmill_04", volume);
        }
    if (speed2 <= 0.399)
        { 
        llStopSound();
        }                                                           
    } 

default
{
    state_entry()
    {
        llTriggerSound("chime01", 1.0);
        llSetTimerEvent(gap);
        llSay(0, "Sound Started");
    }

    timer()
    {
       sound();
// Below is debuging to print wind speed everytime timer hits:       
//    vector wind = llWind(<0,0,0>);
//    string speed = (string)llVecMag(wind);
//    float speed2 = (float)speed;
//    llSay(0,"Wind speed string: " + speed);           
    }
}    