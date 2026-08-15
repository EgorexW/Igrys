local inserter = data.raw["inserter"]["diagonal-inserter"]

inserter.pickup_position[1] = inserter.pickup_position[2]
inserter.insert_position[1] = inserter.insert_position[2]
