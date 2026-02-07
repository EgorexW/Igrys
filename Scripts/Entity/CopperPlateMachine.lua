data:extend({
    {
        type = "assembling-machine",
        name = "igrys-copper-plate-machine",
        icon = "__Igrys__/Assets/Entity/CopperPlateMachine/icon.png",
        icon_size = 128,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        
        fixed_recipe = "igrys-free-copper-plate",
        energy_usage = "1MW",
        crafting_speed = 1,
        crafting_categories = {"igrys-making-stuff-out-of-thin-air"},
        energy_source = {
            type = "electric", 
            usage_priority = "secondary-input",
            drain = "0W",
        },
        
        subgroup = "extraction-machine",
        
        collision_box = {{-1.8, -1.8}, {1.8, 1.8}},
        selection_box = {{-2, -2}, {2, 2}},
        
        minable =
        {
            mining_time = 0.2,
            result = "igrys-copper-plate-machine",
        },
        map_color = {129, 105, 78},
        render_layer = "object",
        max_health = 500,
        graphics_set =
        {
            animation =
            {
                layers =
                {
                    {
                        filename = "__Igrys__/Assets/Entity/CopperPlateMachine/idle.png",
                        priority = "high",
                        width = 320,
                        height = 320,
                        shift = {0.375, -0.25},
                        scale = 0.5
                    },
                    {
                        filename = "__Igrys__/Assets/Entity/CopperPlateMachine/shadow.png",
                        priority = "high",
                        width = 320,
                        height = 320,
                        draw_as_shadow = true,
                        shift = {0.375, -0.25},
                        scale = 0.5
                    }
                }
            },
            working_visualisations =
            {
                {
                    animation =
                    {
                        filename = "__Igrys__/Assets/Entity/CopperPlateMachine/working.png",
                        priority="high",
                        width = 320,
                        height = 320,
                        frame_count = 16,
                        line_length = 4,
                        shift = {0.375, -0.25},
                        scale = 0.5,
                    },
                },
                {
                    fadeout = true,
                    effect = "flicker",
                    animation =
                    {
                        filename = "__Igrys__/Assets/Entity/CopperPlateMachine/light.png",
                        priority="high",
                        width = 320,
                        height = 320,
                        frame_count = 16,
                        line_length = 4,
                        draw_as_light = true,
                        shift = {0.375, -0.25},
                        scale = 0.5,
                    }
                },
            }
        },
        show_recipe_icon = false,
    }, {
        type = "item",
        name = "igrys-copper-plate-machine",
        icon = "__Igrys__/Assets/Entity/CopperPlateMachine/icon.png",
        icon_size = 128,

        subgroup = "igrys-machine",

        weight = kg * 50,
        stack_size = 50,
        place_result = "igrys-copper-plate-machine"
    }
})
local restrictedRecipe =
    {
        type = "recipe",
        name = "igrys-copper-plate-machine",
        enabled = settings.startup["igrys-enable-all"].value,
        ingredients = {
            {type="item", name="igrys-glass", amount=50},
            {type="item", name="plastic-bar", amount=20},
            {type="item", name="stone-furnace", amount=10},
        },
        results = {
            {type="item", name="igrys-copper-plate-machine", amount=1},
        },
        energy_required = 30,
        category = "crafting",
        subgroup = "igrys-machine",
    }

data:extend{restrictedRecipe}

-- Todo add circuit network support