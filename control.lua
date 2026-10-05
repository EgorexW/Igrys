require("Scripts.Control.DayNightCycle")
require("Scripts.Control.EnrichedRecipeEnable")
require("Scripts.Control.MagicField")
require("Scripts.Control.ExlusiveTechnologies")

-- Factorio keeps only one handler per event, so both research handlers must share a single registration
script.on_event(defines.events.on_research_finished, function(event)
    OnResearch(event)
    ReloadEnrichedRecipes()
end)
