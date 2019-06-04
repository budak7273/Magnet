execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:chainmail_leggings", Count: 1b, tag: {display: {Name: '{"text":"Magnet"}'}} }]}] at @s run function magnet:magnetize_item
execute as @a[nbt={Inventory:[{Slot: 101b, id: "minecraft:chainmail_leggings", Count: 1b, tag: {display: {Name: '{"text":"Magnet"}'}} }]}] at @s run function magnet:magnetize_item

execute as @a[nbt={SelectedItem:{id: "minecraft:chainmail_leggings", Count: 1b, tag: {display: {Name: '{"text":"Magnet"}'}}}}] at @s run function magnet:magnetize_item

execute as @e[nbt={ArmorItems:[{}, {id: "minecraft:chainmail_leggings", Count: 1b, tag: {RepairCost: 0, display: {Name: '{"text":"Magnet"}'}}}, {}, {}]}] at @s run function magnet:magnetize_item