# Based off of watermill:while040_ln156
# say Running while002_return_magnets

# Give the caller one magnet
function magnet:give_magnet
# Subtract 1 from the 'magnets to return' count
scoreboard players remove Global m_count_magnets 1

# Run this function again if there are still magnets to return
execute if score Global m_count_magnets matches 1.. run function magnet:while002_return_magnets