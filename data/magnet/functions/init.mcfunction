# Print load message
tellraw @a ["",{"text":"\u2714","color":"dark_green"},{"text":" Magnet datapack loaded. Obtain some chainmail leggings, rename them to 'Magnet', and hold them to activate."}]

# Set up scoreboard values for tracking crafting of chainmail leggings
scoreboard objectives add m_craft_leggings minecraft.crafted:minecraft.chainmail_leggings
scoreboard objectives add m_count_magnets dummy
scoreboard objectives add m_count_reg_legs dummy