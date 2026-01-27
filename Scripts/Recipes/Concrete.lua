data:extend({
    {
        type = "recipe",
        name = "igrys-raw-cermite-concrete-subproduct",
        enabled = settings.startup["igrys-enable-all"].value,
        allow_productivity = true,
        ingredients = {
            {type="item", name="igrys-cermet", amount=10}
        },
        results = {
            {type="item", name="igrys-raw-cermite", amount=1},
            {type="item", name="concrete", amount=5},
            {type="item", name="refined-concrete", amount=1}
        },
        energy_required = 25,
        category = "advanced-crafting",
        allow_as_intermediate = false,
        auto_recycle = false,
        icons = MadeFromIcons(data.raw["item"]["igrys-raw-cermite"].icon, data.raw["item"]["concrete"].icon),
        order = "de",
        subgroup = "igrys-material",
    }
})