// Opensim Flyer
// Copied 20140619 from http://forums.osgrid.org/viewtopic.php?f=5&t=4577
// Slightly adjusted by Kelso Buchjaeger

/* 
Smooth Motion Without Physics, Sample Script

Kayaker Magic  -  Post subject: Smooth Motion Without Physics, Sample Script - PostPosted: Mon Dec 10, 2012 3:19 pm 

Until that wonderful day when BulletSim solves all our physics problems, I find it preferable to use non-physical ways to move objects. In SL I use llSetKeyframedMotion, but that is not working in Open Simulator yet. In the mean time I settled on using not_at_target to move things smoothly. If you want the short version of this, go get the sample script at the bottom of this posting. Put it in a prim. Make that prim longer in the X direction so you can tell which way it is facing. Like a sphere stretched out in the local X direction. This script will make your plrim fly around, leaving a particle trail, making smooth turns, avoiding sim and parcel boundaries, not flying too high, avoiding the ground, dipping into the water but turning back up.

Not_at_target can be used to smoothly move prims because it can be called 11 times a second while timers in Open Simulator are limited to only twice a second. I put all the code to handle this in a modular set of functions so that the changes to my main scripts are kept to a minimum. I also have functions by the same name that use llSetKeyframeMotion, so I can run the same scripts in SL with very few changes. I have built these routines into flying and swimming critters, used the same routines for smoothly moving a toboggan down a hill or a surfboard across a wave.

It turns out that you can crash an Open Sim by just scripting prims to run off the edge, or even just walking your avatar into the edge when there isn't another sim on the other side. So it is vitally important to keep scripted prims from running off the edge. Once a prim runs off the edge, the script is stopped, and it gets stuck there until you find it. While stuck it burns up huge amounts of CPU resources doing nothing until the sim crashes or you find the lost prim and delete it. This seems to get worse the more prims are stuck, so make sure you don't loose track of them!

So one of the important things this sample script does is try and turn the moving prim back when it gets near the edge of the sim. This script implements something sort of like what LL calls “pathfinding”, making the prim fly around your sim avoiding obstacles.

To try to cut down on the script lag, I do all the calculations I can in the timer only once a second, and just use not_at_target to interpolate the position and rotation between timer events. This is still a lot of calculations and the flyer script below uses up around 0.6ms of time per frame according to Top Scripts. This means you can have 30 scripts like this running around on your sim before you “run out” of the 18ms limit per frame. Of course I have 100's of scripts running and have exceeded that 3 times over. Things still work reasonably well...

*/
// Opensim Flyer
//      A script that gets pretty smooth motion and moves a critter around
//  sort of like "pathfinding" in SL.
//      Kayaker Magic, December 2012
//
//          I'm giving this code away without restrictions, use in products
//  or any other way. It would be nice if you gave me credit somewhere.
//
//      This script demonstrates several things:
//  1) How to get smooth motion with not_at_target.
//  2) How I make things move in interesting ways with a set of rules
//      This simple critter behaves in the following ways:
//  It moves in a straight line until:
//  dives into the water but flies back out
//  avoids getting close to the ground
//  turns away from the SIM edges
//  turns away from the parcel boundary edges.
//    doesn't fly too high above the ground

float DEFLECT=0.20;     //how hard things deflect me away
float MAXHEIGHT=50.0;   //how high I'm allowed above the ground
float LOOKAHEAD=14.0;    //how far to look foreward and to the side
integer run=1;          //flag indicating if I'm running or not
list params=[           //make the smoke
            PSYS_PART_FLAGS,0 ,
            PSYS_SRC_PATTERN,PSYS_SRC_PATTERN_DROP ,
            PSYS_SRC_BURST_RATE,0.125,
            PSYS_SRC_BURST_PART_COUNT ,1,
            PSYS_PART_MAX_AGE,30.0,
            PSYS_PART_START_SCALE, <.75,.75,0>,
            PSYS_PART_START_COLOR, <1,0,1>
];

//  This function, OKfly, checks for all the places that you don't want your prim to move.
//  If your prim moves off the sim edges, your script will stop, your SIM FPS and
//        physics FPS will drop (even though this script doesn't use physics) and
//        eventually your whole SIM will crash! Just from a prim going off the edge...
//  If your prim tries to move underground, the script keeps running but motion stops.
//  I use parcels to create boundaries where the critter has to stay, so I test
//      for parcel boundaries here also.
//  You could test for other things, like a fish can't leave the water or a bird
//      can't enter water, but fish jump and birds dive so I do that elsewhere.
integer OKfly(vector pos)   //return true if OK to move to pos
{
            //stay away from the edges of the region
    if (pos.x<=0 || pos.x>=256 || pos.y<=0 || pos.y>=256)
        return FALSE;;
    if (pos.z<llGround(pos-llGetPos()))     //if you are heading  below ground
        return FALSE;                   //treat that as the edge of the world
            //If you are still in the same parcel,
            //and you were able to work there, then you should
            //be able to continue there
    key curpar = llList2Key(llGetParcelDetails(llGetPos(),[PARCEL_DETAILS_ID]),0);
    key nxtpar = llList2Key(llGetParcelDetails(pos,       [PARCEL_DETAILS_ID]),0);
    if (curpar!=nxtpar)
        return FALSE;
            //insert other rules here, like fish not allowed out of the water
    return TRUE;    //otherwise, it is OK to fly here!
}



