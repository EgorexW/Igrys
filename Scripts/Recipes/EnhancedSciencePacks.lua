local function recipe_has_category(recipe, category_name)
    if recipe.categories then
        for _, cat in ipairs(recipe.categories) do
            if cat == category_name then
                return true
            end
        end
    end
    return false
end

local function CreateRecipe(recipe, sciencePack)
    -- Create a copy of the existing recipe
    local newRecipe = table.deepcopy(recipe)
    if newRecipe.ingredients then
        newRecipe.name = "igrys-" .. recipe.name .. "-enhanced"
        newRecipe.baseRecipe = recipe.name
        newRecipe.categories = {"igrys-enriched-science-pack"}
        newRecipe.enabled = settings.startup["igrys-enable-all"].value or newRecipe.enabled
        newRecipe.subgroup = "igrys-enriched-science-pack"
        newRecipe.auto_recycle = false
        newRecipe.hidden_in_factoriopedia = true
        newRecipe.hide_from_player_crafting = true
        newRecipe.localised_name = { "recipe-name.igrys-enriched-science-pack", recipe.localised_name or { "item-name." .. sciencePack.name}}
        newRecipe.auto_enrich = false
        custom_fluid_indexes = {}
        for i, ingredient in ipairs(newRecipe.ingredients) do
            if ingredient.type == "fluid" then
                if ingredient.fluidbox_index ~= nil then
                    table.insert(custom_fluid_indexes, ingredient.fluidbox_index)
                end
            end
        end
        if #custom_fluid_indexes == 0 then
            table.insert(newRecipe.ingredients, {type = "fluid", name = "igrys-magic-fluid", amount = 2})
        else
            myIndex = 1
            for _, index in ipairs(custom_fluid_indexes) do
                if myIndex <= index then
                    myIndex = index + 1
                end
            end
            log("Assigning igrys-magic-fluid to fluidbox_index " .. myIndex .. " for recipe " .. recipe.name)
            table.insert(newRecipe.ingredients, {type = "fluid", name = "igrys-magic-fluid", amount = 2, fluidbox_index = myIndex})
            if myIndex > 3 then
                log("Warning: Recipe " .. recipe.name .. " would exceed 3 fluidboxes when enriched, not enriching")
                return
            end
        end

        data:extend{newRecipe}
        log("New enriched recipe added for " .. recipe.name)
    end
end

if not settings.startup["igrys-enhance-modded-science-packs"].value then
    -- Vanilla Recipes
    CreateRecipe(data.raw["recipe"]["automation-science-pack"], data.raw["item"]["automation-science-pack"])
    CreateRecipe(data.raw["recipe"]["logistic-science-pack"], data.raw["item"]["logistic-science-pack"])
    CreateRecipe(data.raw["recipe"]["chemical-science-pack"], data.raw["item"]["chemical-science-pack"])
    CreateRecipe(data.raw["recipe"]["military-science-pack"], data.raw["item"]["military-science-pack"])
    CreateRecipe(data.raw["recipe"]["production-science-pack"], data.raw["item"]["production-science-pack"])
    CreateRecipe(data.raw["recipe"]["utility-science-pack"], data.raw["item"]["utility-science-pack"])
    CreateRecipe(data.raw["recipe"]["space-science-pack"], data.raw["item"]["space-science-pack"])
    CreateRecipe(data.raw["recipe"]["metallurgic-science-pack"], data.raw["item"]["metallurgic-science-pack"])
    CreateRecipe(data.raw["recipe"]["agricultural-science-pack"], data.raw["item"]["agricultural-science-pack"])
    CreateRecipe(data.raw["recipe"]["electromagnetic-science-pack"], data.raw["item"]["electromagnetic-science-pack"])
    CreateRecipe(data.raw["recipe"]["cryogenic-science-pack"], data.raw["item"]["cryogenic-science-pack"])
    CreateRecipe(data.raw["recipe"]["promethium-science-pack"], data.raw["item"]["promethium-science-pack"])
    
    -- Modded Recipes
    CreateRecipe(data.raw["recipe"]["igrys-automation-science-pack"], data.raw["item"]["automation-science-pack"])
    CreateRecipe(data.raw["recipe"]["igrys-mineral-science-pack"], data.raw["item"]["igrys-mineral-science-pack"])
else
    local items = data.raw["lab"]["lab"].inputs
    local sciencePacks = {} -- This will be a list (array)
    -- Collect all science pack names into a list
    for _, item in ipairs(items) do
        item = data.raw["item"][item] -- Get the item object
        if item then
            if (item.auto_enrich == false) then
                log("Auto enrich false for " .. item.name)
            else
                log("Found science pack " .. item.name)
                table.insert(sciencePacks, item) -- Store the full item object
            end
        end
    end

    -- Iterate through each science pack
    for _, sciencePack in ipairs(sciencePacks) do
        log("Science pack name: " .. sciencePack.name)
        for _, recipe in pairs(data.raw["recipe"]) do
            if settings.startup["igrys-exclude-recipies-with-same-pack-as-ingredient"].value == true then
                if recipe.ingredients then
                    for _, ingredient in ipairs(recipe.ingredients) do
                        if ingredient.name == sciencePack.name then
                            log("Found recipe " .. recipe.name .. " that uses " .. sciencePack.name .. " as an ingredient")
                            recipe.auto_enrich = false
                        end
                    end
                end
            end
            if recipe_has_category(recipe, "recycling") then
                recipe.auto_enrich = false
            end
            if recipe.auto_enrich == false then
            else
                if recipe.results then
                    for _, result in ipairs(recipe.results) do
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
