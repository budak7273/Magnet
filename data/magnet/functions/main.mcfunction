# Detect magnet equipped in player offhand
execute as @a[nbt={Inventory:[{Slot: -106b, tag: {isMagnet:1b}}]}] at @s run function magnet:magnetize_item
# Detect magnet equipped in player leggings slot
execute as @a[nbt={Inventory:[{Slot: 101b, tag: {isMagnet:1b}}]}] at @s run function magnet:magnetize_item

# Detect magnet held in player main hand
execute as @a[nbt={SelectedItem:{tag: {isMagnet:1b}}}] at @s run function magnet:magnetize_item

# Detect magnet in mobs' leggings armor slot
execute as @e[nbt={ArmorItems:[{}, {tag: {isMagnet:1b}}, {}, {}]}] at @s run function magnet:magnetize_item

# Detect players that have crafted at least one pair of leggings and deal with that
execute as @e[type=minecraft:player,scores={m_craft_leggings=1..}] if score @s m_craft_leggings matches 1.. run function magnet:while001_crafted_legs