default {

    touch_start(integer num_detected) {
        // Parar todos os vídeos na região
        llParcelMediaCommandList([PARCEL_MEDIA_COMMAND_STOP]);
    }

}