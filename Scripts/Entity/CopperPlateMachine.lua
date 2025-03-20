data:extend({
    {
        type = "assembling-machine",
        name = "igrys-copper-plate-machine",
        icon = "__Igrys__/Assets/Entity/CopperPlateMachine.png",
        icon_size = 1024,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        
        fixed_recipe = "igrys-free-copper-plate",
        energy_usage = "1MW",
        crafting_speed = 1,
        crafting_categories = {"igrys-making-stuff-out-of-thin-air"},
        energy_source = {type = "electric", usage_priority = "secondary-input"},
        
        subgroup = "extraction-machine",
        
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        
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
                filename = "__Igrys__/Assets/Entity/CopperPlateMachine.png",
                width = 1024,
                height = 1024,
                frame_count = 1,
                line_length = 1,
                scale = 0.1,
            }
        },
    }, {
        type = "item",
        name = "igrys-copper-plate-machine",
        icon = "__Igrys__/Assets/Entity/CopperPlateMachine.png",
        icon_size = 1024,
        
        subgroup = "extraction-machine",
        
        weight = 1000000000,
        stack_size = 50,
        place_result = "igrys-copper-plate-machine"
    }, 
})
local restrictedRecipe =
    {
        type = "recipe",
        name = "igrys-copper-plate-machine",
        icon = "__Igrys__/Assets/Entity/CopperPlateMachine.png",
        icon_size = 1024,
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
        category = "advanced-crafting",
        subgroup = "extraction-machine",
    }

data:extend{restrictedRecipe}
PlanetsLib.restrict_to_planet(restrictedRecipe, "igrys")