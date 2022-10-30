-- Logichammer: Scripture, Empire, by scehr | v0.0.0.2 | 05.02.2022

-- When the game starts, check which legendary lord is fielding an army; change name according to this.
local function lhs_emp_leader_init()

	local empF = cm:get_faction("wh_main_emp_empire");
	local empFCL = empF:character_list();

	if empF:is_human() then

		for i = 0, empFCL:num_items() - 1 do

			local empChar = empFCL:item_at(i);
			if empChar:character_subtype("emp_karl_franz") and empChar:has_military_force() then
				cm:change_custom_faction_name("wh_main_emp_empire", "Altdorf Royal Guard");

			elseif empChar:character_subtype("dlc04_emp_volkmar") and empChar:has_military_force() then
				cm:change_custom_faction_name("wh_main_emp_empire", "Grand Theogonist's Guard");
			end
		end
	end
end

local function add_franzvolk_reikland_listener()
	out("#### LHS: Adding Franz/Volkmar Reikland Listener ####")
	cm:add_faction_turn_start_listener_by_name(
		"lhs_emp_franzvolkmar_Reikland",
		"wh_main_emp_empire",
		function()
			local empF = cm:get_faction("wh_main_emp_empire");

			if empF:holds_entire_province("wh_main_reikland", false) then
				cm:change_custom_faction_name("wh_main_emp_empire", "Grand Principality of Reikland");
				cm:set_saved_value("franzvolkReikland", true);
				cm:remove_faction_turn_start_listener_by_name("lhs_emp_franzvolkmar_Reikland");
			end
		end,
		true
	);
end

local genericEmpFactions = {
    "wh_main_emp_empire",
    "wh2_dlc13_emp_golden_order",
    "wh_main_emp_averland",
    "wh_main_emp_hochland",
    "wh_main_emp_middenland",
    "wh_main_emp_nordland",
    "wh_main_emp_ostermark",
    "wh_main_emp_ostland",
    "wh_main_emp_stirland",
    "wh_main_emp_talabecland",
    "wh_main_emp_wissenland"
}

local empireProvinces = {
	"wh_main_middenland",
	"wh_main_the_wasteland",
	"wh2_main_misty_hills",
	"wh_main_nordland",
    "wh_main_hochland",
    "wh_main_ostland",
    "wh_main_reikland",
    "wh_main_talabecland",
    "wh_main_ostermark",
    "wh_main_western_sylvania",
    "wh_main_eastern_sylvania",
    "wh_main_stirland",
    "wh_main_wissenland",
    "wh2_main_solland",
    "wh_main_averland",
    "wh2_main_the_moot"
}

local function add_emp_generic_laststanding_listener()
	out("#### LHS: Adding Empire Generic Empire of Man Listener ####")
    core:add_listener(
        "lhs_emp_generic_EmpireOfMan",
        "FactionTurnStart",
        function(context)
            for i = 1, #genericEmpFactions do
                if context:faction():name() == genericEmpFactions[i] then
                    return context:faction():name() == genericEmpFactions[i];
                end
            end
        end,
        function(context)
            local empF = context:faction();

            local count = 0;
            for i = 1, #empireProvinces do
                if empF:holds_entire_province(empireProvinces[i], false) then
                    count = count + 1;
                end
            end

            out("LHS "..empF:name().." province count: "..count)

            if count == #empireProvinces then
                cm:change_custom_faction_name(empF:name(), "Empire of Man")
            end
        end,
        true
    )
end

cm:add_first_tick_callback(
	function()
		if cm:model():campaign_name("main_warhammer") then
            if cm:is_new_game() then
		    	lhs_emp_leader_init();
		    end

		    local reiklandTaken = cm:get_saved_value("franzvolkReikland");
		    if not reiklandTaken then
		    	add_franzvolk_reikland_listener();
		    end

		    add_emp_generic_laststanding_listener();
        end
	end
)