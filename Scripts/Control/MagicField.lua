function CreateMagicField(event)
    local surface = event.surface
    if surface.name == "igrys" then
        --game.print("Creating magic field at " .. event.position.x .. ", " .. event.position.y)
        local chunkpos = event.position
        local fancy_water = surface.create_entity {
            name = "igrys-magic-field-animation",
            position = {chunkpos.x * 32 + 16, chunkpos.y * 32 + 16},
            create_build_effect_smoke = false
        }
        --fancy_water.active = false
        fancy_water.destructible = false
        fancy_water.minable_flag = false
    end
end

script.on_event(defines.events.on_chunk_generated, CreateMagicField)
script.on_event(defines.events.on_tick, function(event)
    if (storage.chunks) then
        CreateMagicField({
            surface = game.surfaces["igrys"],
            position = storage.chunks[1]
        })
        table.remove(storage.chunks, 1)
        if (#storage.chunks == 0) then
            storage.chunks = nil
        end
    end
end)