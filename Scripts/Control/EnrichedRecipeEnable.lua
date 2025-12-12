function ReloadEnrichedRecipes()
    for forceName, force in pairs(game.forces) do
        if force.technologies["igrys-science-enriching"].researched then
            for recipeName, recipe in pairs(force.recipes) do
                if recipe.category == "igrys-enriched-science-pack" then
                    -- Removes the "igrys-" prefix and the "-enriched" suffix to get the base recipe name
                    local baseRecipe = force.recipes[string.sub(recipeName, 6 + 1, #recipeName - 9)]
                    --game.print("Checking base recipe " .. string.sub(recipeName, 6 + 1, #recipeName - 9))
                    if baseRecipe then
                        recipe.enabled = baseRecipe.enabled
                        --game.print("Setting " .. recipeName .. " to " .. tostring(recipe.enabled))
                    end
                end
            end
        end
    end
end

script.on_nth_tick(60 * 60 * 30, ReloadEnrichedRecipes) -- Run every half an hour, just in case
script.on_event(defines.events.on_research_finished, ReloadEnrichedRecipes)
script.on_configuration_changed(ReloadEnrichedRecipes)