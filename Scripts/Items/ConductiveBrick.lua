data:extend{
    {
        type = "item",
        name = "igrys-conductive-brick",
        icon = "__Igrys__/Assets/Items/conductive-brick.png",
        stack_size = 200,
        subgroup = "igrys-material",
        weight = 1000 * 5,
        order = "b"
    },
    {
        type = "recipe",
        name = "igrys-conductive-brick",
        enabled = settings.startup["igrys-enable-all"].value,
        allow_productivity = true,
        ingredients = {
            {type="item", name="stone-brick", amount=1},
            {type="item", name="copper-plate", amount=2}
        },
        results = {
            {type="item", name="igrys-conductive-brick", amount=1},
        },
        main_product = "igrys-conductive-brick",
        energy_required = 3,
        category = "electronics"
    }
}

PlanetsLib.set_default_import_location("igrys-conductive-brick", "igrys")