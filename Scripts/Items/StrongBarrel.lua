data:extend({
    {
        type = "item",
        name = "igrys-strong-barrel",
        icon = "__Igrys__/Assets/Items/empty-barrel.png",
        subgroup = "igrys-barreling",
        order = "a",
        stack_size = 10,
        weight = 1 / 200 * tons,
    },{
        type = "recipe",
        name = "igrys-strong-barrel",
        enabled = settings.startup["igrys-enable-all"].value,
        allow_productivity = true,
        ingredients = {
            {type="item", name="igrys-glass", amount=10},
            {type="item", name="igrys-rich-magic-teseract", amount=1}
        },
        results = {
            {type="item", name="igrys-strong-barrel", amount=10},
        },
        energy_required = 10,
        category = "advanced-crafting"
    }, {
        type = "item",
        name = "igrys-strong-barrel-filled-magic-fluid",
        icon = "__Igrys__/Assets/Items/magic-fluid-barrel.png",
        subgroup = "igrys-barreling",
        order = "b",
        stack_size = 10,
        weight = 1 / 100 * tons,
    }, {
        type = "recipe",
        name = "igrys-strong-barrel-filled-magic-fluid",
        enabled = settings.startup["igrys-enable-all"].value,
        allow_productivity = false,
        ingredients = {
            {type="item", name="igrys-strong-barrel", amount=1, ignored_by_stats=1},
            {type="fluid", name="igrys-magic-fluid", amount=10, ignored_by_stats=10}
        },
        results = {
            {type="item", name="igrys-strong-barrel-filled-magic-fluid", amount=1},
        },
        energy_required = 1,
        category = "crafting-with-fluid",
    }, {
        type = "recipe",
        name = "igrys-empty-strong-barrel-filled-magic-fluid",
        subgroup = "igrys-barreling",
        enabled = settings.startup["igrys-enable-all"].value,
        allow_productivity = false,
        ingredients = {
            {type="item", name="igrys-strong-barrel-filled-magic-fluid", amount=1},
        },
        results = {
            {type="item", name="igrys-strong-barrel", amount=1, ignored_by_stats=1},
            {type="fluid", name="igrys-magic-fluid", amount=10, ignored_by_stats=10}
        },
        energy_required = 1,
        category = "crafting-with-fluid",
        icon = "__Igrys__/Assets/Items/magic-fluid-barrel.png",
        order = "c"
    }
})

PlanetsLib.set_default_import_location("igrys-strong-barrel", "igrys")
PlanetsLib.set_default_import_location("igrys-strong-barrel-filled-magic-fluid", "igrys")
PlanetsLib.restrict_to_planet(data.raw["recipe"]["igrys-strong-barrel"], "igrys")