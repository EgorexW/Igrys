if not mods["new-diagonal-inserter"] then
  return
end
if settings.startup["igrys-keep-diagonal-inserter-base"].value == true then
  return
end
local recipe = data.raw["recipe"]["diagonal-inserter"]
recipe.ingredients = {
  {type="item", name="igrys-conductive-brick", amount=3}, 
  {type="item", name="fast-inserter", amount=2},
  {type="item", name="igrys-cermite", amount=1}
}

local entity = data.raw["inserter"]["diagonal-inserter"]
entity.extension_speed = 0.1
entity.rotation_speed = 0.04

local tech = data.raw["technology"]["fast-inserter"]
for i, effect in ipairs(tech.effects) do
    if effect.recipe then
        if effect.recipe == "diagonal-inserter" then
            table.remove(tech.effects, i)
            break
        end
    end
end

local item = data.raw["item"]["diagonal-inserter"]
item.order = "da[fast-inserter]"

PlanetsLib.set_default_import_location("diagonal-inserter", "igrys")

data:extend({
    {
        type = "technology",
        name = "igrys-diagonal-inserter",
        icon = data.raw["item"]["diagonal-inserter"].icon,
        icon_size = data.raw["item"]["diagonal-inserter"].icon_size,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "diagonal-inserter"
            }
        },
        prerequisites = {
            "igrys-mineral-science",
            "igrys-cermet"
        },
        unit = {
            count = 500,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1 },
                { "metallurgic-science-pack", 1 },
                { "igrys-mineral-science-pack", 1 }
            },
            time = 60,
        }
    }
})