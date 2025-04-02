data:extend{
    {
        name = "igrys-ruin",
        type = "simple-entity",
        flags = {"placeable-neutral", "placeable-off-grid"},
        icon = "__Igrys__/Assets/Entity/IgrysRuin.png",
        icon_size = 780,
        subgroup = "grass",
        collision_box = {{-5, -3.5}, {5, 4}},
        selection_box = {{-5.2, -3.7}, {5.2, 4.2}},
        minable =
        {
            mining_particle = "stone-particle",
            mining_time = 3,
            results =
            {
                {type = "item", name = "stone", amount_min = 24, amount_max = 50},
                {type = "item", name = "igrys-magic-part-1", amount_min = 5, amount_max = 25},
                {type = "item", name = "igrys-magic-part-2", amount_min = 5, amount_max = 25},
                {type = "item", name = "igrys-magic-part-3", amount_min = 5, amount_max = 25},
                {type = "item", name = "igrys-magic-teseract", amount_min = 0, amount_max = 1},
            },
        },

        map_color = {129, 105, 78},
        count_as_rock_for_filtered_deconstruction = true,
        impact_category = "stone",
        render_layer = "object",
        max_health = 2000,
        resistances =
        {
            {
                type = "fire",
                percent = 100
            }
        },
        autoplace =
        {
            control = "rocks", 
            order = "a[doodad]-a[rock]-a[huge]",
            probability_expression = "multiplier * control * (region_box + rock_density - penalty)",
            local_expressions =
            {
                multiplier = 0.03,
                penalty = 1.7,
                region_box = "range_select_base(moisture, 0.35, 1, 0.2, -10, 0)",
                control = "control:rocks:size",
            }
        },
        picture =
            {
                filename = "__Igrys__/Assets/Entity/IgrysRuin.png",
                size = 780,
                scale = 0.5,
            }
    },
}