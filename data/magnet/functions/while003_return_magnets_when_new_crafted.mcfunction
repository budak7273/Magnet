# Based off of watermill:while041_ln160
# say Running while003_return_magnets_when_new_crafted

# Give the caller one magnet
function magnet:give_magnet
# Subtract 1 from the 'regular leggings to return' count and 1 from the 'crafted leggings' count
scoreboard players remove Global m_count_reg_legs 1
scoreboard players remove @s m_craft_leggings 1

# Run this function again if there are still magnets to return (?)
execute if score Global m_count_reg_legs matches 1.. if score @s m_craft_leggings matches 1.. run function magnet:while003_return_magnets_when_new_crafted