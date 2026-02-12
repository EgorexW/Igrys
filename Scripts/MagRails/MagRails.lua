if not mods["maglev-straightaways"] then
    data:extend{
        {
            type = "recipe",
            name = "igrys-copper-rail",
            enabled = false,
            ingredients =
            {
                {type = "item", name = "stone", amount = 1},
                {type = "item", name = "igrys-conductive-brick", amount = 1},
                {type = "item", name = "steel-plate", amount = 1}
            },
            results = {{type="item", name="rail", amount=2}},
            icons = MadeFromIcons("__base__/graphics/icons/rail.png", "__Igrys__/Assets/Items/conductive-brick.png"),
            order = "a[rail]-b[igrys-copper-rail]",
            category = "advanced-crafting",
            allow_as_intermediate = false,
            auto_recycle = false
        }, 
    }
    local tech = data.raw["technology"]["igrys-conductive-brick-usage"]
    table.insert(tech.effects, {
        type = "unlock-recipe",
        recipe = "igrys-copper-rail"
    })
    return
end

local railsRecipe = data.raw["recipe"]["maglev-rail"]
if railsRecipe then
    railsRecipe.ingredients =
    {
        {type = "item", name = "stone", amount = 1},
        {type = "item", name = "igrys-conductive-brick", amount = 1},
        {type = "item", name = "steel-plate", amount = 1}
    }
end

local tech = data.raw["technology"]["maglev-railway"]
if tech then
    tech.unit = {
        count = 500,
        ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
            { "production-science-pack", 1 },
            { "metallurgic-science-pack", 1 }
        },
        time = 60,
    }
    tech.prerequisites = {
        "planet-discovery-igrys",
    }
    table.insert(tech.effects, {
        type = "unlock-recipe",
        recipe = "igrys-production-science-pack"
    })
end

local maglevRailIcon = "__base__/graphics/icons/rail.png"
local maglevRailPlanner = data.raw["rail-planner"] and data.raw["rail-planner"]["maglev-rail"]
if maglevRailPlanner then
    maglevRailIcon = maglevRailPlanner.icon
        or (maglevRailPlanner.icons and maglevRailPlanner.icons[1] and maglevRailPlanner.icons[1].icon)
        or maglevRailIcon
end

data:extend{
    {
        type = "recipe",
        name = "igrys-production-science-pack",
        enabled = settings.startup["igrys-enable-all"].value,
        energy_required = 20,
        ingredients =
        {
            {type = "item", name = "electric-furnace", amount = 1},
            {type = "item", name = "productivity-module", amount = 1},
            {type = "item", name = "maglev-rail", amount = 30}
        },
        results = {{type="item", name="production-science-pack", amount=5}},
        icons = MadeFromIcons(data.raw["tool"]["production-science-pack"].icon, maglevRailIcon),
        order = "ez[production-science-pack]",
        allow_productivity = true
    },
}
