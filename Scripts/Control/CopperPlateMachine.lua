function OnEntityBuild (event)
    event.entity.disabled_by_script = storage.day
end

script.on_event(defines.events.on_built_entity, OnEntityBuild,
        {{filter = "name", name = "igrys-copper-plate-machine"}})
script.on_event(defines.events.on_robot_built_entity, OnEntityBuild,
        {{filter = "name", name = "igrys-copper-plate-machine"}})

function TurnCopperPlateMachines(day)
    local igrysSurface = game.surfaces["igrys"]
    for _, machine in ipairs(igrysSurface.find_entities_filtered{name = "igrys-copper-plate-machine"}) do
        machine.disabled_by_script = day
        --game.print("Turning " .. tostring(machine.active) .. " machine.active")
    end
end