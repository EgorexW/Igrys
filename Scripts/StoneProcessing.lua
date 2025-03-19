
local glass = {
        type="item",
        name="igrys-glass",
        icon = "__Igrys__/Assets/Items/glass.png",
        icon_size = 1024,
        stack_size = 200,
        subgroup = "raw-material",
        weight = 20000
    }
    
    local glassRecipe = {
        type = "recipe",
        name = "igrys-glass",
        enabled = settings.startup["igrys-enable-all"].value,
        allow_productivity = true,
        ingredients = {{type="item", name="stone", amount=60}},
        results = {
            {type="item", name="igrys-glass", amount=10},
            {type="item", name="stone", amount=10}
        },
        main_product = "igrys-glass",
        energy_required = 60,
        category = "crafting"
    }
    
    data:extend{glass, glassRecipe}