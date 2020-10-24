# Print load message
tellraw @a ["",{"text":"\u2714","color":"dark_green"},{"text":" Magnet datapack loaded.\nGet some iron and go craft a "},{"text":"Magnet","color":"yellow"},{"text":".\nMore info "},{"text":"here","underlined":true,"clickEvent":{"action":"open_url","value":"http://bit.ly/MagnetDatapack"}},{"text":".\nTo configure the datapack, click "}, {"text":"[here]","color":"yellow","clickEvent":{"action":"run_command","value":"/function magnet:toggle_options_pane"},"hoverEvent":{"action":"show_text","contents":"Toggle options pane"}},{"text":"\nor type: "},{"text":"/function magnet:toggle_options_pane","color":"yellow","clickEvent":{"action":"suggest_command","value":"/function magnet:toggle_options_pane"},"hoverEvent":{"action":"show_text","contents":"Click to suggest"}},{"text":"\n "}]

# Set up scoreboard values for tracking crafting of chainmail leggings
scoreboard objectives add m_craft_leggings minecraft.crafted:minecraft.chainmail_leggings
scoreboard objectives add m_count_magnets dummy
scoreboard objectives add m_count_reg_legs dummy

# Set up scoreboard values for timed magnetization and internal settings
scoreboard objectives add m_internals dummy "Magnet Internal"

# Set up options scoreboard
scoreboard objectives add m_options dummy "Magnet Datapack"
scoreboard objectives modify m_options displayname {"text":"Magnet Datapack","bold":true,"color":"yellow"}

# Set up team coloration for options menu
#team add magnet_internal "magnet internal"
team add magnet_option "magnet option"
#team modify magnet_internal color gray
team modify magnet_option color gold
#team join magnet_internal m_timer_player
#team join magnet_internal m_timer_mob
#team join magnet_internal ranSetup
team join magnet_option playerHands
team join magnet_option playerEquip
team join magnet_option armorStand
team join magnet_option allMobs_Laggy
team join magnet_option m_mob_interval
team join magnet_option m_player_interval
team join magnet_option playItemSound
team join magnet_option particlesOnHolder
team join magnet_option particlesOnItem
team join magnet_option enabledActionbarText

#scoreboard objectives setdisplay sidebar m_options
#scoreboard objectives setdisplay sidebar m_internals

# Set up trackers for if setup has been run and if options pane is currently open.
# If undefined, it can't be checked against by 'execute matches' (has null value) so make it val *= val, which makes it 0 if null and has no effect if it's 1
scoreboard players operation ranSetup m_internals *= ranSetup m_internals
scoreboard players operation optionsOpen m_internals *= optionsOpen m_internals

# If setup never ran, run setup script
execute if score ranSetup m_internals matches 0 run function magnet:default_configs

