# Detect magnet equipped in offhand
execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:chainmail_leggings", Count: 1b, tag: {display: {Name: '{"text":"Magnet"}'}} }]}] at @s run function magnet:magnetize_item
# Detect magnet equipped in player leggings slot
execute as @a[nbt={Inventory:[{Slot: 101b, id: "minecraft:chainmail_leggings", Count: 1b, tag: {display: {Name: '{"text":"Magnet"}'}} }]}] at @s run function magnet:magnetize_item

# Detect magnet held in main hand
execute as @a[nbt={SelectedItem:{id: "minecraft:chainmail_leggings", Count: 1b, tag: {display: {Name: '{"text":"Magnet"}'}}}}] at @s run function magnet:magnetize_item

# Detect magnet in mobs' leggings armor slot
execute as @e[nbt={ArmorItems:[{}, {id: "minecraft:chainmail_leggings", Count: 1b, tag: {display: {Name: '{"text":"Magnet"}'}}}, {}, {}]}] at @s run function magnet:magnetize_item