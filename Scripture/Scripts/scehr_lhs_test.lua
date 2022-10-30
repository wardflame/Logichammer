cm:add_first_tick_callback(
    function()
        local campMod = cm:get_campaign_name();
        out("scehr: "..campMod);
    end
)