local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

PlanetsLib:extend({
    {
        type = "planet",
        name = "igrys",
        orbit = {
            parent = {
                type = "planet",
                name = "vulcanus",
            },
            distance = 12,
            orientation = 0.8,
        },
        subgroup = "planets",
        label_orientation = 0.55,
        icon = "__Igrys__/Assets/igrys.png",
        icon_size = 256,
        starmap_icon = "__Igrys__/Assets/igrys.png",
        starmap_icon_size = 256,
        map_gen_settings = {
            autoplace_settings = {
                ["tile"] = {
                    settings = {
                        ["dry-dirt"] = {},
                        ["dirt-1"] = {},
                        ["sand-1"] = {},
                    }
                },
                ["entity"] = {
                    settings = {
                        ["igrys-stone"] = {},
                        ["igrys-light-oil"] = {},
                        ["igrys-water"] = {},
                        ["igrys-magic-fluid"] = {},
                        ["igrys-ruin"] = {}
                    }
                },
            }
        },
        gravity_pull = 1,
        draw_orbit = true,
        order = "e[gleba]-a[igrys]",
        pollutant_type = nil,
        solar_power_in_space = 1000,
        platform_procession_set = {
            arrival = { "planet-to-platform-b" },
            departure = { "platform-to-planet-a" },
        },
        planet_procession_set = {
            arrival = { "platform-to-planet-b" },
            departure = { "planet-to-platform-a" },
        },
        surface_properties = {
            ["day-night-cycle"] = 60 * 60 * 5,
            ["magnetic-field"] = 20, -- Fulgora is 99
            ["solar-power"] = 600, -- No atmosphere
            pressure = 3000,
            gravity = 3,
        },
        asteroid_spawn_influence = 1,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.gleba_fulgora, 0.9),
        persistent_ambient_sounds = {},
        --surface_render_parameters = {
        --    shadow_opacity = 0.6, -- Slightly darker due to no atmosphere, though too dark doesn't play well with dynamic lighting
        --},
        --entities_require_heating = not common.DEBUG_DISABLE_FREEZING,
    },
})

data:extend({
    {
        type = "space-connection",
        name = "vulcanus-to-igrys",
        subgroup = "planet-connections",
        from = "vulcanus",
        to = "igrys",
        order = "d",
        length = 15000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.gleba_fulgora),
    },{
        type = "space-connection",
        name = "gleba-to-igrys",
        subgroup = "planet-connections",
        from = "gleba",
        to = "igrys",
        order = "e",
        length = 15000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_vulcanus),
    },
})

PlanetsLib.borrow_music(data.raw["planet"]["nauvis"], data.raw["planet"]["igrys"])