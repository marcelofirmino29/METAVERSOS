integer pCurrentSlide = 0;
integer pSlideCount;
integer pLockState = 0;
list pAccessList = [];
integer dialog_channel= 1751;  //questo numero deve essere cambiato ad ogni nuovo slider che si fa
key pLastId;

default
{
    state_entry()
    {
         llListen(dialog_channel,"", "","");
         integer number = llGetInventoryNumber(INVENTORY_TEXTURE);
         pSlideCount = number;
         string name1 = llGetInventoryName(INVENTORY_TEXTURE, 1);
         string name2 = llGetInventoryName(INVENTORY_TEXTURE, 2);
         string name3 = llGetInventoryName(INVENTORY_TEXTURE, 3);
         string name4 = llGetInventoryName(INVENTORY_TEXTURE, 4);
         string name5 = llGetInventoryName(INVENTORY_TEXTURE, 5);
         llSetLinkTexture(4, name1, 3);
         llSetLinkTexture(5, name2, 3);
         llSetLinkTexture(6, name3, 3);
         llSetLinkTexture(7, name4, 3);
         llSetLinkTexture(8, name5, 3);
         string name = llGetInventoryName(INVENTORY_TEXTURE, pCurrentSlide);
         llSetTexture(name, 3);  
         if (pLockState  == 0) 
         {
             llSetLinkTexture(10, "cd0808cd-9f90-027d-0854-af785fc3dec7", 3);
            }else{
             llSetLinkTexture(10, "4aab2519-cc66-f7b4-9e69-c76d2659375c", 3);
         }                  
    }
        on_rez(integer start_param)
    {
        llResetScript(); 
    }
    
    touch_start(integer total_number)
        {
        pLastId = llDetectedKey(0);
        integer number = llGetInventoryNumber(INVENTORY_TEXTURE);
        pSlideCount = number;
        string button = llGetLinkName(llDetectedLinkNumber(0)); 
        if (button == "lock")
        {
        }else{
            if (pLockState == 1)
            {
                if (llDetectedKey(0) != llGetOwner())
                {
                    string person = llDetectedName(0);
                    list tList = [person];
                    integer foundIndex = llListFindList(pAccessList, tList);
                    if (foundIndex == -1)
                    {
                        llInstantMessage(llDetectedKey(0), "You do not have permission to use this viewer.");
                        llInstantMessage(llDetectedKey(0), "You may request permission from the owner, by clicking the lock on the side of the screen.");
                        return;
                    }
                }
            }
        }
        
        list tButtonList = ["back", "open", "1","2","3","4","5","next","lock"];
        list tButton = [(button)];
        integer foundIndex1 = llListFindList(tButtonList, tButton);
        if (foundIndex1 == -1)
        {
            if (pCurrentSlide < pSlideCount) 
            { 
                pCurrentSlide += 1;
                }else{
                pCurrentSlide = 0;
            }
        }
        
        if (button == "lock")
        {
            if (llDetectedKey(0) != llGetOwner())
            {
                string person = llDetectedName(0);
                list tPerson = [person];
                integer foundIndex2 = llListFindList(pAccessList, tPerson);
                if (foundIndex2 == -1)
                {
                    list pApprovalMenu = [];
                    list tApprove = [(person), "No Access"];
                    pApprovalMenu = llListInsertList(pApprovalMenu, tApprove, 0);
                    llDialog( llGetOwner(), ("\n \n"+person+" has asked to use your slide viewer. Grant permission to whom?"), pApprovalMenu, dialog_channel );
                }else{
                    llInstantMessage(llDetectedKey(0), ((person) + " is logging out. Access control is now removed for this user."));
                    pAccessList = llDeleteSubList(pAccessList, foundIndex2, foundIndex2);
                }
            }else{
                if (pLockState == 0) {
                    pLockState = 1;
                    llSetLinkTexture(10, "4aab2519-cc66-f7b4-9e69-c76d2659375c", 3);
                }else{
                    pLockState = 0;
                    llSetLinkTexture(10, "cd0808cd-9f90-027d-0854-af785fc3dec7", 3);
                } 
            }     
        }
        
    if (button == "back")
    {
        if (pCurrentSlide > 0) 
        { 
            pCurrentSlide = pCurrentSlide - 1;
        }else{
            pCurrentSlide = pSlideCount - 1;
        }
    }
    
    if (button == "open")
    {
        pCurrentSlide = 0;
    }
    
    if (button == "1")
    {
        if (pCurrentSlide < pSlideCount) 
        { 
            pCurrentSlide += 1;
        }else{
            pCurrentSlide = 0;
        }
    }
    
    if (button == "2")
    {
        if (pCurrentSlide+2 < pSlideCount) 
        { 
            pCurrentSlide += 2;
        }else{
            integer dif = (pSlideCount - pCurrentSlide);
            pCurrentSlide = 2-dif;
        }
    }
    
    if (button == "3")
    {
        if (pCurrentSlide+3 < pSlideCount) 
        { 
            pCurrentSlide += 3;
        }else{
            integer dif = (pSlideCount - pCurrentSlide);
            pCurrentSlide = 3-dif;
        }
    }
    
    if (button == "4")
    {
        if (pCurrentSlide+4 < pSlideCount) 
        { 
            pCurrentSlide += 4;
        }else{
            integer dif = (pSlideCount - pCurrentSlide);
            pCurrentSlide = 4-dif;
        }
    }
    
    if (button == "5")
    {
        if (pCurrentSlide+5 < pSlideCount) 
        { 
            pCurrentSlide += 5;
        }else{
            integer dif = (pSlideCount - pCurrentSlide);
            pCurrentSlide = 5-dif;
        }
    }     
     
    if (button == "next")
    {
        if (pCurrentSlide < pSlideCount) 
        { 
            pCurrentSlide += 1;
        }else{
            pCurrentSlide = 0;
        }
    }
    
    string name = llGetInventoryName(INVENTORY_TEXTURE, pCurrentSlide);
    if (name != "") {
        llSetTexture(name, 3);
    }else{
        pCurrentSlide = 0;
        string name0 = llGetInventoryName(INVENTORY_TEXTURE, pCurrentSlide);
        llSetTexture(name0, 3);
    }
    
    if (pCurrentSlide + 1 < pSlideCount) {
         string name1 = llGetInventoryName(INVENTORY_TEXTURE, pCurrentSlide+1);
         llSetLinkTexture(4, name1, 3);
    }else{
        integer dif = (pSlideCount - pCurrentSlide);
        string name10 = llGetInventoryName(INVENTORY_TEXTURE, 1-dif);
        llSetLinkTexture(4, name10, 3);
    }
    
    if (pCurrentSlide + 2 < pSlideCount) {
        string name2 = llGetInventoryName(INVENTORY_TEXTURE, pCurrentSlide + 2);
        llSetLinkTexture(5, name2, 3);
    }else{
        integer dif = (pSlideCount - pCurrentSlide);
        string name20 = llGetInventoryName(INVENTORY_TEXTURE, 2-dif);
        llSetLinkTexture(5, name20, 3);
    }
    
    if (pCurrentSlide + 3 < pSlideCount) {
        string name3 = llGetInventoryName(INVENTORY_TEXTURE, pCurrentSlide + 3);
        llSetLinkTexture(6, name3, 3);
    }else{
        integer dif = (pSlideCount - pCurrentSlide);
        string name30 = llGetInventoryName(INVENTORY_TEXTURE, 3-dif);
        llSetLinkTexture(6, name30, 3);
    }
    
    if (pCurrentSlide + 4 < pSlideCount) {
        string name4 = llGetInventoryName(INVENTORY_TEXTURE, pCurrentSlide + 4);
        llSetLinkTexture(7, name4, 3);
    }else{
        integer dif = (pSlideCount - pCurrentSlide);
        string name40 = llGetInventoryName(INVENTORY_TEXTURE, 4-dif);;
        llSetLinkTexture(7, name40, 3);
    }
    
    if (pCurrentSlide + 5 < pSlideCount) {
        string name5 = llGetInventoryName(INVENTORY_TEXTURE, pCurrentSlide + 5);
        llSetLinkTexture(8, name5, 3);
    }else{
        integer dif = (pSlideCount - pCurrentSlide);
        string name50 = llGetInventoryName(INVENTORY_TEXTURE, 5-dif);
        llSetLinkTexture(8, name50, 3);
    }     
}


    listen(integer incoming_channel, string name, key id, string mes)
    {
    if(id == llGetOwnerKey(id)){
        if (incoming_channel == dialog_channel){
            if (mes != "No Access"){
                llInstantMessage(pLastId, (name + " has granted "+mes+" permission to use their slide viewer."));
                list insertNameList = [(mes)];
                list tMess = [mes];
                integer foundIndex = llListFindList(pAccessList, tMess);
                    if (foundIndex == -1){
                        pAccessList = llListInsertList(pAccessList, insertNameList, 0);
                    }else{
                        llInstantMessage(pLastId, (mes+ " was already on the access list."));   
                    }
            }else{
                llInstantMessage(pLastId, (name + " has denied your request for permission to use their slide viewer."));
            }
            }
        }
    }
}
