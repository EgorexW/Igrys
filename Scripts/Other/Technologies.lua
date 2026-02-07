data:extend({
    {
        type = "technology",
        name = "planet-discovery-igrys",
        icons = PlanetsLib.technology_icon_planet("__Igrys__/Assets/Technologies/igrys.png"),
        icon_size = 256,
        effects = {
            {
                type = "unlock-space-location",
                space_location = "igrys",
                use_icon_overlay_constant = true,
            }, {
                type = "unlock-recipe",
                recipe = "igrys-conductive-brick"
            }, {
                type = "unlock-recipe",
                recipe = "igrys-copper-plate-machine"
            }
        },
        prerequisites = {
            "metallurgic-science-pack",
            "igrys-glassworking",
        },
        unit = {
            count = 1000,
            ingredients = {
                { "production-science-pack", 1 },
                { "metallurgic-science-pack", 1 }
            },
            time = 15,
        },
        essential = true,
    },
    {
        type = "technology",
        name = "igrys-glassworking",
        icon = "__Igrys__/Assets/Technologies/glassworking.png",
        icon_size = 256,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-glass"
            },
        },
        prerequisites = {
            "automation-3"
        },
        unit = {
            count = 500,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1 },
            },
            time = 60,
        }
    }, {
        type = "technology",
        name = "igrys-glassworking-2",
        icon = "__Igrys__/Assets/Technologies/glassworking.png",
        icon_size = 256,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-electronic-circuit"
            }, {
                type = "unlock-recipe",
                recipe = "igrys-automation-science-pack"
            },
        },
        prerequisites = {
            "igrys-glassworking"
        },
        unit = {
            count = 1000,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1 },
            },
            time = 30,
        }
    }, {
        type = "technology",
        name = "igrys-conductive-brick-usage",
        icon = "__Igrys__/Assets/Entity/MagicPumpjack/icon.png",
        icon_size = 128,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-magic-pumpjack"
            }, {
                type = "unlock-recipe",
                recipe = "igrys-copper-rail"
            }
        },
        prerequisites = {
            "planet-discovery-igrys"
        },
        research_trigger = {
            type = "craft-item",
            item = "igrys-conductive-brick",
            count = 10
        }
    }, {
        type = "technology",
        name = "igrys-magic-fluid",
        icon = "__Igrys__/Assets/Technologies/magic-fluid.png",
        icon_size = 1024,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-magic-fluid-processing"
            }
        },
        prerequisites = {
            "igrys-conductive-brick-usage"
        },
        research_trigger = {
            type = "mine-entity",
            entity = "igrys-magic-fluid",
            count = 1
        }
    }, {
        type = "technology",
        name = "igrys-magic-teseract",
        icon = "__Igrys__/Assets/Technologies/magic-teseract.png",
        icon_size = 1024,

        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-rich-magic-part-1"
            }, {
                type = "unlock-recipe",
                recipe = "igrys-rich-magic-part-2"
            }, {
                type = "unlock-recipe",
                recipe = "igrys-rich-magic-part-3"
            }, {
                type = "unlock-recipe",
                recipe = "igrys-magic-teseract-1"
            }, {
                type = "unlock-recipe",
                recipe = "igrys-magic-teseract-2"
            }, {
                type = "unlock-recipe",
                recipe = "igrys-magic-teseract-3"
            }
        },
        prerequisites = {
            "igrys-magic-fluid"
        },
        research_trigger = {
            type = "craft-item",
            item = "igrys-magic-part-1",
            count = 10
        }
    }, {
        type = "technology",
        name = "igrys-mineral-science",
        icon = "__Igrys__/Assets/Technologies/mineral-science-pack.png",
        icon_size = 1024,

        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-mineral-science-pack"
            }
        },
        prerequisites = {
            "igrys-magic-teseract",
        },
        research_trigger = {
            type = "craft-item",
            item = "igrys-magic-teseract",
            count = 1
        },
        essential = true,
    }, {
        type = "technology",
        name = "igrys-cermet",
        icon = "__Igrys__/Assets/Technologies/cermet.png",
        icon_size = 1024,
        
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-cermet"
            }, {
                type = "unlock-recipe",
                recipe = "igrys-raw-cermite"
            }, {
                type = "unlock-recipe",
                recipe = "igrys-raw-cermite-concrete-subproduct"
            }
        },
        prerequisites = {
            "planet-discovery-igrys",
        },
        unit = {
            count = 500,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1 },
                { "metallurgic-science-pack", 1 }
            },
            time = 60,
        },
    }, {
        type = "technology",
        name = "igrys-glassworking-3",
        icon = "__Igrys__/Assets/Technologies/glassworking.png",
        icon_size = 256,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-plastic-bar"
            }
        },
        prerequisites = {
            "igrys-glassworking-2",
        },
        unit = {
            count = 500,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1 }
            },
            time = 60,
        },
    }, {
        type = "technology",
        name = "igrys-sulfuric-acid",
        icons = MadeFromIconsTech(data.raw["fluid"]["sulfuric-acid"].icon, "__Igrys__/Assets/Items/cermet.png"),

        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-sulfuric-acid"
            }
        },
        prerequisites = {
            "igrys-cermet",
        },
        unit = {
            count = 500,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1 },
                { "metallurgic-science-pack", 1 }
            },
            time = 60,
        },
    }, {
        type = "technology",
        name = "igrys-rich-magic-teseract",
        icons = {
            {
                icon = "__Igrys__/Assets/Technologies/magic-teseract.png",
                icon_size = 1024,
            },
            {
                icon = "__Igrys__/Assets/Other/rich-icon.png",
                scale = 2,
                icon_size = 16,
                shift = { 40, 40 }
            }
        },

        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-rich-magic-teseract"
            }
        },
        prerequisites = {
            "igrys-mineral-science",
            "igrys-cermet"
        },
        unit = {
            count = 250,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1 },
                { "metallurgic-science-pack", 1 },
                { "igrys-mineral-science-pack", 1 }
            },
            time = 60,
        },
    }, {
        type = "technology",
        name = "igrys-strong-barrel",
        icon = "__Igrys__/Assets/Items/Barrel/Filled2.png",
        icon_size = 128,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-strong-barrel"
            }, {
                type = "unlock-recipe",
                recipe = "igrys-magic-fluid-barrel"
            }, {
                type = "unlock-recipe",
                recipe = "empty-igrys-magic-fluid-barrel"
            }
        },
        prerequisites = {
            "igrys-rich-magic-teseract",
        },
        unit = {
            count = 500,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1 },
                { "metallurgic-science-pack", 1 },
                { "igrys-mineral-science-pack", 1 }
            },
            time = 60,
        }
    }, {
        type = "technology",
        name = "igrys-glass-space-rocket",
        icons = {
            {
                icon = data.raw["item"]["rocket-silo"].icon,
                icon_size = data.raw["item"]["rocket-silo"].icon_size,
                tint = glassTint
            }
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-glass-space-rocket"
            }, {
                type = "unlock-recipe",
                recipe = "igrys-glass-rocket-part"
            }
        },
        prerequisites = {
            "igrys-mineral-science",
        },
        unit = {
            count = 500,
            ingredients = {
                { "igrys-mineral-science-pack", 1 }
            },
            time = 60,
        }
    }, {
        type = "technology",
        name = "igrys-science-enriching",
        icon = "__Igrys__/Assets/Entity/ScienceEnhancer/icon.png",
        icon_size = 128,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-science-enhancer-machine"
            }
        },
        prerequisites = {
            "igrys-rich-magic-teseract",
        },
        unit = {
            count = 1000,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1 },
                { "metallurgic-science-pack", 1 },
                { "igrys-mineral-science-pack", 1 }
            },
            time = 60,
        }
    },{
        type = "technology",
        name = "igrys-glass-productivity",
        icon = "__Igrys__/Assets/Technologies/glassworking.png",
        icon_size = 256,
        effects = {
            {
                type = "change-recipe-productivity",
                recipe = "igrys-glass",
                change = 0.1
            },
        },
        prerequisites = { "igrys-glassworking-3", "igrys-mineral-science" },
        unit = {
            count_formula = "1.5^L*1000",
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1 },
                { "metallurgic-science-pack", 1 },
                { "igrys-mineral-science-pack", 1 }
            },
            time = 60,
        },
        max_level = "infinite",
        upgrade = true
    }, {
        type = "technology",
        name = "igrys-copper-plate-productivity",
        icon = data.raw["item"]["copper-plate"].icon,
        effects = {
            {
                type = "change-recipe-productivity",
                recipe = "copper-plate",
                change = 0.1
            },{
                type = "change-recipe-productivity",
                recipe = "casting-copper",
                change = 0.1
            },{
                type = "change-recipe-productivity",
                recipe = "igrys-free-copper-plate",
                change = 0.1,
                hidden = true
            },
        },
        prerequisites = { "igrys-mineral-science" },
        unit = {
            count_formula = "1.5^L*1000",
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1 },
                { "metallurgic-science-pack", 1 },
                { "igrys-mineral-science-pack", 1 }
            },
            time = 60,
        },
        max_level = "infinite",
        upgrade = true
    }, {
        type = "technology",
        name = "igrys-magic-reach",
        icons = {
            {
                icon = "__Igrys__/Assets/Technologies/mineral-science-pack.png",
                icon_size = 1024,
            },
            {
                icon = "__Igrys__/Assets/Other/rich-icon.png",
                scale = 2,
                icon_size = 16,
                shift = { 40, 40 }
            }
        },
        effects = {
            { type = "character-build-distance", modifier = 10 },
            { type = "character-reach-distance", modifier = 10 },
            { type = "character-resource-reach-distance", modifier = 10 },
            { type = "character-item-drop-distance", modifier = 10 }
        },
        prerequisites = { "igrys-mineral-science" },
        unit = {
            count = 1,
            ingredients = {
                { "igrys-mineral-science-pack", 1 }
            },
            time = 60,
        },
    }, {
        type = "technology",
        name = "igrys-magic-speed",
        icons = {
            {
                icon = "__Igrys__/Assets/Technologies/mineral-science-pack.png",
                icon_size = 1024,
            },
            {
                icon = "__Igrys__/Assets/Other/rich-icon.png",
                scale = 2,
                icon_size = 16,
                shift = { 40, 40 }
            }
        },
        effects = {
            { type = "character-running-speed", modifier = 1 },
        },
        prerequisites = { "igrys-mineral-science" },
        unit = {
            count = 1,
            ingredients = {
                { "igrys-mineral-science-pack", 1 }
            },
            time = 60,
        },
    },
})
