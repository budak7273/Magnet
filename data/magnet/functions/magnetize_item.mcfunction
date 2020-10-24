# Cause all items within 10 blocks of the caller to play a sound for the nearest player. The sound has a minimum volume and ramps up as the player gets closer.
execute if score playItemSound m_options matches 1 run execute as @e[type=minecraft:item, distance=0..10] at @s run playsound minecraft:entity.experience_bottle.throw player @p ~ ~ ~ .01 2 .002

# Displays particles on the function's caller if there is an item in magnet range
execute if score particlesOnHolder m_options matches 1 run execute as @s at @s if entity @e[distance=0..5, type=item] run particle minecraft:portal ~ ~.25 ~ 0 0 0 3 2 normal
# consider swapping to `nautilus` particle

# Show actionbar text to caller
execute if score enabledActionbarText m_options matches 1 run title @s actionbar {"text":"Magnet Equipped","color":"gray"}

# Item attraction range is 5 blocks

# Particles on item
execute if score particlesOnItem m_options matches 1 run execute as @e[limit=1,sort=nearest,distance=0..5,type=minecraft:item] at @s if entity @e[distance=0..5, type=item] run particle minecraft:reverse_portal ~ ~.25 ~ 0 0 0 0.1 3 normal

# Teleport nearest item entity to the function's caller 
tp @e[limit=1,sort=nearest,distance=0..5,type=minecraft:item] @s
# Move 1 block towards the holder's feet (broken)
#execute as @e[limit=1,sort=nearest,distance=0..5,type=minecraft:item] run execute facing entity @s feet as @e[type=item] at @s run tp ^ ^ ^1