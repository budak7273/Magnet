# Cause all items within 10 blocks of the caller to play a sound for the nearest player. The sound has a minimum volume and ramps up as the player gets closer.
execute as @e[type=minecraft:item, distance=0..10] at @s run playsound minecraft:entity.experience_bottle.throw player @p ~ ~ ~ .01 2 .002

# Displays particles on the function's caller if there is an item in magnet range
execute as @s at @s if entity @e[distance=0..5, type=item] run particle minecraft:portal ~ ~.25 ~ .001 0 .001 1 2 normal
# TODO: consider swapping to nautilus particle

# Teleport nearest item entity to the function's caller 
tp @e[limit=1,sort=nearest,distance=0..5,type=minecraft:item] @s