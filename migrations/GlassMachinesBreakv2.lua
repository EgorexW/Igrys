-- migrations/GlassMachinesBreakv2.lua
local GRACE_PERIOD_MINUTES = 15
local GRACE_PERIOD_TICKS = GRACE_PERIOD_MINUTES * 60 * 60

storage.glass_grace_until = game.tick + GRACE_PERIOD_TICKS

for _, player in pairs(game.players) do
    -- Zmiana: sprawdzamy i dodajemy do player.gui.screen zamiast center
    if not player.gui.screen["igrys_glass_warning_frame"] then
        local frame = player.gui.screen.add{
            type = "frame",
            name = "igrys_glass_warning_frame",
            direction = "vertical",
            caption = {"igrys-gui.warning-title"}
        }
        frame.auto_center = true -- Tutaj zadziała bez błędu

        local label = frame.add{
            type = "label",
            caption = {"igrys-gui.glass-warning-body", GRACE_PERIOD_MINUTES}
        }
        label.style.single_line = false
        label.style.maximal_width = 450

        local button_flow = frame.add{type = "flow", direction = "horizontal"}
        button_flow.style.horizontally_stretchable = true
        button_flow.style.horizontal_align = "right"
        button_flow.style.top_margin = 12

        button_flow.add{
            type = "button",
            name = "igrys_glass_warning_confirm",
            caption = {"igrys-gui.confirm-button"},
            style = "confirm_button"
        }

        player.opened = frame
    end
end