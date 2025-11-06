local tile_pollution = require("__space-age__/prototypes/tile/tile-pollution-values")
local tile_collision_masks = require("__base__/prototypes/tile/tile-collision-masks")
local tile_graphics = require("__base__/prototypes/tile/tile-graphics")

data:extend({
    {
        type = "tile",
        name = "igrys-light-oil",
        autoplace =
        {
            probability_expression = "noise_igrys_light_oil > 0",
        },
        collision_mask = tile_collision_masks.oil_ocean_shallow(),
        fluid = "light-oil",
        effect = "water",
        particle_tints = tile_graphics.fulgora_oil_ocean_particle_tints,
        effect_color = { 255, 240, 150, 255 },
        effect_color_secondary = { 255, 200, 100, 255 },
        map_color = { 255, 240, 150 },
        vehicle_friction_modifier = 4,
        walking_speed_modifier = 0.8,
        default_cover_tile = "foundation",
        variants =
        {
            transition = {
                mask_spritesheet = "__base__/graphics/terrain/masks/transition-1.png",
                mask_layout =
                {
                    scale = 0.5,
                    inner_corner =
                    {
                        count = 8,
                    },
                    outer_corner =
                    {
                        count = 8,
                        x = 64*9
                    },
                    side =
                    {
                        count = 8,
                        x = 64*9*2
                    },
                    u_transition =
                    {
                        count = 1,
                        x = 64*9*3
                    },
                    o_transition =
                    {
                        count = 1,
                        x = 64*9*4
                    }
                }
            },
            material_background =
            {
                picture = "__space-age__/graphics/terrain/oil-sand-8x.png",
                line_length = 8,
                count = 16,
                scale = 0.5,
                tint = { r = 1.0, g = 0.9, b = 0.6, a = 1.0 }
            },
            material_texture_width_in_tiles = 8,
            material_texture_height_in_tiles = 8
        },
        layer = 3,
        absorptions_per_second = tile_pollution.lava,
        subgroup = "special-tiles"
    }, {
        type = "tile",
        name = "igrys-dirt-2",
        --subgroup = "vulcanus-tiles",
        --order = "a-d",
        autoplace =
        {
            probability_expression = "noise_igrys_dirt > 0.75",
        },
        collision_mask = tile_collision_masks.ground(),
        layer = 3,
        --sprite_usage_surface = "vulcanus",
        variants = tile_variations_template(
                "__base__/graphics/terrain/dirt-2.png", "__base__/graphics/terrain/masks/transition-1.png",
                {
                    max_size = 4,
                    [1] = { weights = {0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045 } },
                    [2] = { probability = 1, weights = {0.070, 0.070, 0.025, 0.070, 0.070, 0.070, 0.007, 0.025, 0.070, 0.050, 0.015, 0.026, 0.030, 0.005, 0.070, 0.027 } },
                    [4] = { probability = 1.00, weights = {0.070, 0.070, 0.070, 0.070, 0.070, 0.070, 0.015, 0.070, 0.070, 0.070, 0.015, 0.050, 0.070, 0.070, 0.065, 0.070 }, },
                    --[8] = { probability = 1.00, weights = {0.090, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.025, 0.125, 0.005, 0.010, 0.100, 0.100, 0.010, 0.020, 0.020} }
                }
        ),
        absorptions_per_second = tile_pollution.lava,
        map_color={136, 96, 59},
        subgroup = "special-tiles"
    }, {
        type = "tile",
        name = "igrys-dirt",
        --subgroup = "vulcanus-tiles",
        --order = "a-d",
        autoplace =
        {
            probability_expression = "noise_igrys_dirt > 0 & noise_igrys_dirt < 0.75",
        },
        collision_mask = tile_collision_masks.ground(),
        layer = 3,
        variants = tile_variations_template(
                "__base__/graphics/terrain/dirt-1.png", "__base__/graphics/terrain/masks/transition-1.png",
                {
                    max_size = 4,
                    [1] = { weights = {0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045 } },
                    [2] = { probability = 1, weights = {0.070, 0.070, 0.025, 0.070, 0.070, 0.070, 0.007, 0.025, 0.070, 0.050, 0.015, 0.026, 0.030, 0.005, 0.070, 0.027 } },
                    [4] = { probability = 1.00, weights = {0.070, 0.070, 0.070, 0.070, 0.070, 0.070, 0.015, 0.070, 0.070, 0.070, 0.015, 0.050, 0.070, 0.070, 0.065, 0.070 }, },
                    --[8] = { probability = 1.00, weights = {0.090, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.025, 0.125, 0.005, 0.010, 0.100, 0.100, 0.010, 0.020, 0.020} }
                }
        ),
        absorptions_per_second = tile_pollution.lava,
        map_color={141, 104, 60},
        subgroup = "special-tiles"
    }
})