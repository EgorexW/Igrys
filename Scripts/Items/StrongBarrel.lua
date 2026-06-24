data:extend({
    {
        type = "item",
        name = "igrys-strong-barrel",
        icon = "__Igrys__/Assets/Items/Barrel/Empty.png",
        icon_size = 128,
        subgroup = "igrys-barreling",
        order = "a",
        stack_size = 10,
        weight = 1 / 200 * tons,
    }, {
        type = "recipe",
        name = "igrys-strong-barrel",
        enabled = settings.startup["igrys-enable-all"].value,
        allow_productivity = true,
        ingredients = {
            { type = "item", name = "igrys-cermite", amount = 5 },
            { type = "item", name = "igrys-rich-magic-teseract", amount = 1 }
        },
        results = {
            { type = "item", name = "igrys-strong-barrel", amount = 10 },
        },
        energy_required = 10,
        categories = {"advanced-crafting"}
    }, {
        type = "item",
        name = "igrys-magic-fluid-barrel",
        icon = "__Igrys__/Assets/Items/Barrel/Filled2.png",
        icon_size = 128,
        pictures =
        {
            {size = 128, filename = "__Igrys__/Assets/Items/Barrel/Filled1.png", scale = 0.25},
            {size = 128, filename = "__Igrys__/Assets/Items/Barrel/Filled2.png", scale = 0.25},
            {size = 128, filename = "__Igrys__/Assets/Items/Barrel/Filled3.png", scale = 0.25},
            {size = 128, filename = "__Igrys__/Assets/Items/Barrel/Filled4.png", scale = 0.25}
        },
        subgroup = "igrys-barreling",
        order = "b",
        stack_size = 10,
        weight = 1 / 100 * tons,
    }, {
        type = "recipe",
        name = "igrys-magic-fluid-barrel",
        enabled = settings.startup["igrys-enable-all"].value,
        allow_productivity = false,
        allow_quality = false,
        ingredients = {
            { type = "item", name = "igrys-strong-barrel", amount = 1, ignored_by_stats = 1 },
            { type = "fluid", name = "igrys-magic-fluid", amount = 10, ignored_by_stats = 10 }
        },
        results = {
            {type="item", name="igrys-magic-fluid-barrel", amount=1, ignored_by_stats = 1, ignored_by_productivity = 1},
        },
        energy_required = 1,
        categories = {"crafting-with-fluid"},
        auto_recycle = false,
    }, {
        type = "recipe",
        name = "empty-igrys-magic-fluid-barrel",
        subgroup = "igrys-barreling",
        enabled = settings.startup["igrys-enable-all"].value,
        allow_productivity = false,
        allow_quality = false,
        ingredients = {
            {type="item", name="igrys-magic-fluid-barrel", amount=1},
        },
        results = {
            {type="fluid", name="igrys-magic-fluid", amount=10, ignored_by_stats = 10, ignored_by_productivity = 10},
            {type="item", name="igrys-strong-barrel", amount=1, ignored_by_stats = 1, ignored_by_productivity = 1}
        },
        energy_required = 1,
        categories = {"crafting-with-fluid"},
        icon = "__Igrys__/Assets/Items/Barrel/Empty.png",
        icon_size = 128,
        order = "c",
        auto_recycle = false,
    }
})

PlanetsLib.set_default_import_location("igrys-strong-barrel", "igrys")
PlanetsLib.set_default_import_location("igrys-magic-fluid-barrel", "igrys")
--PlanetsLib.restrict_to_planet(data.raw["recipe"]["igrys-strong-barrel"], "igrys")