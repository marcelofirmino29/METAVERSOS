vector textcolour = <0.6,0.6,0.6>;
float texttrans = 1.0;

default
{

    state_entry() {
        llSetText(llGetObjectName(),textcolour, texttrans);
    }

    touch_start(integer total_number){
        list pdetails = llGetParcelDetails(llGetPos(), [PARCEL_DETAILS_GROUP]);
        llShout(0, "Na localização: "+llGetPos());

        key id = llDetectedKey(0);
        string avatarname = llDetectedName(0);
        llShout(0, "Avatar UUID: "+(string) id+" localizou o elemento ÁGUA, o nome do avatar é: "+avatarname);

    }

}