# Magnet
Survival-friendly datapack for Minecraft that adds an item magnet which attracts items to the wielder in a small radius.

## Download [here](https://github.com/budak7273/magnet/releases), put zip in your save's datapacks folder, then run `/reload` to install.

![Magnet item tooltip](https://i.imgur.com/84YWGfQ.png)

Craft chainmail leggings using a custom recipe to obtain a magnet.

![Magnet crafting recipe](https://i.imgur.com/Rf1a2TE.png)

## Features
* Lag friendly!
* Configurable!
  * Run `/function magnet:toggle_options_pane` to see options.
* Brings items to you!
  * Break blocks over a void without fear of dropping items off the edge.
* Survival friendly
  * Custom crafting recipe provides a method of obtaining magnets in a survival playthrough
* Nearby item entities play a quiet sound to help you locate them (configurable)
* Works for multiple players at once
* Wear a magnet as pants!
  * Both functional _and_ stylish.
* Mobs can also use magnets (configurable)
  * Make a magnet powered mobfarm! Use mobs (or armor stands) wearing magnets to gather items to a hopper and save on hoppers
  * Mobs with magnets can attract and equip your gear if you die. (disabled by default) Don't die near a mob with a magnet.
* Particles are displayed when an item is brought to a magnet user (configurable)
* Works on Spigot/Paper/Etc.

## Commands
* `/function magnet:toggle_options_pane`
  * Toggles the options pane to show/hide the current config settings.
* `/function magnet:give_magnet`
  * Gives yourself a magnet if you don't want to craft one.
* `/function magnet:magnetize_item`
  * Manually teleport an item entity within range to you as if you were holding a magnet.
* `/function magnet:default_configs`
  * Reset back to the default config options (see below)
* `/function magnet:reinstall`
  * Reinstall the pack from scratch and reload, also resetting all of your configs to the default.
* `/function magnet:uninstall`
  * Run before uninstalling - cleans up all scoreboard values and such. Does not delete existing magnet items.
* `/function magnet:debug_list_holders`
  * Debug command to mark and list all loaded entities that are holding magnets. Helpful for tracking down rogue magnets.

## Config Options
* `m_mob_interval` (Default 20) - The number of ticks between magnets working for mobs. 20 ticks in one second.
* `m_player_interval` (Default 5) - The number of ticks between magnets working for players. 20 ticks in one second.
* `armorStand` (Default 1) - If magnets work when equipped on armor stands.
* `playerHands` (Default 1) - If magnets work when in the player's main or offhand
* `playerEquip` (Default 1) - If magnets work when in the player's legs slot.
* `particlesOnHolder` (Default 1) - If particles should be spawned on the magnet user when an item is attracted.
* `particlesOnItem` (Default 1) - If particles should be spawned at the old location of the item when an item is attracted.
* `playItemSound` (Default 1) - If items should play a sound when within 10 blocks of a magnet user.
* `enabledActionbarText` (Default 1) - If having a magnet equipped should display text in your action bar.
* `allMobs_Laggy` (Default 0) - If magnets work for every mob than can equip armor. This can be quite laggy to enable.

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

## Known Bugs
* Because Minecraft advancements are buggy, trading with a villager for Chainmail Leggings counts as crafting them using the custom recipe.
	* If you need regular chainmail leggings, either drop them out of the villager window, or craft 2 magnets together and directly drop the product out of the crafting window, then wait for 5 seconds (you should see a message in chat when it's safe to pick them up)

## Planned features (Eventually™)
* Offer a resource pack to clients that retextures the magnet item.
