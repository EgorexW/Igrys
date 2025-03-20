data:extend({
    {
        type = "recipe",
        name = "igrys-free-copper-plate",
        hidden = true,
        enabled = settings.startup["igrys-enable-all"].value,
        results = {
            {type="item", name="copper-plate", amount=1},
        },
        energy_required = 1,
        category = "igrys-making-stuff-out-of-thin-air"
    }, {
        type = "recipe-category",
        name = "igrys-making-stuff-out-of-thin-air"
    }
})