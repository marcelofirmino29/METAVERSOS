default
{
    state_entry()
    {
      llSetStatus(STATUS_PHANTOM, TRUE);
      llSetTextureAnim(ANIM_ON|LOOP|SMOOTH, ALL_SIDES, 1, 1, 1, 0, .05);
    }
}