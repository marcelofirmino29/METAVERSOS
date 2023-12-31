// Script loosely based in the Magic Sit script V2.
// Modded, cleaned, shortened and made it work properly by Aaack Aardvark, Arcadia, 2017.

// Original credits:

// This script is licensed under GPL license version 2
//
// In short: feel free to redistribute and modify it, as long as
// any copies of it can be redistributed and modified as well.
//
// The official text of the licence is available at
// http://www.gnu.org/licences/gpl.html
//
// (c) The owner of Avatar Whidou Bienstock, 2008, 2003
// Large portions of this script are by Catherine Pfeffer

startAnimation()
{
    llStopAnimation("sit");
    llStartAnimation(name);
}
stopAnimation()
{
    llClearCameraParams();
    llStopAnimation(name);
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
string name;
default
{
    state_entry()
    {
        name = llGetInventoryName(INVENTORY_ANIMATION, 0);
        llSitTarget(<0.043333, -0.041222, -0.401409>, <0.000267, -0.025988, -0.009324, -0.999618>);
    }
    changed(integer change)
    {
        if ((change & CHANGED_LINK) == CHANGED_LINK)
        {
            if (llGetInventoryNumber(INVENTORY_ANIMATION))
            {
                key who = llAvatarOnLinkSitTarget(4);
                integer perm = llGetPermissions();
                if (who != NULL_KEY)
                {
                    llRequestPermissions(who, PERMISSION_TRIGGER_ANIMATION | PERMISSION_CONTROL_CAMERA);
                }
                else
                {
                    stopAnimation();
                }
            }
        }
    }
    
    run_time_permissions(integer perm)
    {
        if (perm)
        {
            startAnimation();
            init_camera();
        }
    }
}
 