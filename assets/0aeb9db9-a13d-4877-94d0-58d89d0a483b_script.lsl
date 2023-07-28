// Nebadon Izumi's Cross Grid Oar compatible Media Player v1.0
key theVideoTexture; // apply media texture to surface #5 which is the back of the prim this script is in!
string VideoBaseUrl = "http://www.youtube.com/embed/40paJ7invLo?rel=0&amp;autoplay=1;fs=0;autohide=0;hd=0;";
//string VideoBaseUrl = "http://200.139.17.50//JOpensim/media/com_allvideoshare/videos/2022-09/estadosfisicos.mp4";
string type = "text/html";


PlayVideo( key theAvatar ) {
   theVideoTexture = llGetTexture(5);
   //llSay(0, (string)llGetTexture(5)); // debug stuff leave commented
   //llSay(0, theVideoTexture); // debug stuff leave commented

   llParcelMediaCommandList([
       PARCEL_MEDIA_COMMAND_AGENT, theAvatar,
       PARCEL_MEDIA_COMMAND_TEXTURE, theVideoTexture,
       PARCEL_MEDIA_COMMAND_URL, VideoBaseUrl,
       PARCEL_MEDIA_COMMAND_TYPE, type,
       PARCEL_MEDIA_COMMAND_LOOP
   ]);
}

default {

   touch_start( integer numTouchers ) {
       integer i;
       for (i = 0; i < numTouchers; ++i) {
           PlayVideo( llDetectedKey( i ));
       }
   }

}