# Based off of watermill:while043_ln150
#say Running while001_crafted_legs

# Increase the safety stopper
scoreboard players add craftSafetyStopper m_internals 1

# Empty the player's inventory of magnets and regular chainmail leggings, storing the count of each in counter variables so they can be returned
execute store result score @s m_count_magnets run clear @s chainmail_leggings{isMagnet:1b}
execute store result score @s m_count_reg_legs run clear @s chainmail_leggings
# {Damage: 0} tried to track undamaged chain leggings but it didn't work, probably because it's the blank thing

# Give back the correct number of magnet leggings
execute if score @s m_count_magnets matches 1.. run function magnet:while002_return_magnets

# Give magnet leggings for the leggings that were crafted to be turned into magnets, taking away from the number of regular leggings to return as well (since those were the ones we just crafted)
execute if score @s m_count_reg_legs matches 1.. if score @s m_craft_leggings matches 1.. run function magnet:while003_give_magnets_when_new_crafted

# Give back the remaining regular leggings (the ones we didn't craft, they were already in our inv)
execute if score @s m_count_reg_legs matches 1.. run function magnet:while004_return_regular_leggings

# Safety for if this runs too many times without succeeding in completing its task
execute if score craftSafetyStopper m_internals matches 100.. run function magnet:crafting_dropped_item_error

# Debugging always stop after one pass
#scoreboard players set @s m_craft_leggings 0

# Run the function again if there is still a crafted leggings score for the player
# Need this off to prevent superlag when the player dropped the item on the ground instead of taking it into their inventory
#execute if score @s m_craft_leggings matches 1.. run function magnet:while001_crafted_legs
