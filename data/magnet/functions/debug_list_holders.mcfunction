# Makes all entities (not players) holding a magnet announce themselves in chat.

#execute as @e[type=!minecraft:player,nbt={ArmorItems:[{}, {tag: {isMagnet:1b}}, {}, {}]}, sort=random] at @s run say I am holding a magnet.

# Make entities glow
effect give @e[type=!minecraft:player,nbt={ArmorItems:[{}, {tag: {isMagnet:1b}}, {}, {}]}] minecraft:glowing 30 0 true

# Command that lists them all + helper text
tellraw @s ["",{"text":"Loaded entities holding magnets:\n","bold":true,"color":"yellow"},{"text":" ["},{"selector":"@e[type=!minecraft:player,nbt={ArmorItems:[{}, {tag: {isMagnet:1b}}, {}, {}]}]"},{"text":"]\n\nThey have all been given glowing for 30 seconds.\nTo teleport to one of them hover over them in the list to get their UUID, then type: "},{"text":"/tp <uuid>","color":"yellow","clickEvent":{"action":"suggest_command","value":"/tp UUID"},"hoverEvent":{"action":"show_text","contents":"Suggest command"}},{"text":"\nYou should probably copy-paste them in from your log file.\n\nAlternatively, you can select them for commands via:\n"},{"text":"@e[type=!minecraft:player,nbt={ArmorItems:[{}, {tag: {isMagnet:1b}}, {}, {}]}]","color":"yellow","clickEvent":{"action":"copy_to_clipboard","value":"@e[type=!minecraft:player,nbt={ArmorItems:[{}, {tag: {isMagnet:1b}}, {}, {}]}]"},"hoverEvent":{"action":"show_text","contents":"Click to Copy"}}]