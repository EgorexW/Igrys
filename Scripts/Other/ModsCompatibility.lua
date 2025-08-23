if mods["RITEG"] and mods["metal-and-stars"] then
    data.raw["tool"]["nanite-science-pack"].auto_enrich = false
end

if mods["Krastorio2"] or mods["Krastorio2-spaced-out"] then
    table.insert(data.raw["mining-drill"]["kr-mineral-water-pumpjack"].resource_categories, "igrys-water")
end