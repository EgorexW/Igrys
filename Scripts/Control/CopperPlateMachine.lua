function OnEntityBuild (event)
    event.entity.active = not storage.day
end

script.on_event(defines.events.on_built_entity, OnEntityBuild,
        {{filter = "name", name = "igrys-copper-plate-machine"}})
script.on_event(defines.events.on_robot_built_entity, OnEntityBuild,
        {{filter = "name", name = "igrys-copper-plate-machine"}})

function TurnCopperPlateMachines(day)
    local igrysSurface = game.surfaces["igrys"]
    for _, machine in ipairs(igrysSurface.find_entities_filtered{name = "igrys-copper-plate-machine"}) do
        machine.active = not day
        --game.print("Turning " .. tostring(machine.active) .. " machine.active")
    end
end

script.on_nth_tick(60 * 60, function()
    local igrysSurface = game.surfaces["igrys"]
    if not igrysSurface then
        return
    end
    if storage.day then
        return
    end

    local machines = igrysSurface.find_entities_filtered{name = "igrys-copper-plate-machine"}
    local nr = # (machines)
    
    if math.random() > ((1) / (-nr - 1)) + 1 then
        game.print("CopperPlateMachine: No machine triggered this minute.")
        return
    end
        
    local randomMachine = machines[math.random(nr)]
    
    randomMachine.power_usage = randomMachine.power_usage * 1000 
    game.print("CopperPlateMachine: Boosted machine " .. randomMachine.unit_number)
    
    if not storage.toShutdown then
        storage.toShutdown = {}
    end
    
    storage.toShutdown = randomMachine
end)

script.on_nth_tick(60 * 2, function()
    local igrysSurface = game.surfaces["igrys"]
    if not igrysSurface then return end
    if storage.toShutdown == nil then
        return
    end
    storage.toShutdown.power_usage = storage.toShutdown.power_usage / 1000
    game.print("CopperPlateMachine: Restored machine " .. storage.toShutdown.unit_number)
    storage.toShutdown = nil
end)