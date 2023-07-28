default
{
    state_entry()
    {
        llSetSitText( "" );
        llSetTouchText( "" );
        llParticleSystem( [ ] );
        llSetText( "", ZERO_VECTOR, 1.0 );
        llTargetOmega( ZERO_VECTOR, 0, 0 );
        llSitTarget( ZERO_VECTOR, ZERO_ROTATION );
        llSetTextureAnim( FALSE , ALL_SIDES, 1, 1, 0, 0, 0.0 );
        llStopSound();
    }
} 