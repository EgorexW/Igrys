data:extend{
    {
        type = "item",
        name = "igrys-cermet",
        icon = "__Igrys__/Assets/Items/cermet.png",
        stack_size = 100,
        subgroup = "igrys-material",
        weight = 1 * kg,
        spoil_result = "steel-plate",
        spoil_ticks = 60 * 60 * 2,
        order = "c"
    }, {
        type = "recipe",
        name = "igrys-cermet",
        enabled = settings.startup["igrys-enable-all"].value,
        allow_productivity = true,
        ingredients = {
            {type="fluid", name="light-oil", amount=25},
            {type="item", name="stone-brick", amount=1}
        },
        results = {
            {type="item", name="igrys-cermet", amount=1},
        },
        energy_required = 2,
        category = "chemistry",
        --auto_recycle = false
    },

    {
        type = "item",
        name = "igrys-raw-cermite",
        icon = "__Igrys__/Assets/Items/raw-cermite.png",
        stack_size = 20,
        subgroup = "igrys-material",
        weight = 5 * kg,
        spoil_result = "igrys-cermite",
        spoil_ticks = 60 * 60 * 60 * 5,
        order = "d"
    }, {
        type = "recipe",
        name = "igrys-raw-cermite",
        enabled = settings.startup["igrys-enable-all"].value,
        allow_productivity = true,
        ingredients = {
            {type="item", name="igrys-cermet", amount=5}
        },
        results = {
            {type="item", name="igrys-raw-cermite", amount=1},
        },
        energy_required = 5,
        category = "advanced-crafting",
    }, {
        type = "item",
        name = "igrys-cermite",
        icon = "__Igrys__/Assets/Items/cermite.png",
        stack_size = 20,
        subgroup = "igrys-material",
        weight = 5 * kg,
        order = "e"
    }
}