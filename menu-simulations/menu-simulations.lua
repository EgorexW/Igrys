menu_simulations = {}

menu_simulations["igrys-sim-1"] = -- Simulation name
{
    planet = "igrys",
    save = "__Igrys__/menu-simulations/Sim-1.zip", -- Path of your simulation
    length = 60 * 20, -- How much it will be recording (60 * 20 = 20 seconds)
    mods = {"Igrys"}, -- List of required mods
    game_view_settings = {default_show_value = false},
    init =
    [[
      game.simulation.camera_surface_index = game.surfaces["igrys"].index -- Surface of camera
      game.simulation.camera_position = {-35, 14} -- Position of camera
      game.simulation.camera_zoom = 0.75 -- Zoom of camera
      game.tick_paused = false
      game.surfaces["igrys"].daytime = 0
      game.players[1].game_view_settings.show_controller_gui = false
      game.players[1].game_view_settings.show_quickbar = false
      game.players[1].game_view_settings.show_shortcut_bar = false
    ]],
}

menu_simulations["igrys-sim-2"] = -- Simulation name
{
    planet = "igrys",
    save = "__Igrys__/menu-simulations/Sim-1.zip", -- Path of your simulation
    length = 60 * 20, -- How much it will be recording (60 * 20 = 20 seconds)
    mods = {"Igrys"}, -- List of required mods
    game_view_settings = {default_show_value = false},
    init =
    [[
      game.simulation.camera_surface_index = game.surfaces["igrys"].index -- Surface of camera
      game.simulation.camera_position = {124, -2} -- Position of camera
      game.simulation.camera_zoom = 1 -- Zoom of camera
      game.tick_paused = false
      game.surfaces["igrys"].daytime = 0.5
      game.surfaces["igrys"].find_entity("igrys-glass-space-rocket", {138, 11}).launch_rocket()
      game.players[1].game_view_settings.show_controller_gui = false
    ]],
}

menu_simulations["igrys-sim-3"] = -- Simulation name
{
    planet = "igrys",
    save = "__Igrys__/menu-simulations/Sim-1.zip", -- Path of your simulation
    length = 60 * 15, -- How much it will be recording (60 * 20 = 20 seconds)
    mods = {"Igrys"}, -- List of required mods
    game_view_settings = {default_show_value = false},
    init =
    [[
      game.simulation.camera_surface_index = game.surfaces["igrys"].index -- Surface of camera
      game.simulation.camera_position = {187, 25} -- Position of camera
      game.simulation.camera_zoom = 1 -- Zoom of camera
      game.tick_paused = false
      game.surfaces["igrys"].daytime = 0.5
      game.players[1].game_view_settings.show_controller_gui = false
    ]],
}

menu_simulations["igrys-sim-4"] = -- Simulation name
{
    planet = "igrys",
    save = "__Igrys__/menu-simulations/Sim-1.zip", -- Path of your simulation
    length = 60 * 30, -- How much it will be recording (60 * 20 = 20 seconds)
    mods = {"Igrys"}, -- List of required mods
    game_view_settings = {default_show_value = false},
    init =
    [[
      game.simulation.camera_surface_index = game.surfaces["igrys"].index -- Surface of camera
      game.simulation.camera_position = {285, -12} -- Position of camera
      game.simulation.camera_zoom = 1 -- Zoom of camera
      game.tick_paused = false
      game.surfaces["igrys"].daytime = math.random()
    ]],
}

menu_simulations["igrys-sim-5"] = -- Simulation name
{
    planet = "igrys",
    save = "__Igrys__/menu-simulations/Sim-1.zip", -- Path of your simulation
    length = 60 * 20, -- How much it will be recording (60 * 20 = 20 seconds)
    mods = {"Igrys"}, -- List of required mods
    game_view_settings = {default_show_value = false},
    init =
    [[
      game.simulation.camera_surface_index = game.surfaces["igrys"].index -- Surface of camera
      game.simulation.camera_position = {-800, -84} -- Position of camera
      game.simulation.camera_zoom = 1 -- Zoom of camera
      game.tick_paused = false
      game.surfaces["igrys"].daytime = 0
      game.players[1].game_view_settings.show_controller_gui = false
    ]],
    update = [[
        local dx = 1
        local dy = 0
        if game.simulation.camera_position.x >= -180 then
            dx = 0
        end
        if game.simulation.camera_position.y > -85 then
            dy = -0.01
            dx = 0
        end
        game.simulation.camera_position = {game.simulation.camera_position.x + dx, game.simulation.camera_position.y + dy}
    ]]
}

menu_simulations["igrys-sim-6"] = -- Simulation name
{
    planet = "igrys",
    save = "__Igrys__/menu-simulations/Sim-1.zip", -- Path of your simulation
    length = 60 * 15, -- How much it will be recording (60 * 20 = 20 seconds)
    mods = {"Igrys"}, -- List of required mods
    game_view_settings = {default_show_value = false},
    init =
    [[
      game.simulation.camera_surface_index = game.surfaces["igrys"].index -- Surface of camera
      game.simulation.camera_position = {986, 13} -- Position of camera
      game.simulation.camera_zoom = 1 -- Zoom of camera
      game.tick_paused = false
      game.surfaces["igrys"].daytime = math.random()
      game.players[1].game_view_settings.show_controller_gui = false
    ]],
}

--data.raw["utility-constants"]["default"].main_menu_simulations = {}

t = data.raw["utility-constants"]["default"].main_menu_simulations

t.IgrysSim1 = menu_simulations["igrys-sim-1"]
t.IgrysSim2 = menu_simulations["igrys-sim-2"]
t.IgrysSim3 = menu_simulations["igrys-sim-3"]
t.IgrysSim4 = menu_simulations["igrys-sim-4"]
t.IgrysSim5 = menu_simulations["igrys-sim-5"]
t.IgrysSim6 = menu_simulations["igrys-sim-6"]