require("Scripts.Other.Icons")

data:extend{
    {
        type = "recipe",
        name = "igrys-electronic-circuit",
        ingredients =
        {
            {type = "item", name = "igrys-glass", amount = 1},
            {type = "item", name = "copper-cable", amount = 5}
        },
        results = {{type="item", name="electronic-circuit", amount=3}},
        icons = MadeFromIcons(data.raw["item"]["electronic-circuit"].icon, data.raw["item"]["igrys-glass"].icon),
        enabled = false,
        allow_productivity = true,
        energy_required = 3,
        category = "electronics",
        allow_as_intermediate = false,
        auto_recycle = false
    }, {
        type = "recipe",
        name = "igrys-sulfuric-acid",
        enabled = false,
        category = "chemistry-or-cryogenics",
        subgroup = "fluid-recipes",
        energy_required = 1,
        ingredients =
        {
            {type = "item", name = "igrys-cermet", amount = 5},
            {type = "fluid", name = "water", amount = 100},
            {type = "fluid", name = "light-oil", amount = 100}
        },
        results =
        {
            {type = "fluid", name = "sulfuric-acid", amount = 50}
        },
        icons = MadeFromIcons(data.raw["fluid"]["sulfuric-acid"].icon, "__Igrys__/Assets/Items/cermet.png"),
        allow_productivity = true,
        allow_as_intermediate = false,
        auto_recycle = false
    }, {
        type = "recipe",
        name = "igrys-plastic-bar",
        category = "chemistry-or-cryogenics",
        energy_required = 1,
        enabled = false,
        auto_recycle = false,
        ingredients =
        {
            {type = "fluid", name = "light-oil", amount = 30},
            {type = "item", name = "igrys-glass", amount = 1}
        },
        results =
        {
            {type = "item", name = "plastic-bar", amount = 1}
        },
        order = "b[chemistry]-b[plastic-bar]-c[igrys-variant]",
        icons = MadeFromIcons(data.raw["item"]["plastic-bar"].icon, data.raw["item"]["igrys-glass"].icon),
        allow_productivity = true,
        allow_as_intermediate = false,
        auto_recycle = false
    }
}