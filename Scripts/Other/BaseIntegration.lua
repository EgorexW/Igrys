-- Oil River Foundation
table.insert(data.raw["item"]["foundation"].place_as_tile.tile_condition, "igrys-light-oil")

-- Labs
table.insert(data.raw["lab"]["lab"].inputs, "igrys-mineral-science-pack")
table.insert(data.raw["lab"]["biolab"].inputs, "igrys-mineral-science-pack")

-- Tech
table.insert(data.raw["technology"]["promethium-science-pack"].prerequisites, "igrys-mineral-science")
table.insert(data.raw["technology"]["promethium-science-pack"].unit.ingredients, {"igrys-mineral-science-pack", 1})
table.insert(data.raw["technology"]["research-productivity"].unit.ingredients, {"igrys-mineral-science-pack", 1})

-- Productivity Research
table.insert(data.raw["technology"]["plastic-bar-productivity"].effects, {
    type = "change-recipe-productivity",
    recipe = "igrys-plastic-bar",
    change = 0.1
})
table.insert(data.raw["technology"]["rocket-part-productivity"].effects, {
    type = "change-recipe-productivity",
    recipe = "igrys-glass-rocket-part",
    change = 0.1
})

-- Igrys Water
table.insert(data.raw["mining-drill"]["pumpjack"].resource_categories, "igrys-water")
data.raw["fluid"]["water"].fuel_value = "1J"