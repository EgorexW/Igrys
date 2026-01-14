data:extend({
    {
        type = "bool-setting",
        name = "igrys-enhance-modded-science-packs",
        localised_description = {"mod-setting-description.igrys-enhance-modded-science-packs"},
        setting_type = "startup",
        default_value = true
    }, {
        type = "bool-setting",
        name = "igrys-steal-spidertron",
        setting_type = "startup",
        default_value = true
    }, {
        type = "bool-setting",
        name = "igrys-add-mineral-science-to-promethium",
        setting_type = "startup",
        default_value = true
    }, {
        type = "bool-setting",
        name = "igrys-enable-menu-simulations",
        setting_type = "startup",
        default_value = true
    }, {
        type = "bool-setting",
        name = "igrys-exclude-recipies-with-same-pack-as-ingredient",
        setting_type = "startup",
        default_value = false
    }, {
        type = "int-setting",
        name = "igrys-oil-band-offset",
        setting_type = "startup",
        default_value = 60,
        minimum_value = 30,
        maximum_value = 200
    }
})

if mods["new-diagonal-inserter"] then
    data:extend({
        {
            type = "bool-setting",
            name = "igrys-keep-diagonal-inserter-base",
            setting_type = "startup",
            default_value = false
        }
    })
end

-- Obsolete settings
data:extend({
    {
        type = "bool-setting",
        name = "igrys-unique-glass",
        localised_description = {"mod-setting-description.igrys-unique-glass"},
        setting_type = "startup",
        forced_value = false,
        hidden = true,
        default_value = false
    }, {
        type = "bool-setting",
        name = "igrys-enable-all",
        setting_type = "startup",
        default_value = false,
        hidden = true
    }
})