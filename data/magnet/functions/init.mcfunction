# Print load message
tellraw @a ["",{"text":"\u2714","color":"dark_green"},{"text":" Magnet datapack loaded.\nGet some iron and go craft a "},{"text":"Magnet","color":"yellow"},{"text":".\nMore info "},{"text":"here","underlined":true,"clickEvent":{"action":"open_url","value":"http://bit.ly/MagnetDatapack"}},{"text":"."}]

# Set up scoreboard values for tracking crafting of chainmail leggings
scoreboard objectives add m_craft_leggings minecraft.crafted:minecraft.chainmail_leggings
scoreboard objectives add m_count_magnets dummy
scoreboard objectives add m_count_reg_legs dummy