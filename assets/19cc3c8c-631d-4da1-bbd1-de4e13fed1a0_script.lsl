//Modified, altered, adapted and cleaned by Aaack Aardvark, Arcadia, 2017.
//ubODE Version.

//Old Credits:
// Hans Ingen²
// LSL | OPENSIM | ODE
// i-TEC + e3s + DC (ENGINE SPEED SENSITIVE STEERING WITH DYNAMIC CAMERA)
// JANUARY 28, 2013

key gAgent;
integer gRun;
integer gMoving;
float gTick=.1;
string gDrivingAnim = "Arcadia's LRV - Pilot";
float gGearPower = 12;
float gReversePower = -10;
float gSpeed=0;
vector ad;
vector at;

forwardw()
{
    llSetLinkPrimitiveParamsFast
        (17, [
            PRIM_OMEGA, <0, 1, 0> * llEuler2Rot(DEG_TO_RAD * ad), TWO_PI * 2, 1,
            PRIM_LINK_TARGET, 20,
            PRIM_OMEGA, <0, 1, 0>  * llEuler2Rot(DEG_TO_RAD * ad), TWO_PI * 2, 1,
            PRIM_LINK_TARGET, 18,
            PRIM_OMEGA, <0, 1, 0> * llEuler2Rot(DEG_TO_RAD * at), TWO_PI * 2, 1,
            PRIM_LINK_TARGET, 19,
            PRIM_OMEGA, <0, 1, 0> * llEuler2Rot(DEG_TO_RAD * at), TWO_PI * 2, 1
        ]);
}
reversew()
{
    llSetLinkPrimitiveParamsFast
        (17, [
            PRIM_OMEGA, <0, -1, 0>  * llEuler2Rot(DEG_TO_RAD * ad), TWO_PI * 2, 1,
            PRIM_LINK_TARGET, 20,
            PRIM_OMEGA, <0, -1, 0>  * llEuler2Rot(DEG_TO_RAD * ad), TWO_PI * 2, 1,
            PRIM_LINK_TARGET, 18,
            PRIM_OMEGA, <0, -1, 0> * llEuler2Rot(DEG_TO_RAD * at), TWO_PI * 2, 1,
            PRIM_LINK_TARGET, 19,
            PRIM_OMEGA, <0, -1, 0> * llEuler2Rot(DEG_TO_RAD * at), TWO_PI * 2, 1
        ]);
}
stopw()
{
    llSetLinkPrimitiveParamsFast
        (17, [
            PRIM_OMEGA, <0, 0, 0>  * llEuler2Rot(DEG_TO_RAD * ad), 1, 1,
            PRIM_LINK_TARGET, 20,
            PRIM_OMEGA, <0, 0, 0>  * llEuler2Rot(DEG_TO_RAD * ad), 1, 1,
            PRIM_LINK_TARGET, 18,
            PRIM_OMEGA, <0, 0, 0> * llEuler2Rot(DEG_TO_RAD * at), 1, 1,
            PRIM_LINK_TARGET, 19,
            PRIM_OMEGA, <0, 0, 0> * llEuler2Rot(DEG_TO_RAD * at), 1, 1
        ]);
}
init_engine()
{
    gRun = 0;
    llSetSitText("Roving away!");
    llCollisionSound("Arcadia's Collision Silence", 1.0);
    llSitTarget(<-0.464158, 0.485046, 0.242128>, <0.000000, -0.026177, 0.000000, -0.999657>);
    stopw();
}
init_camera()
{
    llSetCameraParams
    ([
        CAMERA_ACTIVE, 1,
        CAMERA_BEHINDNESS_ANGLE, 10.0,
        CAMERA_BEHINDNESS_LAG, 0.2,
        CAMERA_DISTANCE, 6.0,
        CAMERA_PITCH, 20.0,
        CAMERA_POSITION_LOCKED, FALSE,
        CAMERA_POSITION_LAG, 0.25,
        CAMERA_POSITION_THRESHOLD, 1.5,
        CAMERA_FOCUS_LOCKED, FALSE,
        CAMERA_FOCUS_LAG, 0.1,
        CAMERA_FOCUS_THRESHOLD, 0.5,
        CAMERA_FOCUS_OFFSET, <0.10,0,0>
    ]);
}
set_engine()
{
    llSetVehicleType(VEHICLE_TYPE_CAR);
    llSetVehicleRotationParam(VEHICLE_REFERENCE_FRAME, <0.00000, 0.00000, 0.00000, 0.00000>);
    llSetVehicleFloatParam(VEHICLE_ANGULAR_MOTOR_TIMESCALE, 0.10);
    llSetVehicleFloatParam(VEHICLE_ANGULAR_MOTOR_DECAY_TIMESCALE, 0.10);
    llSetVehicleFloatParam(VEHICLE_ANGULAR_DEFLECTION_EFFICIENCY, 0.20);
    llSetVehicleFloatParam(VEHICLE_ANGULAR_DEFLECTION_TIMESCALE, 0.10);
    llSetVehicleFloatParam(VEHICLE_VERTICAL_ATTRACTION_EFFICIENCY, 0.50);
    llSetVehicleFloatParam(VEHICLE_VERTICAL_ATTRACTION_TIMESCALE, 2.0);
    llSetVehicleFloatParam(VEHICLE_LINEAR_DEFLECTION_EFFICIENCY, 0.80);
    llSetVehicleFloatParam(VEHICLE_LINEAR_DEFLECTION_TIMESCALE, 0.10);
    llSetVehicleFloatParam(VEHICLE_LINEAR_MOTOR_TIMESCALE, 0.6);
    llSetVehicleFloatParam(VEHICLE_LINEAR_MOTOR_DECAY_TIMESCALE, 0.10);
    llSetVehicleFloatParam(VEHICLE_HOVER_EFFICIENCY, 0.0 );
    llSetVehicleFloatParam(VEHICLE_HOVER_TIMESCALE, 0.0 );
    llSetVehicleFloatParam(VEHICLE_HOVER_HEIGHT, 0.0 );
    llSetVehicleFloatParam(VEHICLE_BUOYANCY, 0.0 );
    llSetVehicleVectorParam(VEHICLE_LINEAR_FRICTION_TIMESCALE, <5.0, 0.5, 1000.0> );
    llSetVehicleVectorParam(VEHICLE_ANGULAR_FRICTION_TIMESCALE, <0.10, 0.10, 0.20> );
    llRemoveVehicleFlags(VEHICLE_FLAG_HOVER_GLOBAL_HEIGHT | VEHICLE_FLAG_HOVER_GLOBAL_HEIGHT | VEHICLE_FLAG_HOVER_WATER_ONLY);
    llSetVehicleFlags(VEHICLE_FLAG_NO_DEFLECTION_UP | VEHICLE_FLAG_LIMIT_ROLL_ONLY | VEHICLE_FLAG_LIMIT_MOTOR_UP |
                      VEHICLE_FLAG_HOVER_UP_ONLY | VEHICLE_FLAG_HOVER_TERRAIN_ONLY);
}
right()
{
    llSetLinkPrimitiveParamsFast
        (7, [
            PRIM_POS_LOCAL, <1.459076, 1.062500, 0.153809>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, -0.195090, 0.980785>,
            PRIM_LINK_TARGET, 17,
            PRIM_POS_LOCAL, <1.459076, 1.062607, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, -0.195090, 0.980785>,
            PRIM_LINK_TARGET, 6,
            PRIM_POS_LOCAL, <1.448166, 1.035889, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, -0.195090, 0.980785>,
            PRIM_LINK_TARGET, 8,
            PRIM_POS_LOCAL, <1.438812, -1.059769, 0.153809>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, -0.195090, 0.980785>,
            PRIM_LINK_TARGET, 20,
            PRIM_POS_LOCAL, <1.438644, -1.060059, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, -0.195090, 0.980785>,
            PRIM_LINK_TARGET, 9,
            PRIM_POS_LOCAL, <1.460114, -1.008362, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, -0.195090, 0.980785>,
            PRIM_LINK_TARGET, 12,
            PRIM_POS_LOCAL, <-1.399719, 1.060120, 0.153809>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, -0.980785, 0.195090>,
            PRIM_LINK_TARGET, 18,
            PRIM_POS_LOCAL, <-1.399658, 1.060257, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.195090, 0.980785>,
            PRIM_LINK_TARGET, 13,
            PRIM_POS_LOCAL, <-1.381226, 1.015579, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.195090, 0.980785>,
            PRIM_LINK_TARGET, 14,
            PRIM_POS_LOCAL, <-1.376938, -1.060196, 0.153809>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, -0.980785, 0.195090>,
            PRIM_LINK_TARGET, 19,
            PRIM_POS_LOCAL, <-1.377243, -1.060196, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.195090, 0.980785>,
            PRIM_LINK_TARGET, 15,
            PRIM_POS_LOCAL, <-1.398590, -1.008850, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.195090, 0.980785>
        ]);
}
centre()
{
    llSetLinkPrimitiveParamsFast
        (7, [
            PRIM_POS_LOCAL, <1.453644, 1.060104, 0.153809>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.000000, 1.000000>,
            PRIM_LINK_TARGET, 17,
            PRIM_POS_LOCAL, <1.453598, 1.060211, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.000000, 1.000000>,
            PRIM_LINK_TARGET, 6,
            PRIM_POS_LOCAL, <1.453735, 1.031342, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.000000, 1.000000>,
            PRIM_LINK_TARGET, 8,
            PRIM_POS_LOCAL, <1.453644, -1.059875, 0.153809>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.000000, 1.000000>,
            PRIM_LINK_TARGET, 20,
            PRIM_POS_LOCAL, <1.453598, -1.060211, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.000000, 1.000000>,
            PRIM_LINK_TARGET, 9,
            PRIM_POS_LOCAL, <1.453644, -1.004227, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.000000, 1.000000>,
            PRIM_LINK_TARGET, 12,
            PRIM_POS_LOCAL, <-1.390442, 1.060104, 0.153809>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 1.000000, 0.000000>,
            PRIM_LINK_TARGET, 18,
            PRIM_POS_LOCAL, <-1.390320, 1.060211, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.000000, 1.000000>,
            PRIM_LINK_TARGET, 13,
            PRIM_POS_LOCAL, <-1.390396, 1.011887, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.000000, 1.000000>,
            PRIM_LINK_TARGET, 14,
            PRIM_POS_LOCAL, <-1.390045, -1.060318, 0.153809>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 1.000000, 0.000000>,
            PRIM_LINK_TARGET, 19,
            PRIM_POS_LOCAL, <-1.390320, -1.060211, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.000000, 1.000000>,
            PRIM_LINK_TARGET, 15,
            PRIM_POS_LOCAL, <-1.390396, -1.004593, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.000000, 1.000000>
        ]);
}
left()
{
    llSetLinkPrimitiveParamsFast
        (7, [
            PRIM_POS_LOCAL, <1.453690, 1.060120, 0.153809>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.195090, 0.980785>,
            PRIM_LINK_TARGET, 17,
            PRIM_POS_LOCAL, <1.453598, 1.060196, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.195090, 0.980785>,
            PRIM_LINK_TARGET, 6,
            PRIM_POS_LOCAL, <1.464783, 1.033569, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.195090, 0.980785>,
            PRIM_LINK_TARGET, 8,
            PRIM_POS_LOCAL, <1.464676, -1.056168, 0.153809>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.195090, 0.980785>,
            PRIM_LINK_TARGET, 20,
            PRIM_POS_LOCAL, <1.464767, -1.056503, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.195090, 0.980785>,
            PRIM_LINK_TARGET, 9,
            PRIM_POS_LOCAL, <1.443375, -1.004761, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.195090, 0.980785>,
            PRIM_LINK_TARGET, 12,
            PRIM_POS_LOCAL, <-1.379959, 1.057892, 0.153809>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.980785, 0.195090>,
            PRIM_LINK_TARGET, 18,
            PRIM_POS_LOCAL, <-1.379807, 1.057938, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, -0.195090, 0.980785>,
            PRIM_LINK_TARGET, 13,
            PRIM_POS_LOCAL, <-1.398361, 1.013321, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, -0.195090, 0.980785>,
            PRIM_LINK_TARGET, 14,
            PRIM_POS_LOCAL, <-1.401993, -1.057953, 0.153809>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, 0.980785, 0.195090>,
            PRIM_LINK_TARGET, 19,
            PRIM_POS_LOCAL, <-1.402206, -1.057755, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, -0.195090, 0.980785>,
            PRIM_LINK_TARGET, 15,
            PRIM_POS_LOCAL, <-1.380981, -1.006332, 0.150879>,
            PRIM_ROT_LOCAL, <0.000000, 0.000000, -0.195090, 0.980785>
        ]);
}
default
{
    state_entry()
    {
        init_engine();
        state Ground;
    }
}
state Ground
{
    state_entry()
    {
    }
    on_rez(integer param)
    {
        llResetScript();
    }
    changed(integer change)
    {
        if ((change & CHANGED_LINK) == CHANGED_LINK)
        {
            gAgent = llAvatarOnLinkSitTarget(1);
            if (gAgent != NULL_KEY)
            {
                llSetStatus(STATUS_PHYSICS, TRUE);
                set_engine();
                llRequestPermissions(gAgent, PERMISSION_TRIGGER_ANIMATION | PERMISSION_TAKE_CONTROLS | PERMISSION_CONTROL_CAMERA);
                gRun = 1;
            }
            else
            {
                centre();
                llSetStatus(STATUS_PHYSICS, FALSE);
                gRun = 0;
                init_engine();
                llStopAnimation(gDrivingAnim);
                llSetTimerEvent(0.0);
                llReleaseControls();
                llClearCameraParams();
   //             llDie();
            }
        }
    }
    run_time_permissions(integer perm)
    {
        if (perm)
        {
            llTakeControls(CONTROL_FWD | CONTROL_BACK | CONTROL_ROT_RIGHT | CONTROL_ROT_LEFT, TRUE, FALSE);
            init_camera();
            llStartAnimation(gDrivingAnim);
            llSleep(1);
        }
    }
    control(key id, integer held, integer change)
    {
        if(gRun == 0)
        {
            return;
        }
        integer reverse=1;
        vector vel = llGetVel();
        vector speedvec = llGetVel() / llGetRot();
        vector adjustedvec=<speedvec.x,0,speedvec.z>;
        llSetVelocity(adjustedvec,TRUE );
        gSpeed = llVecMag(vel);
        if (held & CONTROL_FWD)
        {
            forwardw();
            llSetVehicleVectorParam(VEHICLE_LINEAR_MOTOR_DIRECTION, <gGearPower,0,0>);
            gMoving=1;
            reverse=1;
        }
        if (held & CONTROL_BACK)
        {
            reversew();
            llSetVehicleVectorParam(VEHICLE_LINEAR_MOTOR_DIRECTION, <gReversePower,0,0>);
            llSetCameraParams([CAMERA_BEHINDNESS_ANGLE,-45.0]);
            llSetCameraParams([CAMERA_DISTANCE,8.0]);
            reverse = -1;
        }
        if (~held & change & CONTROL_FWD)
        {
            stopw();
        }
        if (~held & change & CONTROL_BACK)
        {
            stopw();
        }
        vector AngularMotor;
        if (held & CONTROL_ROT_LEFT)
        {
            left();
            ad = <0,0,22.5>;
            at = <0,0,-22.5>;
            if (reverse == 1)
            {
                AngularMotor.z += 2.5;
            }
            else
            {
                AngularMotor.z -= 2.5;
            }
        }
        if (held & CONTROL_ROT_RIGHT)
        {
            right();
            ad = <0,0,337.5>;
            at = <0,0,-337.5>;
            if (reverse == 1)
            {
                AngularMotor.z -= 2.5;
            }
            else
            {
                AngularMotor.z += 2.5;
            }
        }
        if (~held & change & (CONTROL_ROT_RIGHT | CONTROL_ROT_LEFT))
        {
            centre();
            ad = ZERO_VECTOR;
            at = ZERO_VECTOR;
        }
        llSetVehicleVectorParam(VEHICLE_ANGULAR_MOTOR_DIRECTION, AngularMotor);
    }
} 