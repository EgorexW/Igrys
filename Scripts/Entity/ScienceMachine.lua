data:extend{ 
    {
         type = "assembling-machine",
         name = "igrys-science-enhancer-machine",
         icon = "__Igrys__/Assets/Entity/ScienceEnhancer/icon.png",
         icon_size = 128,
         flags = { "placeable-neutral", "placeable-player", "player-creation"},
         minable = { mining_time = 0.1, result = "igrys-science-enhancer-machine" },
         max_health = 500,
         heating_energy = "100kW",
         quality_affects_module_slots = true,
         effect_receiver = { base_effect = { productivity = 1.5 } },
         collision_box = { { -2.3, -2.3 }, { 2.3, 2.3 } },
         selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
         fluid_boxes_off_when_no_fluid_recipe = false,
         fluid_boxes = {
             {
                 production_type = "input",
                 volume = 200,
                 pipe_covers = pipecoverspictures(),
                 pipe_connections = { { flow_direction = "input", direction = defines.direction.west, position = { -2, 1 } } }
             },
             {
                 production_type = "input",
                 volume = 200,
                 pipe_covers = pipecoverspictures(),
                 pipe_connections = { { flow_direction = "input", direction = defines.direction.east, position = { 2, -1 } } }
             },
             {
                 production_type = "input",
                 volume = 200,
                 pipe_covers = pipecoverspictures(),
                 pipe_connections = { { flow_direction = "input", direction = defines.direction.south, position = { 1, 2 } } }
             },
             {
                 production_type = "output",
                 volume = 200,
                 pipe_covers = pipecoverspictures(),
                 pipe_connections = { { flow_direction = "output", direction = defines.direction.north, position = { -1, -2 } } }
             }
         },
         graphics_set =
         {
             animation =
             {
                 layers =
                 {
                     {
                         filename = "__Igrys__/Assets/Entity/ScienceEnhancer/idle.png",
                         priority = "high",
                         width = 384,
                         height = 384,
                         shift = {0.375, -0.375},
                         scale = 0.5
                     },
                     {
                         filename = "__Igrys__/Assets/Entity/ScienceEnhancer/shadow.png",
                         priority = "high",
                         width = 384,
                         height = 384,
                         draw_as_shadow = true,
                         shift = {0.375, -0.375},
                         scale = 0.5
                     }
                 }
             },
             working_visualisations =
             {
                 {
                     animation =
                     {
                         filename = "__Igrys__/Assets/Entity/ScienceEnhancer/working.png",
                         priority="high",
                         width = 384,
                         height = 384,
                         frame_count = 16,
                         line_length = 4,
                         shift = {0.375, -0.375},
                         scale = 0.5,
                         animation_speed = 1/5
                     },
                 },
                 {
                     fadeout = true,
                     effect = "flicker",
                     animation =
                     {
                         filename = "__Igrys__/Assets/Entity/ScienceEnhancer/light.png",
                         priority="high",
                         width = 384,
                         height = 384,
                         frame_count = 16,
                         line_length = 4,
                         draw_as_light = true,
                         shift = {0.375, -0.375},
                         scale = 0.5,
                         animation_speed = 1/5
                     }
                 },
             }
         },
         crafting_speed = 5,
         crafting_categories = {"igrys-enriched-science-pack"},
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
        icon = "__Igrys__/Assets/Entity/ScienceEnhancer/icon.png",
        icon_size = 128,
        
        subgroup = "igrys-machine",
        
        weight = 1000 * 10,
        stack_size = 50,
        place_result = "igrys-science-enhancer-machine"
    }, {
        type = "recipe",
        name = "igrys-science-enhancer-machine",
        enabled = settings.startup["igrys-enable-all"].value,
        ingredients =
        {
            {type="item", name="processing-unit", amount=25},
            {type="item", name="igrys-conductive-brick", amount=100},
            {type="item", name="igrys-rich-magic-teseract", amount=5},
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
-- Todo Make productivity raise with quality

PlanetsLib.set_default_import_location("igrys-science-enhancer-machine", "igrys")
