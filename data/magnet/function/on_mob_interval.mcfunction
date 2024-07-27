# reset the interval counter back to zero
scoreboard players set m_timer_mob m_internals 0

#Random sort so that mobs 'fight' for items and if multiple have magnets they are more likely to suck up gear that others don't need

# Detect magnet in armor stands' leggings armor slot. Exclude if all mobs is on
execute unless score allMobs_Laggy m_options matches 1 if score armorStand m_options matches 1 run execute as @e[type=minecraft:armor_stand, sort=random, nbt={ArmorItems: [{}, {components:{"minecraft:custom_data": {isMagnet: 1b}} }, {}, {}]}] at @s run function magnet:magnetize_item

# Detect magnet in any mobs' leggings armor slot.
execute if score allMobs_Laggy m_options matches 1 run execute as @e[type=!minecraft:player,nbt={ArmorItems: [{}, {components:{"minecraft:custom_data": {isMagnet: 1b}} }, {}, {}]}, sort=random] at @s run function magnet:magnetize_item

# Detect magnet in any mobs' hand slot (ex. Foxes).
execute if score allMobs_Laggy m_options matches 1 run execute as @e[type=!minecraft:player,nbt={HandItems: [{components:{"minecraft:custom_data": {isMagnet: 1b}}}]}, sort=random] at @s run function magnet:magnetize_item
