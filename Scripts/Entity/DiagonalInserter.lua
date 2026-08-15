require ("util")
local diagonalInserter = table.deepcopy(data.raw["inserter"]["inserter"]) -- copy the base inserter
--Graphics
local graphicsPath = "__Igrys__/Assets/Entity/DiagonalInserter/"

diagonalInserter.name = "diagonal-inserter"
diagonalInserter.minable = {mining_time = 0.1, result = "diagonal-inserter"}
diagonalInserter.max_health = 175
diagonalInserter.energy_per_movement = "8kJ"
diagonalInserter.energy_per_rotation = "8kJ"
diagonalInserter.energy_source.drain = "0.5kW"
diagonalInserter.extension_speed = 0.1
diagonalInserter.rotation_speed = 0.04
diagonalInserter.starting_distance = 1.2
diagonalInserter.next_upgrade = nil

-- Hand Based
diagonalInserter.hand_base_picture.filename = graphicsPath.."hr-diagonal-inserter-hand-base.png"
diagonalInserter.hand_base_picture.width = 32
diagonalInserter.hand_base_picture.height = 136

-- Hand Closed
diagonalInserter.hand_closed_picture.filename = graphicsPath.."hr-diagonal-inserter-hand-closed.png"
diagonalInserter.hand_closed_picture.width = 72
diagonalInserter.hand_closed_picture.height = 164

-- Hand Open
diagonalInserter.hand_open_picture.filename = graphicsPath.."hr-diagonal-inserter-hand-open.png"
diagonalInserter.hand_open_picture.width = 72
diagonalInserter.hand_open_picture.height = 164

-- Platform
diagonalInserter.platform_picture.sheet.filename = graphicsPath.."hr-diagonal-inserter-platform.png"
diagonalInserter.platform_picture.sheet.width = 105
diagonalInserter.platform_picture.sheet.height = 79

data:extend{diagonalInserter}

data:extend({
    {
        type = "item",
        name = "diagonal-inserter",
        icon = "__Igrys__/Assets/Items/diagonal-inserter.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "inserter",
        order = "da[fast-inserter]",
        place_result = "diagonal-inserter",
        stack_size = 50
    }
})

local recipe = {
    type = "recipe",
    name = "diagonal-inserter",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type="item", name="igrys-conductive-brick", amount=3},
        {type="item", name="fast-inserter", amount=2},
        {type="item", name="igrys-cermite", amount=1}
    },
    results = {{type="item", name="diagonal-inserter", amount=1}}
}

data:extend{recipe}

PlanetsLib.set_default_import_location("diagonal-inserter", "igrys")