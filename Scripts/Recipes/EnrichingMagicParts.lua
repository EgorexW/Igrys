data:extend({
    {
        type = "recipe",
        name = "igrys-rich-magic-part-1",
        enabled = settings.startup["igrys-enable-all"].value,
        icons = CombinedRichIcon(data.raw["item"]["igrys-magic-part-1"].icon, data.raw["item"]["igrys-magic-part-2"].icon),
        allow_productivity = true,
        ingredients = {
            {type="item", name="igrys-magic-part-1", amount=1},
            {type="item", name="igrys-magic-part-2", amount=1},
            {type="item", name="igrys-glass", amount=10}
        },
        results = {
            {type="item", name="igrys-rich-magic-part-1", amount=1},
            {type="item", name="igrys-rich-magic-part-2", amount=1},
        },
        energy_required = 5,
        category = "advanced-crafting",
    }, {
        type = "recipe",
        name = "igrys-rich-magic-part-2",
        enabled = settings.startup["igrys-enable-all"].value,
        icons = CombinedRichIcon(data.raw["item"]["igrys-magic-part-2"].icon, data.raw["item"]["igrys-magic-part-3"].icon),
        allow_productivity = true,
        ingredients = {
            {type="item", name="igrys-magic-part-2", amount=1},
            {type="item", name="igrys-magic-part-3", amount=1},
            {type="item", name="igrys-conductive-brick", amount=10}
        },
        results = {
            {type="item", name="igrys-rich-magic-part-2", amount=1},
            {type="item", name="igrys-rich-magic-part-3", amount=1},
        },
        energy_required = 5,
        category = "advanced-crafting",
    }, {
        type = "recipe",
        name = "igrys-rich-magic-part-3",
        enabled = settings.startup["igrys-enable-all"].value,
        icons = CombinedRichIcon(data.raw["item"]["igrys-magic-part-3"].icon, data.raw["item"]["igrys-magic-part-1"].icon),
        allow_productivity = true,
        ingredients = {
            {type="item", name="igrys-magic-part-3", amount=1},
            {type="item", name="igrys-magic-part-1", amount=1},
            {type="item", name="igrys-cermite", amount=1}
        },
        results = {
            {type="item", name="igrys-rich-magic-part-3", amount=1},
            {type="item", name="igrys-rich-magic-part-1", amount=1},
        },
        energy_required = 5,
        category = "advanced-crafting",
    },
})