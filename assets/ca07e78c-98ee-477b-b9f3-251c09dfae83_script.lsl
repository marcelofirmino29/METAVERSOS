vector textcolour = <0.6,0.6,0.6>;
float texttrans = 1.0;

default
{
    
    state_entry() {
        llSetText(llGetObjectName(),textcolour, texttrans);            
    }
    
    touch_start(integer total_number){   
        list pdetails = llGetParcelDetails(llGetPos(), [PARCEL_DETAILS_GROUP]);
        llShout(0, "Posição UUID: "+llDumpList2String(pdetails,", "));
 
        key id = llDetectedKey(0);
        string avatarname = llDetectedName(0);
        llShout(0, "UUID do Avatar: "+(string) id+" Localizou o elemento AMÔNIA: "+avatarname);

    }
       
} 