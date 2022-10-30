-- Logichammer: Scripture, Greenskins, by scehr | v0.0.0.21 | 03.02.2022
-- NOTES: Removed generic Greenskin CNC and added a band aid fix.

local function add_grimgor_battleswon_listener()
	out("#### LHS: Adding Grimgor (Battles Won) Listener ####");
	cm:add_faction_turn_start_listener_by_name(
		"lhs_grn_grimgor_BattleCount",
		"wh_main_grn_greenskins",
		function()
            local grim1 = cm:get_saved_value("grim1");
            local grim2 = cm:get_saved_value("grim2");
            local grim3 = cm:get_saved_value("grim3");

			local grimFObj = cm:get_faction("wh_main_grn_greenskins");
            local grimFCL = grimFObj:character_list();

            local battlesWon = 0;
            for i = 0, grimFCL:num_items() - 1 do
                local char = grimFCL:item_at(i);
                local math = battlesWon + char:battles_won();
                battlesWon = math;
            end

            if battlesWon >= 10 and 50 > battlesWon and not grim1 then
                cm:change_custom_faction_name("wh_main_grn_greenskins", "Grimgor's ’Ardboyz");
                cm:set_saved_value("grim1", true);
            elseif battlesWon >= 50 and 100 > battlesWon and not grim2 then
                cm:change_custom_faction_name("wh_main_grn_greenskins", "Grimgor's Tuff Choppas");
                cm:set_saved_value("grim2", true);
            elseif battlesWon >= 100 and not grim3 then
                cm:change_custom_faction_name("wh_main_grn_greenskins", "Da Once and Future Git's Waaagh!");
                cm:set_saved_value("grim3", true);
                cm:remove_faction_turn_start_listener_by_name("lhs_grn_grimgor_BattleCount");
            end
		end,
		true
	);
end

local function add_grimgor_dabest_listener()
    out("#### LHS: Adding Grimgor (Da Best) Listener ####");
    core:add_listener(
        "lhs_grn_grimgor_DaBest",
        "CharacterCompletedBattle",
        function(context)
            return context:character():character_subtype("grn_grimgor_ironhide") and context:character():won_battle() == true;
        end,
        function(context)
            local attacker = context:pending_battle():attacker();
            local defender = context:pending_battle():defender();

            if attacker:character_subtype("emp_karl_franz") or defender:character_subtype("emp_karl_franz") and not grimFranz then
                cm:set_saved_value("grimFranz", true);
                out("#### LHS: Grimgor beat Franz! ####");
            elseif attacker:character_subtype("wh2_main_hef_tyrion") or defender:character_subtype("wh2_main_hef_tyrion") and not grimTyrion then
                cm:set_saved_value("grimTyrion", true);
                out("#### LHS: Grimgor beat Tyrion! ####");
            elseif attacker:character_subtype("wh2_main_def_malekith") or defender:character_subtype("wh2_main_def_malekith") and not grimMalekith then
                cm:set_saved_value("grimMalekith", true);
                out("#### LHS: Grimgor beat Malekith! ####");
            elseif attacker:character_subtype("wh2_dlc16_skv_throt_the_unclean") or defender:character_subtype("wh2_dlc16_skv_throt_the_unclean") and not grimThrot then
                cm:set_saved_value("grimThrot", true);
                out("#### LHS: Grimgor beat Throt! ####");
            elseif attacker:character_subtype("dwf_ungrim_ironfist") or defender:character_subtype("dwf_ungrim_ironfist") and not grimUngrim then
                cm:set_saved_value("grimUngrim", true);
                out("#### LHS: Grimgor beat Ungrim! ####");
            elseif attacker:character_subtype("chs_archaon") or defender:character_subtype("chs_archaon") and not grimArchaon then
                cm:set_saved_value("grimArchaon", true);
                out("#### LHS: Grimgor beat Archaon! ####");
            end

            local grimFranz = cm:get_saved_value("grimFranz");
            local grimTyrion = cm:get_saved_value("grimTyrion");
            local grimMalekith = cm:get_saved_value("grimMalekith");
            local grimThrot = cm:get_saved_value("grimThrot");
            local grimUngrim = cm:get_saved_value("grimUngrim");
            local grimArchaon = cm:get_saved_value("grimArchaon");

            if grimFranz and grimTyrion and grimMalekith and grimThrot and grimUngrim and grimArchaon then
                cm:change_custom_faction_name("wh_main_grn_greenskins", "Da Best Waaagh!");
                cm:set_saved_value("grimDaBest", true);
                cm:remove_listener("lhs_grn_grimgor_DaBest");
                cm:remove_faction_turn_start_listener_by_name("lhs_grn_grimgor_BattleCount");
                out("#### LHS: Grimgor is Da Best! ####");
            end
            local grimDaBest = cm:get_saved_value("grimDaBest");
        end,
        true
    );
