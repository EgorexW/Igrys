data:extend {
    {
        name = "igrys-ruin",
        type = "simple-entity",
        flags = { "placeable-neutral", "placeable-off-grid" },
        icon = "__Igrys__/Assets/Entity/IgrysRuin.png",
        icon_size = 780,
        subgroup = "grass",
        collision_box = { { -5, -3.5 }, { 5, 4 } },
        selection_box = { { -5.2, -3.7 }, { 5.2, 4.2 } },
        minable = {
            mining_particle = "stone-particle",
            mining_time = 3,
            results = {
                { type = "item", name = "stone-brick", amount_min = 24, amount_max = 50 },
                { type = "item", name = "igrys-rich-magic-part-1", amount_min = 1, amount_max = 5 },
                { type = "item", name = "igrys-rich-magic-part-2", amount_min = 1, amount_max = 5 },
                { type = "item", name = "igrys-rich-magic-part-3", amount_min = 1, amount_max = 5 },
                { type = "item", name = "igrys-rich-magic-teseract", amount_min = 0, amount_max = 1 },
            },
        },

        map_color = { 129, 105, 78 },
        count_as_rock_for_filtered_deconstruction = true,
        impact_category = "stone",
        render_layer = "object",
        max_health = 2000,
        resistances = {
            {
                type = "fire",
                percent = 100
            }
        },
        autoplace = {
            probability_expression = "(noise_igrys_dirt < 0.75) * multiplier * control * (rock_density - penalty)",
            local_expressions = {
                multiplier = 0.1,
                penalty = 2,
                control = "control:rocks:size",
            },
            order = "d"
        },
        picture = {
            filename = "__Igrys__/Assets/Entity/IgrysRuin.png",
            size = 780,
            scale = 0.5,
        }
    }, {
        name = "igrys-rock",
        type = "simple-entity",
        flags = { "placeable-neutral", "placeable-off-grid" },
        icon = "__Igrys__/Assets/Decoratives/rock-1-main.png",
        icon_size = 224,
        subgroup = "grass",
        collision_box = { { -1.5, -1.25 }, { 1, 1.5 } },
        selection_box = { { -1.7, -1.45 }, { 1.2, 1.7 } },
        minable = {
            mining_particle = "stone-particle",
            mining_time = 3,
            results = {
                { type = "item", name = "stone", amount_min = 24, amount_max = 50 },
                { type = "item", name = "igrys-magic-part-1", amount_min = 1, amount_max = 5 },
                { type = "item", name = "igrys-magic-part-2", amount_min = 1, amount_max = 5 },
                { type = "item", name = "igrys-magic-part-3", amount_min = 1, amount_max = 5 },
                { type = "item", name = "igrys-magic-teseract", amount_min = 0, amount_max = 1 },
            },
        },

        map_color = { 129, 105, 78 },
        count_as_rock_for_filtered_deconstruction = true,
        impact_category = "stone",
        render_layer = "object",
        max_health = 2000,
        resistances = {
            {
                type = "fire",
                percent = 100
            }
        },
        autoplace = {
            probability_expression = "(noise_igrys_dirt > 0.75) * multiplier * control * (rock_density - penalty)",
            local_expressions = {
                multiplier = 0.2,
                penalty = 1,
                control = "control:rocks:size",
            },
            order = "d"
        },
        pictures = {
            {
                layers = {
                    {
                        filename = "__Igrys__/Assets/Decoratives/rock-1-lightmask.png",
                        size = 224,
                        draw_as_light = true,
                        scale = 0.5,
                        blend_mode = "additive",
                    }, {
                        filename = "__Igrys__/Assets/Decoratives/rock-1-main.png",
                        size = 224,
                        scale = 0.5,
                    }, {
                        filename = "__Igrys__/Assets/Decoratives/rock-1-shadow.png",
                        size = 224,
                        draw_as_shadow = true,
                        scale = 0.5,
                    }
                }
            }, {
                layers = {
                    {
                        filename = "__Igrys__/Assets/Decoratives/rock-2-lightmask.png",
                        size = 224,
                        draw_as_light = true,
                        scale = 0.5,
                        blend_mode = "additive",
                    }, {
                        filename = "__Igrys__/Assets/Decoratives/rock-2-main.png",
                        size = 224,
                        scale = 0.5,
                    }, {
                        filename = "__Igrys__/Assets/Decoratives/rock-2-shadow.png",
                        size = 224,
                        draw_as_shadow = true,
                        scale = 0.5,
                    }
                }
            }, {
                layers = {
                    {
                        filename = "__Igrys__/Assets/Decoratives/rock-3-lightmask.png",
                        size = 224,
                        draw_as_light = true,
                        scale = 0.5,
                        blend_mode = "additive",
                    }, {
                        filename = "__Igrys__/Assets/Decoratives/rock-3-main.png",
                        size = 224,
                        scale = 0.5,
                    }, {
                        filename = "__Igrys__/Assets/Decoratives/rock-3-shadow.png",
                        size = 224,
                        draw_as_shadow = true,
                        scale = 0.5,
                    }
                }
            }
        }
    }
}