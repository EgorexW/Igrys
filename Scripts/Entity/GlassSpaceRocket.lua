glassTint = {r = 0.8, g = 1, b = 1, a = 0.6}
local rocket_shift = 48

local glassSpaceRocketEntity = table.deepcopy(data.raw["rocket-silo"]["rocket-silo"])
glassSpaceRocketEntity.name = "igrys-glass-space-rocket"
glassSpaceRocketEntity.minable.result = "igrys-glass-space-rocket"
glassSpaceRocketEntity.fixed_recipe = "igrys-glass-rocket-part"
glassSpaceRocketEntity.icons = {
    {
        icon = glassSpaceRocketEntity.icon,
        tint = glassTint
    }
}
glassSpaceRocketEntity.icon = nil
--glassSpaceRocketEntity.door_back_sprite.filename = "__Igrys__/Assets/Entity/GlassSpaceRocket/04-door-back.png"
--glassSpaceRocketEntity.door_front_sprite.filename = "__Igrys__/Assets/Entity/GlassSpaceRocket/05-door-front.png"
glassSpaceRocketEntity.base_day_sprite.filename = "__Igrys__/Assets/Entity/GlassSpaceRocket/06-rocket-silo.png"
glassSpaceRocketEntity.base_front_sprite.filename = "__Igrys__/Assets/Entity/GlassSpaceRocket/14-rocket-silo-front.png"
glassSpaceRocketEntity.base_front_sprite.filename = "__Igrys__/Assets/Entity/GlassSpaceRocket/14-rocket-silo-front.png"
glassSpaceRocketEntity.rocket_entity = "igrys-glass-rocket-silo-rocket"

local glassRocketSiloRocket = table.deepcopy(data.raw["rocket-silo-rocket"]["rocket-silo-rocket"])
glassRocketSiloRocket.name = "igrys-glass-rocket-silo-rocket"
glassRocketSiloRocket.rocket_sprite.layers[1] = util.sprite_load("__Igrys__/Assets/Entity/GlassSpaceRocket/rocket-static-pod", {
    dice_y = 4,
    shift = util.by_pixel( 0, 17.0+rocket_shift),
    scale = 0.5 
})


local glassSpaceRocketItem = table.deepcopy(data.raw["item"]["rocket-silo"])
glassSpaceRocketItem.name = "igrys-glass-space-rocket"
glassSpaceRocketItem.place_result = "igrys-glass-space-rocket"
glassSpaceRocketItem.icons = {
    {
        icon = glassSpaceRocketItem.icon,
        tint = glassTint
    }
}
glassSpaceRocketItem.icon = nil

local glassSpaceRocketRecipe = table.deepcopy(data.raw["recipe"]["rocket-silo"])
glassSpaceRocketRecipe.name = "igrys-glass-space-rocket"
glassSpaceRocketRecipe.results = {{type="item", name="igrys-glass-space-rocket", amount=1}}
glassSpaceRocketRecipe.ingredients = {
    {type="item", name="igrys-glass", amount=1000},
    {type="item", name="steel-plate", amount=1000},
    {type="item", name="electric-engine-unit", amount=200},
    {type="item", name="igrys-magic-teseract", amount=50},
    {type="item", name="igrys-conductive-brick", amount=200}
}
glassSpaceRocketRecipe.main_product = "igrys-glass-space-rocket"
glassSpaceRocketRecipe.enabled = settings.startup["igrys-enable-all"].value

local glassRocketPartRecipe = table.deepcopy(data.raw["recipe"]["rocket-part"])
glassRocketPartRecipe.name = "igrys-glass-rocket-part"
glassRocketPartRecipe.icons = {
    {
        icon = "__base__/graphics/icons/rocket-part.png",
        tint = glassTint
    }
}
glassSpaceRocketRecipe.icon = nil
glassRocketPartRecipe.results = {{type="item", name="rocket-part", amount=3}}

table.insert(glassRocketPartRecipe.ingredients, {type="item", name="igrys-glass", amount=5})

data:extend{glassSpaceRocketEntity, glassRocketSiloRocket, glassSpaceRocketItem, glassSpaceRocketRecipe, glassRocketPartRecipe}