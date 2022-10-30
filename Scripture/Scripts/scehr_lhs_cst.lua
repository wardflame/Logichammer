-- Logichammer: Scripture, Vampire Coast, by scehr | v0.0.0.2 | 05.02.2022

local function add_harkon_infamy_listener()
	out("#### LHS: Adding Harkon Infamy Listener ####");
	cm:add_faction_turn_start_listener_by_name(
		"lhs_cst_harkon_FactionTurnStart",
		"wh2_dlc11_cst_vampire_coast",
		function()
            local hark1 = cm:get_saved_value("hark1");
            local hark2 = cm:get_saved_value("hark2");
            local hark3 = cm:get_saved_value("hark3");
            local hark4 = cm:get_saved_value("hark4");

			local harkFObj = cm:get_faction("wh2_dlc11_cst_vampire_coast");
            local harkFInfamy = harkFObj:pooled_resource("cst_infamy");
            if harkFInfamy:value() >= 6150 and 12100 > harkFInfamy:value() and not hark1 then
                cm:change_custom_faction_name("wh2_dlc11_cst_vampire_coast", "The Great Luthor Harkon's Host");
                cm:set_saved_value("hark1", true);
            elseif harkFInfamy:value() >= 12100 and 18050 > harkFInfamy:value() and not hark2 then
                cm:change_custom_faction_name("wh2_dlc11_cst_vampire_coast", "The Arch-Grand Commodore's Armada");
                cm:set_saved_value("hark2", true);
            elseif harkFInfamy:value() >= 12100 and 24000 > harkFInfamy:value() and not hark3 then
                cm:change_custom_faction_name("wh2_dlc11_cst_vampire_coast", "Scourge of the Pirate King");
                cm:set_saved_value("hark3", true);
            elseif harkFInfamy:value() >= 24000 and not hark4 then
                cm:change_custom_faction_name("wh2_dlc11_cst_vampire_coast", "Legions of the Abyssal Mortarch");
                cm:set_saved_value("hark4", true);
                cm:remove_faction_turn_start_listener_by_name("lhs_cst_harkon_FactionTurnStart");
            end
		end,
		true
	);
end

local function add_noctilus_infamy_listener()
    out("#### LHS: Adding Noctilus Infamy Listener ####")
    cm:add_faction_turn_start_listener_by_name(
		"lhs_cst_noctilus_FactionTurnStart",
		"wh2_dlc11_cst_noctilus",
		function()
            local noct1 = cm:get_saved_value("noct1");
            local noct2 = cm:get_saved_value("noct2");
            local noct3 = cm:get_saved_value("noct3");
            local noct4 = cm:get_saved_value("noct4");

			local noctFObj = cm:get_faction("wh2_dlc11_cst_noctilus");
            local noctFInfamy = noctFObj:pooled_resource("cst_infamy");
            if noctFInfamy:value() >= 6150 and 12100 > noctFInfamy:value() and not noct1 then
                cm:change_custom_faction_name("wh2_dlc11_cst_noctilus", "Host of Galleon's Grave");
                cm:set_saved_value("noct1", true);
            elseif noctFInfamy:value() >= 12100 and 18050 > noctFInfamy:value() and not noct2 then
                cm:change_custom_faction_name("wh2_dlc11_cst_noctilus", "The Dreadfleet");
                cm:set_saved_value("noct2", true);
            elseif noctFInfamy:value() >= 12100 and 24000 > noctFInfamy:value() and not noct3 then
                cm:change_custom_faction_name("wh2_dlc11_cst_noctilus", "The Dreadrealm");
                cm:set_saved_value("noct3", true);
            elseif noctFInfamy:value() >= 24000 and not noct4 then
                cm:change_custom_faction_name("wh2_dlc11_cst_noctilus", "Empire of the Archcount");
                cm:set_saved_value("noct4", true);
                cm:remove_faction_turn_start_listener_by_name("lhs_cst_noctilus_FactionTurnStart");
            end
		end,
		true
	);
end

