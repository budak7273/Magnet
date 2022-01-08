# Based off of watermill:while042_ln165
say Running while004_return_regular_leggings

# Give the caller regular leggings
give @s chainmail_leggings 1
# Subtract 1 from the 'leggings to return' count
scoreboard players remove @s m_count_reg_legs 1

# Inform players that had regular chainmail leggings in their inventory that the process of returning them isn't perfect
tellraw @s ["",{"text":"\u26a0","color":"yellow"},{"text":" You had chainmail leggings in your inventory when crafting a Magnet. They may have lost some of their item data. This is due to datapack limitations. Please avoid crafting Magnets while you have regular chainmail leggings in your inventory in the future.","italic":true,"color":"gray"}]

# Run this function again if there are still leggings to return
execute if score @s m_count_reg_legs matches 1.. run function magnet:while004_return_regular_leggings