//Single Framed (SF) motion without llKeyframedMotion
//  I record everything I need to interpolate position and rotation here:
vector      SF_spos;        //start position
rotation    SF_srot;        //starting rotation
float       SF_stime;       //starting time
vector      SF_epos;        //ending position
rotation    SF_erot;        //ending rotation
float       SF_seconds;     //time to move that distance
float       SF_last;        //last time moved (for limiting number of moves)
integer     SF_target=-1;      //handle of last target position

    //Call this routine, SFrame, to start
    //moving the calling root prim from its current position and rotation
    //to the requested position and rotation in the requested time
    //(sort of like one step of llSetKeyframedMotion but absolute co-ords)
    //  I usually call this once a second in the timer event with an
    //updated position rotation and a fixed one second time.
    //But it should work over longer times and distances.
    //Rotations of exactly 180 degrees will go crazy, so don't do that!
SFrame(vector pos,rotation rot, float seconds)
{
            //record the current position, rotation and time
    SF_spos=llGetPos();
    SF_srot=llGetRot();
    SF_stime=llGetTime();
    SF_last=SF_stime;
            //save the requested position, rotation and time
    SF_epos=pos;
    SF_erot=rot;
            //llAxes2Rot returns two kinds of solutions, I need to detect
            //this and flip one of them.
    rotation t=<SF_srot.x-SF_erot.x,SF_srot.y-SF_erot.y,SF_srot.z-SF_erot.z,SF_srot.s-SF_erot.s>;
    if ((t.x*t.x + t.y*t.y + t.z*t.z + t.s*t.x)>0.5)
        SF_erot = <-SF_erot.x,-SF_erot.y,-SF_erot.z,-SF_erot.s>;
    SF_seconds=seconds;
            //reset the "target" position past our ending position
    llTargetRemove(SF_target);    //forget the last one   
    SF_target=llTarget(pos+(pos-SF_spos)*3.0,0.1);    //set one past where we will go
}

SFstop()        //call this to stop the motion
{
    llTargetRemove(SF_target);    //stop the non_at_target calls from happening
    SF_target=-1;
}

    //You can call this SFnotat function from your not_at_target event
    //or you can cut the code out and place it there (more effecient)
    //I made it a function to try and be more modular...
    //  This function does the hard work of doing one step of the interpolation
    //between the starting and ending position.
    //  I use the script time to do this, so if you reset the time, this function will get confused.
    //You can prevent problems if you call SFstop or SFrame again after reseting the time.
    //  This code linearly interpolates the position in a straight line at a constant velocity.
    //It "nlerp"s the rotations, which is *GASP* not accurate! Nlerp linearly interpolates the
    //rotation instead of spherically interpolating (slerp). So nlerp turns too slowly at the start
    //and end then too fast through the middle of the turn. But it uses FAR FEWER server resources
    //so it lags the server less. And you really can't see the difference.
SFnotat()
{
    if (SF_target== -1) return;     //prevetnts last event in queue from causing problems
    float time=llGetTime();
    time = (time-SF_stime)/SF_seconds;    //calculate the percent of the time so far
    if (time>1.0)        //when the time is up,
    {
        llTargetRemove(SF_target);    //stop interpolating, force a move to the end position
        SF_target=-1;
        llSetLinkPrimitiveParamsFast(LINK_THIS,[PRIM_POSITION,SF_epos,PRIM_ROTATION,SF_erot]);
        return;
    }
    float emit= 1.0-time;       //time backwards is emit (that is a joke ;-)
    vector pos=SF_epos*time+SF_spos*emit;        //interpolate the position
        //interpolate the rotaton. Use "nlerp" since that is good enough
    rotation rot = <
        SF_erot.x*time+SF_srot.x*emit,
        SF_erot.y*time+SF_srot.y*emit,
        SF_erot.z*time+SF_srot.z*emit,
        SF_erot.s*time+SF_srot.s*emit    //nlerp means use linear interpolation, then
    >;
                                        //normalize the rotation
    emit = llSqrt(rot.x*rot.x+rot.y*rot.y+rot.z*rot.z+rot.s*rot.s);
    rot = <rot.x/emit,rot.y/emit,rot.z/emit,rot.s/emit>;
        llSetLinkPrimitiveParamsFast(LINK_THIS,[PRIM_POSITION,pos,PRIM_ROTATION,rot]);
}

