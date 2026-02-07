function OnResearch(details)
    if details.research.name == "igrys-magic-speed" then
        if details.research.force.technologies["igrys-magic-reach"].researched then
            details.research.force.technologies["igrys-magic-reach"].researched = false
            game.print({"igrys-messages.tech-conflict-warning", {"technology-name.igrys-magic-reach"}})
        end
    end
    if details.research.name == "igrys-magic-reach" then
        if details.research.force.technologies["igrys-magic-speed"].researched then
            details.research.force.technologies["igrys-magic-speed"].researched = false
            game.print({"igrys-messages.tech-conflict-warning", {"technology-name.igrys-magic-speed"}})
        end
    end
end

script.on_event(defines.events.on_research_finished, OnResearch)