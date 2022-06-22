util.keep_running()
util.require_natives(1651208000)


menuA =  menu.action
menuL = menu.list
menuR = menu.my_root()

--root list
onlineRoot = menuL(menuR, "Online", {}, "")

--secondary list
teleRoot = menuL(onlineRoot, "Teleports", {}, "")

menuA(teleRoot, "TP into Avenger", {"tpaven"}, "Teleport into Avengers holding area/facility", function ()
    ENTITY.SET_ENTITY_COORDS(players.user_ped(), 514.31335, 4750.5264, -68.99592, false, false, false, false)  
   end)

menuA(teleRoot, "TP into Kosatka", {"tpkosatka"}, "MUST HAVE CALLED IN Teleport to Kosatka Cayo Perico Heist board", function ()
        ENTITY.SET_ENTITY_COORDS(players.user_ped(), 1561.1543, 385.98312, -49.68535, false, false, false, false)  
       end)

menuA(teleRoot, "TP into MOC", {"tpMOC"}, "MUST HAVE CALLED IN Teleport into MOC command center/bunker", function ()
        ENTITY.SET_ENTITY_COORDS(players.user_ped(), 1103.3782, -3011.6018, -38.999435, false, false, false, false)  
       end)

menuA(teleRoot, "TP into Terrorbyte", {"tpterro"}, "Teleport to Terrorbyte Business control", function ()
        ENTITY.SET_ENTITY_COORDS(players.user_ped(), -1421.2347, -3012.9988, -79.04994, false, false, false, false)  
       end)       

menuA(teleRoot, "TP to Special Cargo", {"scargo"}, "Teleport to Special Cargo pickup", function ()
    local cPickup = HUD.GET_BLIP_COORDS(HUD.GET_NEXT_BLIP_INFO_ID(478))
    HUD.GET_BLIP_COORDS(HUD.GET_NEXT_BLIP_INFO_ID(478))
    if cPickup.x == 0 and cPickup.y == 0 and cPickup.z == 0 then
        util.toast ("No Cargo Found") else
            ENTITY.SET_ENTITY_COORDS(players.user_ped(), cPickup.x, cPickup.y, cPickup.z, false, false, false, false)  
    end
   end)

menuA(teleRoot, "TP to Vehicle Cargo", {"vcargo"}, "Teleport to Vehicle Cargo pickup", function ()
    local vPickup = HUD.GET_BLIP_COORDS(HUD.GET_NEXT_BLIP_INFO_ID(523))
        HUD.GET_BLIP_COORDS(HUD.GET_NEXT_BLIP_INFO_ID(523))
        if vPickup.x == 0 and vPickup.y == 0 and vPickup.z == 0 then
            util.toast ("No Vehicle Found") else
                ENTITY.SET_ENTITY_COORDS(players.user_ped(), vPickup.x, vPickup.y, vPickup.z, false, false, false, false)  
        end
       end)



   --credits to Keramis and Jerry123 for the tutorial
   --credits to Shappire for the finishing touches they are the real MVP for helping everyone
   --credits to Vsus and ghozt for pointing me in the right direction
   --Script made by acjoker8818