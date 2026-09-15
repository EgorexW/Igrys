local TARGET_RECIPE = "igrys-glass" -- Target internal recipe name

function GlassMachinesBreak()
    -- Iterate through every active surface (Nauvis, space platforms, planets, etc.)
    for _, surface in pairs(game.surfaces) do
        -- Filtering by type finds all tiers of assemblers, chemical plants, refineries, etc.
        local machines = surface.find_entities_filtered{type = "assembling-machine"}

        for _, machine in ipairs(machines) do
            if machine.valid and not machine.disabled_by_script then
                local recipe = machine.get_recipe()

                -- Check if the machine is set to the target recipe and has run at least once
                if recipe and recipe.name == TARGET_RECIPE and machine.products_finished > 0 then
                    local status = machine.status

                    if status == defines.entity_status.item_ingredient_shortage
                            or status == defines.entity_status.fluid_ingredient_shortage then
                        -- Permanently disable and lock interaction
                        machine.disabled_by_script = true
                        machine.operable = false

                        -- Send clickable alert
                        local pos = machine.position
                        local gps_tag = string.format("[gps=%.1f,%.1f,%s]", pos.x, pos.y, surface.name)
                        game.print(gps_tag .. " Machine crafting [recipe=" .. TARGET_RECIPE .. "] ran out of ingredients and broke!")
                    end
                end
            end
        end
    end
end

script.on_nth_tick(60 * 2, GlassMachinesBreak)