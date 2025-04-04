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
            {type = "item", name = "automation-science-pack", amount = 5},
        },
        icons = MadeFromIcons(data.raw["tool"]["automation-science-pack"].icon, "__Igrys__/Assets/Items/glass.png"),
        subgroup = "science-pack",
        order = "az[igrys-automation-science-pack]",
        allow_productivity = true
    }, {
        type = "recipe",
        name = "igrys-production-science-pack",
        enabled = settings.startup["igrys-enable-all"].value,
        energy_required = 20,
        ingredients =
        {
            {type = "item", name = "stone-furnace", amount = 1},
            {type = "item", name = "productivity-module", amount = 1},
            {type = "item", name = "rail", amount = 30}
        },
        results = {{type="item", name="production-science-pack", amount=3}},
        icons = MadeFromIcons(data.raw["tool"]["production-science-pack"].icon, data.raw["item"]["stone-furnace"].icon),
        order = "ez[production-science-pack]",
        allow_productivity = true
    },
})