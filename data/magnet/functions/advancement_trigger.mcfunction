# Display a message to players that just gained the magnet recipe that explains what it is

tellraw @s ["",{"text":"\u2714","color":"dark_green"},{"text":" You just unlocked the crafting recipe for a ","color":"gray"},{"text":"Magnet","color":"yellow"},{"text":".\nThe recipe appears in your ","color":"gray"},{"text":"Recipe Book"},{"text":" as ","color":"gray"},{"text":"Chainmail Leggings"},{"text":".\n\nRead more ","color":"gray"},{"text":"here","underlined":true,"color":"gray","clickEvent":{"action":"open_url","value":"http://bit.ly/MagnetDatapack"}},{"text":".","color":"gray"}]

# TODO: hover item is hard. try to get a hover item on Magnet that shows a magnet. https://gaming.stackexchange.com/questions/314962/tellraw-how-do-you-make-a-hover-event-show-an-item