end

local function add_wurrzag_kroosade_listener()
    out("#### LHS: Adding Wurrzag (Badlands) Listener ####");
    cm:add_faction_turn_start_listener_by_name(
        "lhs_grn_wurrzag_WesternBadlands",
        "wh_main_grn_orcs_of_the_bloody_hand",
        function()
            local wurrzF = cm:get_faction("wh_main_grn_orcs_of_the_bloody_hand");
            local wurrzFCL = grimFObj:character_list(); -- USE FOR CHARS

            if wurrzF:holds_entire_province("wh_main_western_badlands", false) then
                cm:change_custom_faction_name("wh_main_grn_orcs_of_the_bloody_hand", "Da Kroosade!")
                cm:set_saved_value("wurrzKroosade", true)
            end
        end,
        true
    );
end

local function add_wurrzag_gorkamorka_listener()
    out("#### LHS: Adding Wurrzag (Gorkamorka) Listener ####");
    cm:add_faction_turn_start_listener_by_name(
        "lhs_grn_wurrzag_WesternBadlands",
        "wh_main_grn_orcs_of_the_bloody_hand",
        function()
            local wurrzF = cm:get_faction("wh_main_grn_orcs_of_the_bloody_hand");
            local wurrzFCL = grimFObj:character_list(); -- USE FOR CHARS

            for i = 0, wurrzFCL:num_items() - 1 do
                local char = wurrzFCL:item_at(i);
                if char:character_subtype("grn_grimgor_ironhide") then
                    cm:set_saved_value("wurrzGrim", true)
                end
                if char:character_subtype("dlc06_grn_skarsnik") then
                    cm:set_saved_value("wurrzSkar", true)
                end
            end

            local grimgor = cm:get_saved_value("wurrzGrim");
            local skarsnik = cm:get_saved_value("wurrzSkar");
            local gorkamorka = cm:get_saved_value("wurrzGorkaMorka");
            if not gorkamorka then
                if grimgor and not skarsnik then
                    cm:change_custom_faction_name("wh_main_grn_orcs_of_the_bloody_hand", "Da Fist of Gork!");
                elseif skarsnik and not grimgor then
                    cm:change_custom_faction_name("wh_main_grn_orcs_of_the_bloody_hand", "Da Hand of Mork!");
                elseif grimgor and skarsnik then
                    cm:change_custom_faction_name("wh_main_grn_orcs_of_the_bloody_hand", "Da Prophesied Waaagh!")
                    cm:set_saved_value("wurrzGorkaMorka", true)
                end
            end

            if gorkamorka then
                local battlesWon = 0;
                for i = 0, wurrzFCL:num_items() - 1 do
                    local char = wurrzFCL:item_at(i);
                    local math = battlesWon + char:battles_won();
                    battlesWon = math;
                end

                if battlesWon > 100 then
                    cm:change_custom_faction_name("wh_main_grn_orcs_of_the_bloody_hand", "Da Great Gorkamorka Waaagh!")
                    cm:set_saved_value("wurrzGorkaMorkaUltimate", true)
                end
            end
        end,
        true
    );
end

local genericGreenskins = {
    "wh_main_grn_black_venom",
	"wh_main_grn_bloody_spearz",
	"wh_main_grn_broken_nose",
	"wh_main_grn_crooked_moon",
	"wh_main_grn_necksnappers",
	"wh_main_grn_red_eye",
	"wh_main_grn_red_fangs",
	"wh_main_grn_scabby_eye",
	"wh_main_grn_skull-takerz",
	"wh_main_grn_skullsmasherz",
	"wh_main_grn_teef_snatchaz",
	"wh_main_grn_top_knotz",
	"wh2_main_grn_arachnos",
	"wh2_main_grn_blue_vipers",
	"wh2_dlc12_grn_leaf_cutterz_tribe",
	"wh2_dlc14_grn_red_cloud",
	"wh2_dlc15_grn_bonerattlaz",
	"wh2_dlc15_grn_broken_axe",
	"wh2_dlc15_grn_skull_crag"
}

