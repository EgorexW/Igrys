data:extend({
    {
        type = "recipe",
        name = "igrys-automation-science-pack",
        enabled = settings.startup["igrys-enable-all"].value,
        energy_required = 10,
        ingredients = {
            {type = "item", name = "copper-plate", amount = 3},
            {type = "item", name = "igrys-glass", amount = 2}
        },
        results = {
            {type = "item", name = "automation-science-pack", amount = 8},
        },
        icons = MadeFromIcons(data.raw["tool"]["automation-science-pack"].icon, data.raw["item"]["igrys-glass"].icon),
        subgroup = "science-pack",
        order = "az[igrys-automation-science-pack]",
        allow_productivity = true
    }
})