local function add_aranessa_infamy_listener()
    out("#### LHS: Adding Aranessa Infamy Listener ####")
    cm:add_faction_turn_start_listener_by_name(
		"lhs_cst_aranessa_FactionTurnStart",
		"wh2_dlc11_cst_pirates_of_sartosa",
		function()
            local aran1 = cm:get_saved_value("aran1");
            local aran2 = cm:get_saved_value("aran2");
            local aran3 = cm:get_saved_value("aran3");
            local aran4 = cm:get_saved_value("aran4");

			local aranFObj = cm:get_faction("wh2_dlc11_cst_pirates_of_sartosa");
            local aranFInfamy = aranFObj:pooled_resource("cst_infamy");
            if aranFInfamy:value() >= 6150 and 12100 > aranFInfamy:value() and not aran1 then
                cm:change_custom_faction_name("wh2_dlc11_cst_pirates_of_sartosa", "Saltspite's Scourge'");
                cm:set_saved_value("aran1", true);
            elseif aranFInfamy:value() >= 12100 and 18050 > aranFInfamy:value() and not aran2 then
                cm:change_custom_faction_name("wh2_dlc11_cst_pirates_of_sartosa", "The Grand Alliance");
                cm:set_saved_value("aran2", true);
            elseif aranFInfamy:value() >= 12100 and 24000 > aranFInfamy:value() and not aran3 then
                cm:change_custom_faction_name("wh2_dlc11_cst_pirates_of_sartosa", "Decadent Pirate Principality of Sartosa");
                cm:set_saved_value("aran3", true);
            elseif aranFInfamy:value() >= 24000 and not aran4 then
                cm:change_custom_faction_name("wh2_dlc11_cst_pirates_of_sartosa", "Realm of the Tide Queen");
                cm:set_saved_value("aran4", true);
                cm:remove_faction_turn_start_listener_by_name("lhs_cst_aranessa_FactionTurnStart");
            end
		end,
		true
	);
end

local function add_cylostra_infamy_listener()
    out("#### LHS: Adding Cylostra Infamy Listener ####")
    cm:add_faction_turn_start_listener_by_name(
		"lhs_cst_cylostra_FactionTurnStart",
		"wh2_dlc11_cst_the_drowned",
		function()
            local cylo1 = cm:get_saved_value("cylo1");
            local cylo2 = cm:get_saved_value("cylo2");
            local cylo3 = cm:get_saved_value("cylo3");
            local cylo4 = cm:get_saved_value("cylo4");

			local cyloFObj = cm:get_faction("wh2_dlc11_cst_the_drowned");
            local cyloFInfamy = cyloFObj:pooled_resource("cst_infamy");
            if cyloFInfamy:value() >= 6150 and 12100 > cyloFInfamy:value() and not cylo1 then
                cm:change_custom_faction_name("wh2_dlc11_cst_the_drowned", "Drowned Host of the Storm Siren");
                cm:set_saved_value("cylo1", true);
            elseif cyloFInfamy:value() >= 12100 and 18050 > cyloFInfamy:value() and not cylo2 then
                cm:change_custom_faction_name("wh2_dlc11_cst_the_drowned", "Stromfels' Blight");
                cm:set_saved_value("cylo2", true);
            elseif cyloFInfamy:value() >= 12100 and 24000 > cyloFInfamy:value() and not cylo3 then
                cm:change_custom_faction_name("wh2_dlc11_cst_the_drowned", "Legion of the Deep");
                cm:set_saved_value("cylo3", true);
            elseif cyloFInfamy:value() >= 24000 and not cylo4 then
                cm:change_custom_faction_name("wh2_dlc11_cst_the_drowned", "Maw of the Seas");
                cm:set_saved_value("cylo4", true);
                cm:remove_faction_turn_start_listener_by_name("lhs_cst_cylostra_FactionTurnStart");
            end
		end,
		true
	);
end

cm:add_first_tick_callback(
    function()
        local harkDone = cm:get_saved_value("hark4");
        local noctDone = cm:get_saved_value("noct4");
        local aranDone = cm:get_saved_value("aran4");
        local cyloDone = cm:get_saved_value("cylo4");

        if not harkDone then
            add_harkon_infamy_listener();
        end

        if not noctDone then
            add_noctilus_infamy_listener();
        end

        if not aranDone then
            add_aranessa_infamy_listener();
        end

        if not cyloDone then
            add_cylostra_infamy_listener();
        end        
    end
)
