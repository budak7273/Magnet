# Cause all items within 10 blocks of the caller to play a sound for the nearest player. The sound has a minimum volume and ramps up as the player gets closer.
execute as @e[type=minecraft:item, distance=0..10] at @s run playsound minecraft:entity.experience_bottle.throw player @p ~ ~ ~ .01 2 .002
# Teleport nearest item entity to the function's caller 
tp @e[limit=1,sort=nearest,distance=0..5,type=minecraft:item] @s