-- Not currently functioning correctly.
--[[local function add_grn_generic_greentide_listener()
    out("#### LHS: Adding Greenskin Generic Greentide Listener ####")
    core:add_listener(
        "lhs_grn_generic_Greentide",
        "FactionTurnStart",
        function(context)
            for i = 1, #genericGreenskins do
                if context:faction():name() == genericGreenskins[i] then
                    return context:faction():name() == genericGreenskins[i];
                end
            end
        end,
        function(context)
            local grnF = context:faction();
            local shouldRename = false;

            for i = 1, #genericGreenskins do
                if genericGreenskins[i] ~= grnF:name() then
                    local grnFOther = cm:get_faction(genericGreenskins[i]);
                    if grnFOther:is_dead() == false then
                        shouldRename = false;
                    else
                        shouldRename = true;
                    end
                end
            end

            if shouldRename then
                cm:change_custom_faction_name(grnF:name(), "Da Greentide!")
            end
        end,
        true
    )
end]]--

cm:add_first_tick_callback(
    function()
        -- Grimgor Listeners
        local grim3 = cm:get_saved_value("grim3");
        local grimDaBest = cm:get_saved_value("grimDaBest");

        if not grimDaBest then
            add_grimgor_dabest_listener();
            if not grim3 then
                add_grimgor_battleswon_listener();
            end
        end

        -- Wurrzag Listeners
        local wurrzGorkaMorkaUltimate = cm:get_saved_value("wurrzGorkaMorkaUltimate");
        local wurrzKroosade = cm:get_saved_value("wurrzKroosade");

        if not wurrzGorkaMorkaUltimate then
            add_wurrzag_gorkamorka_listener();
            if not wurrzKroosade then
                add_wurrzag_kroosade_listener();
            end
        end

        -- Generic Listeners [NOT WORKING, NEEDS TESTING]
        -- add_grn_generic_greentide_listener();

        -- Generic Fix, for now...
        local grnFix = cm:get_saved_value("grnFix");
        if not grnFix then
            cm:change_custom_faction_name("wh_main_grn_black_venom", "Black Venom Tribe")
            cm:change_custom_faction_name("wh_main_grn_bloody_spearz", "Blood Spearz Tribe")
            cm:change_custom_faction_name("wh_main_grn_broken_nose", "Broken Nose Tribe")
            cm:change_custom_faction_name("wh_main_grn_crooked_moon", "Crooked Moon Tribe")
            cm:change_custom_faction_name("wh_main_grn_necksnappers", "Crookhoodz Tribe")
            cm:change_custom_faction_name("wh_main_grn_red_eye", "Red Eye Tribe")
            cm:change_custom_faction_name("wh_main_grn_red_fangs", "Red Fang Tribe")
            cm:change_custom_faction_name("wh_main_grn_scabby_eye", "Scabby Eye Tribe")
            cm:change_custom_faction_name("wh_main_grn_skull-takerz", "Skull-Takerz Tribe")
            cm:change_custom_faction_name("wh_main_grn_skullsmasherz", "Skullsmasherz Tribe")
            cm:change_custom_faction_name("wh_main_grn_teef_snatchaz", "Teef Snatchaz Tribe")
            cm:change_custom_faction_name("wh_main_grn_top_knotz", "Top Knotz Tribe")
            cm:change_custom_faction_name("wh2_main_grn_arachnos", "Arachnos Tribe")
            cm:change_custom_faction_name("wh2_main_grn_blue_vipers", "Blue Vipers Tribe")
            cm:change_custom_faction_name("wh2_dlc12_grn_leaf_cutterz_tribe", "Leaf-Cutterz Tribe")
            cm:change_custom_faction_name("wh2_dlc14_grn_red_cloud", "Red Cloud Tribe")
            cm:change_custom_faction_name("wh2_dlc15_grn_bonerattlaz", "Bonerattlaz Tribe")
            cm:change_custom_faction_name("wh2_dlc15_grn_broken_axe", "Broken Axe Tribe")
            cm:change_custom_faction_name("wh2_dlc15_grn_skull_crag", "Skull Crag Tribe")
            cm:set_saved_value("grnFix", true)
        end
    end
)