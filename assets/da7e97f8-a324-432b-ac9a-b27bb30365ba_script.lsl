//Ricardo Sorciere
// float on water script
default
{
    state_entry()
    {
        llSetBuoyancy(0.2);
        llSetStatus(STATUS_ROTATE_X|STATUS_ROTATE_Y,FALSE);
        llSetVehicleType(VEHICLE_TYPE_BOAT);
        llSetVehicleFlags(VEHICLE_FLAG_HOVER_WATER_ONLY);
        llSetVehicleFloatParam(VEHICLE_HOVER_HEIGHT,0.2);
        llSetVehicleFloatParam(VEHICLE_HOVER_EFFICIENCY,0.0);
        llSetVehicleFloatParam(VEHICLE_HOVER_TIMESCALE, 0);
    }
}