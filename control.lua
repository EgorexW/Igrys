require("Scripts.Control.DayNightCycle")
require("Scripts.Control.EnrichedRecipeEnable")

script.on_event(defines.events.on_chunk_generated, function(event)
    local surface = event.surface
    if surface.name == "igrys" then
        local chunkpos = event.position
        local fancy_water = surface.create_entity {
            name = "igrys-magic-field-animation",
            position = {chunkpos.x * 32 + 16, chunkpos.y * 32 + 16},
            create_build_effect_smoke = false
        }
        fancy_water.active = false
        fancy_water.destructible = false
        fancy_water.minable_flag = false
    end
end)
