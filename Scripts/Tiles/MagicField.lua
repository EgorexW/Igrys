local magic_field_animation = {
    type = "simple-entity",
    name = "igrys-magic-field-animation",
    animations = {
        sheets = {
            {
                height = 512,
                width = 512,
                line_length = 16,
                variation_count = 4,
                filename = "__Igrys__/Assets/Tiles/MagicField/magic-field.png",
                frame_count = 16,
                animation_speed = 0.2,
                tint = {0.3, 0.3, 0.3, 0.3},
                scale = 2
            },
            {
                height = 256,
                width = 256,
                line_length = 16,
                variation_count = 4,
                filename = "__Igrys__/Assets/Tiles/MagicField/magic-field-glow.png",
                frame_count = 16,
                animation_speed = 0.2,
                scale = 4,
                draw_as_glow = true,
                tint = {0.3, 0.3, 0.3, 0.3},
                blend_mode = "additive"
            },
        }
    },
    icon = "__Igrys__/Assets/Tiles/MagicField/magic-field.png",
    icon_size = 64,
    count_as_rock_for_filtered_deconstruction = false,
    render_layer = "air-object",
    protected_from_tile_building = false,
    remove_decoratives = "false",
    selectable_in_game = false,
    subgroup = "nauvis-tiles",
    hidden = true,
    flags = {"not-on-map",},
    collision_box = {{-16, -16}, {16, 16}},
    secondary_draw_order = -1,
    collision_mask = {layers = {}}
}

data:extend{magic_field_animation}