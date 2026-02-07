data:extend({
    {
        type = "recipe",
        name = "igrys-magic-fluid-processing",
        category = "chemistry",
        subgroup = "igrys-magic",
        enabled = settings.startup["igrys-enable-all"].value,
        energy_required = 5,
        ingredients = {
            {type = "fluid", name = "igrys-magic-fluid", amount = 100},
            {type = "item", name = "igrys-conductive-brick", amount = 10},
        },
        results = {
            {type = "item", name = "igrys-magic-part-1", amount = 1},
            {type = "item", name = "igrys-magic-part-2", amount = 1},
            {type = "item", name = "igrys-magic-part-3", amount = 1}
        },
        icon = "__Igrys__/Assets/Items/magic-fluid.png",
        
        order = "a[magic-fluid-processing]"
    }
})