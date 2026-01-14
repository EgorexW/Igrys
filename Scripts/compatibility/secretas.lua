if not mods["secretas"] then return end

table.insert(data.raw["technology"]["science-pack-productivity"].effects, {
    type = "change-recipe-productivity",
    recipe = "igrys-mineral-science-pack",
    change = 0.01
})
table.insert(data.raw["technology"]["science-pack-productivity"].unit.ingredients, {"igrys-mineral-science-pack", 1})