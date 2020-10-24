# Detect players that have crafted at least one pair of leggings and deal with that
execute as @e[type=minecraft:player,scores={m_craft_leggings=1..}] if score @s m_craft_leggings matches 1.. run function magnet:while001_crafted_legs

# Increment global timers by 1
scoreboard players add m_timer_player m_internals 1
scoreboard players add m_timer_mob m_internals 1

# If player timer exceeds m_player_interval, set it back to zero
execute if score m_timer_player m_internals >= m_player_interval m_options run function magnet:on_player_interval

# If mob timer exceeds m_mob_interval, set it back to zero
execute if score m_timer_mob m_internals >= m_player_interval m_options run function magnet:on_mob_interval