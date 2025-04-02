data:extend{ 
    {
         type = "assembling-machine",
         name = "igrys-science-enhancer-machine",
         icon = "__Igrys__/Assets/Entity/ScienceEnhancerMachine.png",
         icon_size = 600,
         flags = { "placeable-neutral", "placeable-player", "player-creation" },
         minable = { mining_time = 0.1, result = "igrys-science-enhancer-machine" },
         max_health = 500,
         heating_energy = "100kW",
         effect_receiver = { base_effect = { productivity = 1 } },
         collision_box = { { -1.7, -1.7 }, { 1.7, 1.7 } },
         selection_box = { { -2, -2 }, { 2, 2 } },
         fluid_boxes = {
             {
                 production_type = "input",
                 volume = 200,
                 pipe_covers = pipecoverspictures(),
                 pipe_connections = { { flow_direction = "input-output", direction = defines.direction.west, position = { -1.5, 0.5 } } }
             },
             {
                 production_type = "input",
                 volume = 200,
                 pipe_covers = pipecoverspictures(),
                 pipe_connections = { { flow_direction = "input-output", direction = defines.direction.east, position = { 1.5, -0.5 } } }
             },
             {
                 production_type = "input",
                 volume = 200,
                 pipe_covers = pipecoverspictures(),
                 pipe_connections = { { flow_direction = "input-output", direction = defines.direction.south, position = { 0.5, 1.5 } } }
             },
             {
                 production_type = "output",
                 volume = 200,
                 pipe_covers = pipecoverspictures(),
                 pipe_connections = { { flow_direction = "input-output", direction = defines.direction.north, position = { -0.5, -1.5 } } }
             }
         },
         fluid_boxes_off_when_no_fluid_recipe = true,
         graphics_set =
         {
             animation =
             {
                 filename = "__Igrys__/Assets/Entity/ScienceEnhancerMachine.png",
                 width = 600,
                 height = 600,
                 frame_count = 1,
                 line_length = 1,
                 scale = 0.3,
             }
         },
         crafting_speed = 5,
         crafting_categories = {"enriched-science-pack"},
         energy_source = {
             type = "electric",
             usage_priority = "secondary-input",
             emissions_per_minute = { pollution = 20 }
         },
         energy_usage = "6900kW",
         module_slots = 1,
         allowed_effects = { "consumption", "speed", "productivity", "pollution", "quality" },
    }, {
        type = "item",
        name = "igrys-science-enhancer-machine",
        icon = "__Igrys__/Assets/Entity/ScienceEnhancerMachine.png",
        icon_size = 600,
        
        subgroup = "igrys-machine",
        
        weight = 1000 * 10,
        stack_size = 50,
        place_result = "igrys-science-enhancer-machine"
    }, {
        type = "recipe",
        name = "igrys-science-enhancer-machine",
        enabled = true,
        ingredients =
        {
            {type="item", name="processing-unit", amount=25},
            {type="item", name="igrys-glass", amount=100},
            {type="item", name="igrys-rich-magic-teseract", amount=2},
            {type="item", name="lab", amount=2}
        },
        results=
        {
            {type="item", name="igrys-science-enhancer-machine", amount=1},
        },
        category = "advanced-crafting",
    }
}

-- Todo add circuit network support
