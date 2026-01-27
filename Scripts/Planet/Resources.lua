local resource_autoplace = require("resource-autoplace")

data:extend{
    {
        type = "resource",
        name = "igrys-stone",
        icon = "__Igrys__/Assets/Tiles/Ore/hardstone-icon.png",
        --icon_size = 128,
        flags = {"placeable-neutral"},
        order="a-b-b",
        tree_removal_probability = 0.8,
        tree_removal_max_distance = 32 * 32,
        minable = 
                {
                    mining_particle = "stone-particle",
                    mining_time = 20,
                    result = "stone"
                },
        collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        autoplace = 
        {
            probability_expression= "noise_igrys_stone > 0",
            richness_expression = "noise_igrys_stone * 1000000",
        },
        stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
        stages =
        {
            sheet =
                {
                    filename = "__Igrys__/Assets/Tiles/Ore/hardstone.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    frame_count = 3,
                    variation_count = 8,
                    scale = 0.5
                }
        },
        stages_effect =
        {
            sheet =
            {
                filename = "__Igrys__/Assets/Tiles/Ore/hardstone-glow.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                frame_count = 3,
                variation_count = 8,
                scale = 0.5,
                blend_mode = "additive",
                flags = {"light"}
            }
        },
        effect_animation_period = 5,
        effect_animation_period_deviation = 1,
        effect_darkness_multiplier = 3.6,
        min_effect_alpha = 0.2,
        max_effect_alpha = 0.3,
        map_color = {0.690, 0.611, 0.427},
        mining_visualisation_tint = {r = 0.984, g = 0.883, b = 0.646, a = 1.000},
    },
    {
        type = "resource-category",
        name = "igrys-magic-fluid"
    },
    {
        type = "resource",
        name = "igrys-magic-fluid",
        icon = "__base__/graphics/icons/crude-oil-resource.png",
        flags = {"placeable-neutral"},
        category = "igrys-magic-fluid",
        subgroup = "mineable-fluids",
        order="a-b-a",
        infinite = true,
        highlight = true,
        minimum = 60000,
        normal = 300000,
        infinite_depletion_amount = 10,
        resource_patch_search_radius = 12,
        tree_removal_probability = 0.7,
        tree_removal_max_distance = 32 * 32,
        minable =
        {
            mining_time = 1,
            results =
            {
                {
                    type = "fluid",
                    name = "igrys-magic-fluid",
                    amount_min = 10,
                    amount_max = 10,
                    probability = 1
                },
            },
        },
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings
        {
            name = "igrys-magic-fluid",
            order = "c", -- Other resources are "b"; oil won't get placed if something else is already there.
            base_density = 50,
            base_spots_per_km2 = 10,
            random_probability = 1/4,
            random_spot_size_minimum = 1,
            random_spot_size_maximum = 3, -- don't randomize spot size
            additional_richness = 220000, -- this increases the total everywhere, so base_density needs to be decreased to compensate
            has_starting_area_placement = false,
            regular_rq_factor_multiplier = 1,
        },
        stage_counts = {0},
        stages =
        {
            sheet = util.sprite_load("__base__/graphics/entity/crude-oil/crude-oil",
                    {
                        priority = "extra-high",
                        scale = 0.5,
                        variation_count = 1,
                        frame_count = 4,
                    })
        },
        map_color = {0.414, 0.484, 0.610},
        map_grid = false
    },
    {
        type = "resource-category",
        name = "igrys-water"
    },
    {
        type = "resource",
        name = "igrys-water",
        icon = "__base__/graphics/icons/crude-oil-resource.png",
        flags = {"placeable-neutral"},
        category = "igrys-water",
        subgroup = "mineable-fluids",
        order="a-b-a",
        infinite = true,
        highlight = true,
        minimum = 60000,
        normal = 300000,
        infinite_depletion_amount = 10,
        resource_patch_search_radius = 12,
        tree_removal_probability = 0.7,
        tree_removal_max_distance = 32 * 32,
        minable =
        {
            mining_time = 1,
            results =
            {
                {
                    type = "fluid",
                    name = "water",
                    amount_min = 10,
                    amount_max = 10,
                    probability = 1
                },
            }
        },
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings
        {
            name = "igrys-water",
            order = "c", -- Other resources are "b"; oil won't get placed if something else is already there.
            base_density = 50,
            base_spots_per_km2 = 10,
            random_probability = 1/4,
            random_spot_size_minimum = 1,
            random_spot_size_maximum = 3, -- don't randomize spot size
            additional_richness = 220000, -- this increases the total everywhere, so base_density needs to be decreased to compensate
            has_starting_area_placement = true,
            regular_rq_factor_multiplier = 1,
        },
        stage_counts = {0},
        stages =
        {
            sheet = util.sprite_load("__base__/graphics/entity/crude-oil/crude-oil",
                    {
                        priority = "extra-high",
                        scale = 0.5,
                        variation_count = 1,
                        frame_count = 4,
                    })
        },
        map_color = {0, 0, 1},
        map_grid = false
    }
}

-- Todo add tint to the sprite
