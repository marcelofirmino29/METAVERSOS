integer lchannel = -4987621;
key owner = NULL_KEY;
integer lhandle = -1;
list sides = [-1];
string ncname = "";
key qid = NULL_KEY;
integer ncline = 0;

configscan()
{
    lchannel = -4987621;
    sides = [];
    qid = NULL_KEY;
    ncline = 0;
    ncname = llGetInventoryName(INVENTORY_NOTECARD, 0);
    qid = llGetNotecardLine(ncname, ncline);
}

default
{
    state_entry()
    {
        owner = llGetOwner();
        lhandle = llListen(lchannel, "", NULL_KEY, "");
        ncname = llGetInventoryName(INVENTORY_NOTECARD, 0);
        if (ncname != "") configscan();
    }

    on_rez(integer start_param)
    {
        llResetScript();
    }

    changed(integer mask)
    {
        if(mask & CHANGED_INVENTORY) configscan();
    }

    listen(integer channel, string name, key id, string message)
    {
//        if (llGetOwnerKey(id) == owner) {
            integer split = llSubStringIndex(message, "ttecger:");
            if (split != -1) {
                integer numsides = llGetListLength(sides);
                integer i;
                for (i = 0; i < numsides; i++) {
                    llSetTexture((key)llGetSubString(message, split + 8, -1), (integer)llList2String(sides, i));
                }
            }
//        }
    }

    dataserver(key query_id, string data) {
        if (query_id == qid) {
     //       llSetText("Config: Line " + (string)ncline, <1.0, 1.0, 1.0>, 1.0);
            if (data != EOF) {
                integer split = llSubStringIndex(data, "channel:");
                if (split != -1) {
                    llListenRemove(lhandle);
                    lchannel = (integer)llGetSubString(data, split + 8, -1);
                    lhandle = llListen(lchannel, "", NULL_KEY, "");
                } else {
                    split = llSubStringIndex(data, "sides:");
                    if (split != -1) {
                        sides = llCSV2List(llGetSubString(data, split + 6, -1));
                    }
                }
                ++ncline;
                qid = llGetNotecardLine(ncname, ncline);
            } else {
                llSetText("", <1.0, 1.0, 1.0>, 1.0);
            }
        }
    }
}