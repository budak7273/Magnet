# Mark setup as ran
scoreboard players set ranSetup m_internals 1
tellraw @a ["",{"text":"\n"},{"text":"Ran magnet default config setup.","italic":true}]

# init magnetization player interval to every 5 ticks (0.25 seconds)
scoreboard players set m_player_interval m_options 5

# init magnetization mob interval to every 20 ticks (1 second)
scoreboard players set m_mob_interval m_options 20

# Works in players' main and offhand
scoreboard players set playerHands m_options 1

# Works in players' equip slots (legs)
scoreboard players set playerEquip m_options 1

# Works on armor stands
scoreboard players set armorStand m_options 1

# Works on all mobs (can cause considerable server lag)
scoreboard players set allMobs_Laggy m_options 0

# Plays sound on items
scoreboard players set playItemSound m_options 1

# Shows hud text when a magnet is equipped
scoreboard players set enabledActionbarText m_options 1

# Display particles
scoreboard players set particlesOnHolder m_options 1
scoreboard players set particlesOnItem m_options 1