default
{
    state_entry()
    {
        llOwnerSay("reset");
        // llParticleSystem(params);
        llSetTimerEvent(1.0);   //recalculte movement every second
    }
   
    on_rez(integer param)
    {       //turn to a random direction on rez
        llSetRot(llEuler2Rot(<0,llFrand(PI-PI/2.0),llFrand(TWO_PI)>));
    }
   
    timer()     //every second calculate a new direction to turn
    {
        vector pos=llGetPos();       //get my current position
        rotation rot=llGetRot();       //and rotation
       
        vector vel=<1,0,0>*rot;      //use my direction as velocity

            //here are the RULES that give this critter behavior:
            //first (four) rule(s): Avoid the edges of the sim and parcel.
        vector xvel=llVecNorm(<vel.x,0,0>);   //get orthagonal components of velocity
        vector yvel=llVecNorm(<0,vel.y,0>);
        if (!OKfly(pos+LOOKAHEAD*xvel))     //so you can pong off the edges of the sim
            vel -= DEFLECT*xvel;           //slow down as you approach X edge.
        if (!OKfly(pos-LOOKAHEAD*xvel))   //checking both sides makes me
            vel += DEFLECT*xvel;         //accelerate away from walls
        if (!OKfly(pos+LOOKAHEAD*yvel))     //do the same thing in Y
            vel -= DEFLECT*yvel;
        if (!OKfly(pos-LOOKAHEAD*yvel))
            vel += DEFLECT*yvel;

            //I could use LOOKAHEAD to avoid running into the water (I do that for the
            //ground below) but I thought it would be fun to allow this flyer to hit the
            //water and THEN accelerate it up to fly back out.
        float wat=llWater(ZERO_VECTOR);
        if (pos.z<wat+1)         //after I have already dipped into the water,
            vel += <0,0,1>*DEFLECT;             //accelerate back up
       
            //if you don't have some sort of MAXHEIGHT test, the critter would fly up
            //and never come back. I turn back at MAXHEIGHT above the land OR water.
            //(if you just tested land, you would have trouble when the water was
            //over MAXHEIGHT deep)
        float gnd=llGround(ZERO_VECTOR);
        if (gnd>wat)
            wat=gnd;        //use the max of water and ground for height limit test
        if (pos.z>(wat+MAXHEIGHT))  //if I get too high
            vel -= <0,0,1>*DEFLECT;     //accelerate back down

            //When the critter gets within LOOKAHEAD meters of the ground, I start
            //accelerating back up. Using the ground normal makes it turn sideways
            //away from cliffs instead of just turning up.
        vector npos=pos+vel;        //next position
        if ((npos.z-LOOKAHEAD)<gnd)     //if my next position is too close to the ground
            vel += llGroundNormal(vel)*DEFLECT;     //deflect away from the ground normal

            //I'm limiting this critter to 1 meter per second, you could go faster
            //but beware, llAxes2Rot requires unit vectors! You would have to
            //calculate a separate vector that is the normalized velocity and use that below.
        vel = llVecNorm(vel);       //limit my velocity to 1m/sec
       
            //here I convert the velocity vector into a rotation. These steps result in the
            //prim always rotating to keep the head "up". Actually the local Y axis is always
            //parallell to the XY plane, the local Z axis is allowed to rotate away from
            //straight up to turn the nose in the direction of movement.
        vector lft=llVecNorm(<0,0,1>%vel);
        rot = llAxes2Rot(vel,lft,vel%lft);  //calculate new rotation in direction of vel

            //The test may invalate each other so I do another test here and
            //try to do something smarter to avoid getting stuck.
        if (!OKfly(pos+vel))        //final test: If I'm still going out of bounds,
        {
            if (llVecMag(lft)<0.5)      //detect Gymbol lock!
                lft=<0,1,0>;            //and make a hard left turn in this unusual case.
            vel = llVecNorm(vel+lft*(llFrand(2.0)-1.0));  //randomly turn left or right
            lft=llVecNorm(<0,0,1>%vel);             //to try to get out of edge lock
            rot = llAxes2Rot(vel,lft,vel%lft);      //re-calc the rotation
            vel=ZERO_VECTOR;            //stop and wait for rotation to turn me
        }
        SFrame(pos+vel,rot,1.0);        //start moving and turning
    }
            //once not_at_target is running, even the build dialog cannot change the position
            //or rotation without it being changed back. So I added this touch to stop the
            //critter so I could move it or rotate it, then touch start it moving again.
    touch_start(integer num)
    {
        if ((run = run^1) ==0)      //toggle the run flag
        {
            llSetTimerEvent(0);
            SFstop();               //demonstrate how to use SFstop!
            // llParticleSystem([]);   //turn off the smoke while stopped.
            llOwnerSay("stopped");
        }
        else
        {
            llSetTimerEvent(1.0);       //the next call to SFrame in timer will start it up again
            // llParticleSystem(params);
            llOwnerSay("running");
        }
    }
        //The whole thing fails to work if you don't have a not_at_target event with
        //a call to SFnotat (or a copy of the code from SFnotat) inside it.
        //(I forget every other time!)
    not_at_target()
    {
        SFnotat();
    }
} 