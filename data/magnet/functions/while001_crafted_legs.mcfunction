# Based off of watermill:while043_ln150
# say Running while001_crafted_legs

# Empty the player's inventory of magnets and regular chainmail leggings, storing the count of each in counter variables so they can be returned
execute store result score Global m_count_magnets run clear @s chainmail_leggings{isMagnet:1b}
execute store result score Global m_count_reg_legs run clear @s chainmail_leggings
#{Damage: 0} tried to track undamaged chain leggings but it didn't work

# Give back the correct number of magnet leggings
execute if score Global m_count_magnets matches 1.. run function magnet:while002_return_magnets

# Give magnet leggings for the leggings that were crafted to be turned into magnets, taking away from the number of regular leggings to return (unsure?)
execute if score Global m_count_reg_legs matches 1.. if score @s m_craft_leggings matches 1.. run function magnet:while003_return_magnets_when_new_crafted

# Give back the remaining regular leggings
execute if score Global m_count_reg_legs matches 1.. run function magnet:while004_return_regular_leggings

#scoreboard players set @s m_craft_leggings 0

# Run the function again if there is still a crafted leggings score for the player
execute if score @s m_craft_leggings matches 1.. run function magnet:while001_crafted_legs


