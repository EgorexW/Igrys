local resource_autoplace = require("resource-autoplace")

local function resource(resource_parameters, autoplace_parameters)
    return
    {
        type = "resource",
        name = resource_parameters.mod_name,
        icon = "__base__/graphics/icons/" .. resource_parameters.name .. ".png",
        flags = {"placeable-neutral"},
        order="a-b-"..resource_parameters.order,
        tree_removal_probability = 0.8,
        tree_removal_max_distance = 32 * 32,
        minable = resource_parameters.minable or
                {
                    mining_particle = resource_parameters.name .. "-particle",
                    mining_time = resource_parameters.mining_time,
                    result = resource_parameters.name
                },
        category = resource_parameters.category,
        subgroup = resource_parameters.subgroup,
        collision_mask = resource_parameters.collision_mask,
        collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings
        {
            name = resource_parameters.mod_name,
            order = resource_parameters.order,
            base_density = autoplace_parameters.base_density,
            base_spots_per_km = autoplace_parameters.base_spots_per_km2,
            has_starting_area_placement = true,
            regular_rq_factor_multiplier = autoplace_parameters.regular_rq_factor_multiplier,
            starting_rq_factor_multiplier = autoplace_parameters.starting_rq_factor_multiplier,
            candidate_spot_count = autoplace_parameters.candidate_spot_count,
            tile_restriction = autoplace_parameters.tile_restriction
        },
        stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
        stages =
        {
            sheet =
            {
                filename = "__base__/graphics/entity/" .. resource_parameters.name .. "/" .. resource_parameters.name .. ".png",
                priority = "extra-high",
                size = 128,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5
            }
        },
        map_color = resource_parameters.map_color,
        mining_visualisation_tint = resource_parameters.mining_visualisation_tint,
    }
end

data:extend{
    resource(
            {
                mod_name = "igrys-stone",
                name = "stone",
                order = "b",
                map_color = {0.690, 0.611, 0.427},
                mining_time = 7,
                mining_visualisation_tint = {r = 0.984, g = 0.883, b = 0.646, a = 1.000}, -- #fae1a4ff
            },
            {
                base_density = 30,
                regular_rq_factor_multiplier = 100,
                starting_rq_factor_multiplier = 1
            }
    ),
    {
        type = "resource",
        name = "igrys-light-oil",
        icon = "__base__/graphics/icons/crude-oil-resource.png",
        flags = {"placeable-neutral"},
        category = "basic-fluid",
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
                    name = "light-oil",
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
            name = "igrys-light-oil",
            order = "c", -- Other resources are "b"; oil won't get placed if something else is already there.
            base_density = 8.2,
            base_spots_per_km2 = 1.8,
            random_probability = 1/48,
            random_spot_size_minimum = 1,
            random_spot_size_maximum = 1, -- don't randomize spot size
            additional_richness = 220000, -- this increases the total everywhere, so base_density needs to be decreased to compensate
            has_starting_area_placement = false,
            regular_rq_factor_multiplier = 1
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
        map_color = {0.602, 0.524, 0.167},
        map_grid = false
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
            base_density = 8.2,
            base_spots_per_km2 = 1.8,
            random_probability = 1/48,
            random_spot_size_minimum = 1,
            random_spot_size_maximum = 1, -- don't randomize spot size
            additional_richness = 220000, -- this increases the total everywhere, so base_density needs to be decreased to compensate
            has_starting_area_placement = false,
            regular_rq_factor_multiplier = 1
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
            base_density = 8.2,
            base_spots_per_km2 = 1.8,
            random_probability = 1/48,
            random_spot_size_minimum = 1,
            random_spot_size_maximum = 1, -- don't randomize spot size
            additional_richness = 220000, -- this increases the total everywhere, so base_density needs to be decreased to compensate
            has_starting_area_placement = false,
            regular_rq_factor_multiplier = 1
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
    },
}

-- Todo add tint to the sprite
