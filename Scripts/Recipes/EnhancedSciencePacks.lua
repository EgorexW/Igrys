local function CreateRecipe(recipe, sciencePack)
    -- Create a copy of the existing recipe
    local newRecipe = table.deepcopy(recipe)
    if newRecipe.ingredients then
        newRecipe.name = "igrys-" .. recipe.name .. "-enhanced"
        newRecipe.baseRecipe = recipe.name
        newRecipe.category = "igrys-enriched-science-pack"
        newRecipe.enabled = settings.startup["igrys-enable-all"].value or newRecipe.enabled
        newRecipe.subgroup = "igrys-enriched-science-pack"
        newRecipe.auto_recycle = false
        newRecipe.hidden_in_factoriopedia = true
        newRecipe.hide_from_player_crafting = true
        newRecipe.localised_name = { "recipe-name.igrys-enriched-science-pack", recipe.localised_name or { "item-name." .. sciencePack.name}}
        newRecipe.auto_enrich = false
        table.insert(newRecipe.ingredients, {type = "fluid", name = "igrys-magic-fluid", amount = 2})

        data:extend{newRecipe}
        log("New enriched recipe added for " .. recipe.name)
    end
end

if not settings.startup["igrys-enhance-modded-science-packs"].value then
    -- Vanilla Recipes
    CreateRecipe(data.raw["recipe"]["automation-science-pack"], data.raw["tool"]["automation-science-pack"])
    CreateRecipe(data.raw["recipe"]["logistic-science-pack"], data.raw["tool"]["logistic-science-pack"])
    CreateRecipe(data.raw["recipe"]["chemical-science-pack"], data.raw["tool"]["chemical-science-pack"])
    CreateRecipe(data.raw["recipe"]["military-science-pack"], data.raw["tool"]["military-science-pack"])
    CreateRecipe(data.raw["recipe"]["production-science-pack"], data.raw["tool"]["production-science-pack"])
    CreateRecipe(data.raw["recipe"]["utility-science-pack"], data.raw["tool"]["utility-science-pack"])
    CreateRecipe(data.raw["recipe"]["space-science-pack"], data.raw["tool"]["space-science-pack"])
    CreateRecipe(data.raw["recipe"]["metallurgic-science-pack"], data.raw["tool"]["metallurgic-science-pack"])
    CreateRecipe(data.raw["recipe"]["agricultural-science-pack"], data.raw["tool"]["agricultural-science-pack"])
    CreateRecipe(data.raw["recipe"]["electromagnetic-science-pack"], data.raw["tool"]["electromagnetic-science-pack"])
    CreateRecipe(data.raw["recipe"]["cryogenic-science-pack"], data.raw["tool"]["cryogenic-science-pack"])
    CreateRecipe(data.raw["recipe"]["promethium-science-pack"], data.raw["tool"]["promethium-science-pack"])
    
    -- Modded Recipes
    CreateRecipe(data.raw["recipe"]["igrys-automation-science-pack"], data.raw["tool"]["automation-science-pack"])
    CreateRecipe(data.raw["recipe"]["igrys-mineral-science-pack"], data.raw["tool"]["igrys-mineral-science-pack"])
else
    local items = data.raw["lab"]["lab"].inputs
    local sciencePacks = {} -- This will be a list (array)
    -- Collect all science pack names into a list
    for _, item in ipairs(items) do
        item = data.raw["tool"][item] -- Get the item object
        if (item.auto_enrich == false) then
            log("Auto enrich false for " .. item.name)
        else
            log("Found science pack " .. item.name)
            table.insert(sciencePacks, item) -- Store the full item object
        end
    end

    -- Iterate through each science pack
    for _, sciencePack in ipairs(sciencePacks) do
        log("Science pack name: " .. sciencePack.name)
        for _, recipe in pairs(data.raw["recipe"]) do
            if recipe.auto_enrich == false or recipe.category == "recycling" then
            else
                if recipe.results then
                    for _, result in ipairs(recipe.results) do
                        --log("Result name: " .. result.name)
                        if result.name == sciencePack.name then
                            log("Found recipe " .. recipe.name .. " that produces " .. sciencePack.name)
                            CreateRecipe(recipe, sciencePack)
                        end
                    end
                end
            end
        end
    end
end 