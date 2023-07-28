
//  --------------------------------------------------------------
string      g_SitText       = "sit";   //  The text to replace "sit" in the pie menu
string      g_Animation     = "sit";    //  The animation we use (note that this is a default animation)
key         g_LastAvatar    = NULL_KEY; //  Stores the last avatar to sit on the object

//  EVENTS
//  --------------------------------------------------------------
default 
{
    state_entry() 
    {
        //  First we set up the sit text in the pie menu, and determine
        //  where the sit offset should be.
        llSetSitText(g_SitText);
        llSitTarget(<-0.0, 0.3, 0.15>, <0.0, 0.0, 1.0, 1.0> );
    }

    changed(integer change) 
    {
        //  In the changed() event, we are looking for a change in the link
        //  of the object.  When someone sits on an object, they actually
        //  become a part or link of the object, which is why this event is
        //  raised.  From here, we can determine who is sitting on the object
        //  request permissions, animate the avatar, or stop any animations
        //  if they are getting off the object.
        key id = llAvatarOnSitTarget();
        if(change & CHANGED_LINK) 
        {
            if (id != NULL_KEY && g_LastAvatar == NULL_KEY) 
            {
                //  An avatar sat on the object.  Or a link was added to the
                //  object, to be more specific.
                g_LastAvatar = id;
                
                //  Check and Request permissions from the avatar.
                if (!(llGetPermissions() & PERMISSION_TRIGGER_ANIMATION))
                {
                    llRequestPermissions(id, PERMISSION_TRIGGER_ANIMATION);
                }
            }
            
            // Avatar is getting off the object.
            if (id == NULL_KEY && g_LastAvatar != NULL_KEY) 
            {
                //  Make sure we have permissions to animate the avatar
                if (llGetPermissions() & PERMISSION_TRIGGER_ANIMATION) 
                {
                    //  Since we have permissions, we will stop whatever
                    //  animations were applied to the avatar initialy
                    llStopAnimation(g_Animation);
                }
                
                // Reset the script to release any permissions
                llResetScript();
            }
        }
    }
     
    run_time_permissions(integer perm) 
    {
        if (!(perm & PERMISSION_TRIGGER_ANIMATION)) 
        {
            //  Since the avatar is sitting, animation permissions are automaticaly
            //  applied.  But we still have to go through the logic in the script
            //  to activate animations.
            llInstantMessage(g_LastAvatar, "Permissions are Required.");
            llUnSit(g_LastAvatar);
        }
        
        //  Permissions were accepted, so we start the animation.  If you want
        //  to use a custom animation, then the animation has to be located within
        //  the inventory of the object, and spelled the exact way it looks.
        llStartAnimation(g_Animation);
    }
}