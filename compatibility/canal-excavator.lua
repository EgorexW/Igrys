if not mods["canal-excavator"] then return end

data:extend({{
  type = "mod-data",
  name = "canex-igrys-config",
  data_type = "canex-surface-config",
  data = {
    surfaceName = "igrys",
    localisation = {"space-location-name.igrys"},
    mineResult = "stone",
    oreStartingAmount = 25,
    mining_time = data.raw["resource"]["igrys-stone"].minable.mining_time,
    tint = {r = 125, g = 20, b = 230},
    icon_data = {
      icon_size = 500,
    }
  },
}})