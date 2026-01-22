if settings.startup["igrys-enable-menu-simulations"].value == false then
    return
end

menu_simulations = {}

menu_simulations["igrys-sim-1"] = -- Simulation name
{
    planet = "igrys",
    save = "__Igrys__/menu-simulations/Sim-1.zip", -- Path of your simulation
    length = 60 * 15, -- How much it will be recording (60 * 20 = 20 seconds)
    mods = {"Igrys"}, -- List of required mods
    game_view_settings = {default_show_value = false},
    init =
    [[
      local surface = game.surfaces["igrys"] -- Surface of camera
      local logo = surface.find_entities_filtered{name = "factorio-logo-11tiles"}[1]
      game.simulation.camera_surface_index = surface.index
      game.simulation.camera_position = {logo.position.x, logo.position.y+9.75}
      center = {logo.position.x, logo.position.y+9.75}
      game.simulation.camera_zoom = 1
      game.tick_paused = false
      surface.daytime = 0
      game.forces.enemy.set_evolution_factor(0.3)
      surface.peaceful_mode = true
    ]],
}

menu_simulations["igrys-sim-2"] = -- Simulation name
{
    planet = "igrys",
    save = "__Igrys__/menu-simulations/Sim-2.zip", -- Path of your simulation
    length = 60 * 15, -- How much it will be recording (60 * 20 = 20 seconds)
    mods = {"Igrys"}, -- List of required mods
    game_view_settings = {default_show_value = false},
    init =
    [[
      local surface = game.surfaces["igrys"] -- Surface of camera
      local logo = surface.find_entities_filtered{name = "factorio-logo-11tiles"}[1]
      game.simulation.camera_surface_index = surface.index
      game.simulation.camera_position = {logo.position.x, logo.position.y+9.75}
      center = {logo.position.x, logo.position.y+9.75}
      game.simulation.camera_zoom = 1
      game.tick_paused = false
      surface.daytime = 0.5
      game.forces.enemy.set_evolution_factor(0.3)
      surface.peaceful_mode = true
      game.surfaces["igrys"].find_entity("igrys-glass-space-rocket", {138, 11}).launch_rocket()
    ]],
}

menu_simulations["igrys-sim-3"] = -- Simulation name
{
    planet = "igrys",
    save = "__Igrys__/menu-simulations/Sim-3.zip", -- Path of your simulation
    length = 60 * 15, -- How much it will be recording (60 * 20 = 20 seconds)
    mods = {"Igrys"}, -- List of required mods
    game_view_settings = {default_show_value = false},
    init =
    [[
      local surface = game.surfaces["igrys"] -- Surface of camera
      local logo = surface.find_entities_filtered{name = "factorio-logo-11tiles"}[1]
      game.simulation.camera_surface_index = surface.index
      game.simulation.camera_position = {logo.position.x, logo.position.y+9.75}
      center = {logo.position.x, logo.position.y+9.75}
      game.simulation.camera_zoom = 1
      game.tick_paused = false
      surface.daytime = 0.5
      game.forces.enemy.set_evolution_factor(0.3)
      surface.peaceful_mode = true
    ]],
}

menu_simulations["igrys-sim-4"] = -- Simulation name
{
    planet = "igrys",
    save = "__Igrys__/menu-simulations/Sim-4.zip", -- Path of your simulation
    length = 60 * 15, -- How much it will be recording (60 * 20 = 20 seconds)
    mods = {"Igrys"}, -- List of required mods
    game_view_settings = {default_show_value = false},
    init =
    [[
      local surface = game.surfaces["igrys"] -- Surface of camera
      local logo = surface.find_entities_filtered{name = "factorio-logo-11tiles"}[1]
      game.simulation.camera_surface_index = surface.index
      game.simulation.camera_position = {logo.position.x, logo.position.y+9.75}
      center = {logo.position.x, logo.position.y+9.75}
      game.simulation.camera_zoom = 1
      game.tick_paused = false
      surface.daytime = math.random()
      game.forces.enemy.set_evolution_factor(0.3)
      surface.peaceful_mode = true

    ]],
}

menu_simulations["igrys-sim-5"] = -- Simulation name
{
    planet = "igrys",
    save = "__Igrys__/menu-simulations/Sim-5.zip", -- Path of your simulation
    length = 60 * 15, -- How much it will be recording (60 * 20 = 20 seconds)
    mods = {"Igrys"}, -- List of required mods
    game_view_settings = {default_show_value = false},
    init =
    [[
      local surface = game.surfaces["igrys"] -- Surface of camera
      local logo = surface.find_entities_filtered{name = "factorio-logo-11tiles"}[1]
      game.simulation.camera_surface_index = surface.index
      game.simulation.camera_position = {logo.position.x, logo.position.y+9.75}
      center = {logo.position.x, logo.position.y+9.75}
      game.simulation.camera_zoom = 1
      game.tick_paused = false
      surface.daytime = 0.5
      game.forces.enemy.set_evolution_factor(0.3)
      surface.peaceful_mode = true
    ]],
}

menu_simulations["igrys-sim-6"] = -- Simulation name
{
    planet = "igrys",
    save = "__Igrys__/menu-simulations/Sim-6.zip", -- Path of your simulation
    length = 60 * 10, -- How much it will be recording (60 * 20 = 20 seconds)
    mods = {"Igrys"}, -- List of required mods
    game_view_settings = {default_show_value = false},
    init =
    [[
      local surface = game.surfaces["igrys"] -- Surface of camera
      local logo = surface.find_entities_filtered{name = "factorio-logo-11tiles"}[1]
      game.simulation.camera_surface_index = surface.index
      game.simulation.camera_position = {logo.position.x, logo.position.y+9.75}
      center = {logo.position.x, logo.position.y+9.75}
      game.simulation.camera_zoom = 1
      game.tick_paused = false
      surface.daytime = math.random()
      game.forces.enemy.set_evolution_factor(0.3)
      surface.peaceful_mode = true
    ]],
}


t = data.raw["utility-constants"]["default"].main_menu_simulations


t.IgrysSim1 = menu_simulations["igrys-sim-1"]
t.IgrysSim2 = menu_simulations["igrys-sim-2"]
t.IgrysSim3 = menu_simulations["igrys-sim-3"]
t.IgrysSim4 = menu_simulations["igrys-sim-4"]
t.IgrysSim5 = menu_simulations["igrys-sim-5"]
t.IgrysSim6 = menu_simulations["igrys-sim-6"]