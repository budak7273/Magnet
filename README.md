# Magnet
Survival-friendly datapack for Minecraft that adds an item magnet which attracts items to the wielder in a small radius.

## Download [here](https://github.com/budak7273/magnet/releases), put zip in your save's datapacks folder, then run `/reload` to install.

![Magnet item tooltip](https://i.imgur.com/84YWGfQ.png)

Craft chainmail leggings using a custom recipe to obtain a magnet.

![Magnet crafting recipe](https://i.imgur.com/Rf1a2TE.png)

## Features
* Brings items to you!
  * Break blocks over a void without fear of dropping items off the edge.
* Survival friendly
  * Custom crafting recipe provides a method of obtaining magnets in a survival playthrough
* Item entities play a quiet sound to help you locate nearby them.
* Works for multiple players at once
* Wear a magnet as pants
* Mobs can also use magnets
  * Make a magnet powered mobfarm! Use mobs wearing magnets to gather items to a hopper and save on hoppers
  * Mobs with magnets can attract and equip your gear if you die. Don't die near a mob with a magnet.
* Particles are displayed when an item is brought to a magnet user
* Works on Spigot

## Further Details
* I tried to document exactly how everything works via comments in the function files. Feel free to contact me with any questions.
* Regular chainmail leggings are unaffected and can be used normally.
  * Avoid crafting a magnet while you have chainmail leggings in your inventory. A shortcoming of my method of detecting the crafting means that they will lose their data.
* Teleports items to you in a 5 block radius.
  * Only one item entity at a time is teleported on purpose, so you can't 'carry' multiple stacks of item entities with you as you move like you can with many modded magnets.
* Makes all items in a 10 block radius play a quiet sound (from the "player" sound category) to help you find them.
  * Plays a quieter, pitch shifted version of the Experience Bottle Thrown sound, if you have captions enabled.
  * More item entities causes the sounds to stack and get louder.
* Any mob that can wear a magnet in its legs slot will have the magnet effect applied on equip. Tested with zombies, skeletons, zombie pigmen, and villagers. Would probably work for foxes as well.

## Credit
* I based my crafting system off of the one that SethBling uses in his [Water Mill datapack](https://www.youtube.com/watch?v=hG-KOFf5GbM).
  * If you are looking to create a custom crafting recipe that produces an item with NBT data, I strongly suggest that you look at the comments I wrote in my functions. SethBling didn't leave any explanatory comments in his function files, and his process was difficult to follow at first.
* I used an [online generator](https://advancements.thedestruc7i0n.ca/) to produce the advancement used to grant the recipes.
* I used an [online tellraw generator](https://minecraft.tools/en/tellraw.php) to produce tellraw commands - those are a pain.
* Multiple stackoverflow, reddit, and minecraft forums posts explaining command behavior and nitpicky syntax were read in the process of squashing bugs.

## Planned features
* Offer a resource pack to clients that retextures the magnet item.
