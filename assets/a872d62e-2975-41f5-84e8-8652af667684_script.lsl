// :SHOW:1
// :CATEGORY:NPC
// :NAME:Collider
// :AUTHOR:Ferd Frederix
// :KEYWORDS: OpensimGame collider for All-in-One
// :REV:3
// :WORLD:OpenSim
// :DESCRIPTION:
// Sample collision script for NPC animator
// :CODE:

// Revs:  09-12-2015 added Phantom False on reboot for Linux bug fix - collisions did not happen on restart
//      2017-03-08  0.9.0 does not work
integer open = FALSE;
integer busyopen = FALSE;
integer busyclose = FALSE;
// Prim animation compiler //
// Ferd Frederix - http://www.outworldz.com
integer playbackchannel = 1; // The default llMessageLinked number
rotation calcChildRot(rotation rdeltaRot){
    if (llGetAttached())
        return rdeltaRot/llGetLocalRot();
    else
        return rdeltaRot/llGetRootRotation();
}
vector originalScale = <2.432068, 4.677551, 0.581177>;
Close(){
    
    if ( busyclose++)  {
        llSetTimerEvent(2);
        return;
    }
    llPlaySound("tng_door_close",1.0);
    vector currentSize = llGetScale();
    float scaleby = currentSize.x/originalScale.x;

    llSetLinkPrimitiveParamsFast(3, [PRIM_POSITION, <0.976007, 0.069768, 1.219282>*scaleby, PRIM_ROTATION,calcChildRot(<0.000000, 0.000000, -0.999869, -0.016149>), PRIM_SIZE, <1.901778, 0.177124, 4.608602>*scaleby]);
    llSetLinkPrimitiveParamsFast(4, [PRIM_POSITION, <-0.934874, 0.132705, 1.234210>*scaleby, PRIM_ROTATION,calcChildRot(<0.000000, 0.000000, -0.999870, -0.016150>), PRIM_SIZE, <1.901778, 0.177120, 4.611232>*scaleby]);
    open = FALSE;
}

Open(){
    if ( busyopen++) {
        llSetTimerEvent(2);
        return;
    }
    
    llPlaySound("tng_door_open",1.0);
    vector currentSize = llGetScale();
    float scaleby = currentSize.x/originalScale.x;

    llSetLinkPrimitiveParamsFast(3, [PRIM_POSITION, <2.284742, 0.027481, 1.219224>*scaleby, PRIM_ROTATION,calcChildRot(<0.000000, 0.000000, -0.999869, -0.016149>), PRIM_SIZE, <1.901778, 0.177124, 4.608602>*scaleby]);
    llSetLinkPrimitiveParamsFast(4, [PRIM_POSITION, <-2.251657, 0.175269, 1.234155>*scaleby, PRIM_ROTATION,calcChildRot(<0.000000, 0.000000, -0.999870, -0.016150>), PRIM_SIZE, <1.901778, 0.177120, 4.611232>*scaleby]);
    open = TRUE;
}



Reset()
{
    llSetStatus(STATUS_PHANTOM, FALSE); // rev 3 for linux
    llVolumeDetect(FALSE);
    llSleep(.25);
    llVolumeDetect(TRUE);
}

 
default
{
    state_entry() {
        Reset();
        Close();
    }
    on_rez(integer p){
        llResetScript();
    }    
    collision_start(integer n) {
        Open();
    }
    collision_end(integer n) {   
        Close();
    }
    touch_start(integer n) {
        if (!open)
            Open();
        else 
            Close();
    }
    timer() {
        llSetTimerEvent(0);
        busyopen = 0;
        busyclose= 0;
        Close();
    }
    changed(integer what)
    {
        if (what & CHANGED_REGION_START)
        {
            llResetScript();
        }
    }
}

