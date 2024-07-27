# reset the interval counter back to zero
scoreboard players set m_timer_player m_internals 0

# Detect magnet held in player main hand
execute if score playerHands m_options matches 1 run execute as @a[nbt={SelectedItem:{tag: {isMagnet:1b}}}] at @s run function magnet:magnetize_item
# Detect magnet equipped in player offhand
execute if score playerHands m_options matches 1 run execute as @a[nbt={Inventory:[{Slot: -106b, tag: {isMagnet:1b}}]}] at @s run function magnet:magnetize_item

# Detect magnet equipped in player leggings slot
execute if score playerEquip m_options matches 1 run execute as @a[nbt={Inventory:[{Slot: 101b, tag: {isMagnet:1b}}]}] at @s run function magnet:magnetize_item
