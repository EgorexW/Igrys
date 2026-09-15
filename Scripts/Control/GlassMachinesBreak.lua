local TARGET_RECIPE = "igrys-glass" -- Target internal recipe name

function GlassMachinesBreak()
    if not settings.global["igrys-glass-machines-can-break"].value then return end
    
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
                    local failure_reason = nil

                    if status == defines.entity_status.item_ingredient_shortage
                            or status == defines.entity_status.fluid_ingredient_shortage then
                        failure_reason = "shortage"
                    elseif status == defines.entity_status.full_output then
                        failure_reason = "full_output"
                    end

                    if failure_reason then
                        machine.disabled_by_script = true

                        -- Dispatch a custom alert to all players on that machine's force
                        for _, player in pairs(machine.force.players) do
                            player.add_custom_alert(
                                    machine,                                             -- Target entity (camera centers here when clicked)
                                    {type = "item", name = TARGET_RECIPE},               -- Icon displayed in the alert tray
                                    {"igrys-messages.machine-broken-alert"},             -- Tooltip message
                                    true                                                 -- show_on_map: true displays icon on the map/minimap
                            )

                            -- Optional: Play the destruction sound to catch their attention immediately
                            player.play_sound{path = "utility/alert_destroyed"}
                        end
                    end
                end
            end
        end
    end
end

script.on_nth_tick(60 * 5, GlassMachinesBreak)

-- Close GUI and display in-world warning when a player tries to interact with a broken unit
script.on_event(defines.events.on_gui_opened, function(event)
    local entity = event.entity
    if not entity or not entity.valid then return end

    if entity.disabled_by_script and entity.type == "assembling-machine" then
        local recipe = entity.get_recipe()
        if recipe and recipe.name == TARGET_RECIPE then
            local player = game.get_player(event.player_index)
            if player then
                player.opened = nil
                player.create_local_flying_text{
                    text = {"igrys-messages.machine-broken-glass-flying"},
                    position = entity.position,
                    color = {r = 1.0, g = 0.4, b = 0.4}
                }
            end
        end
    end
end)