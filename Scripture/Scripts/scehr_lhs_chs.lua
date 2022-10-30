-- Logichammer: Scripture, Chaos, by scehr | v0.0.0.1 | 26.01.2022

-- When the game starts, check which legendary lord is fielding an army; change name according to this.
local function lhs_chs_ldr_init()

	local chsF = cm:get_faction("wh_main_chs_chaos");
	local chsCharList = chsF:character_list();

	if chsF:is_human() then

		for i = 0, chsCharList:num_items() - 1 do

			local chsChar = chsCharList:item_at(i);
			if chsChar:character_subtype("chs_archaon") and chsChar:has_military_force() then
				cm:change_custom_faction_name("wh_main_chs_chaos", "Swords of Chaos");

			elseif chsChar:character_subtype("chs_kholek_suneater") and chsChar:has_military_force() then
				cm:change_custom_faction_name("wh_main_chs_chaos", "Suneater's Host");

			elseif chsChar:character_subtype("chs_prince_sigvald") and chsChar:has_military_force() then
				cm:change_custom_faction_name("wh_main_chs_chaos", "The Decadent Host");
			end
		end
	end
end

cm:add_first_tick_callback_new(
    function()
		if cm:model():campaign_name("main_warhammer") then
			lhs_chs_ldr_init()
		end
    end
)