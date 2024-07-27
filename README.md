# Magnet

Survival-friendly datapack for Minecraft that adds an item magnet which attracts items to the wielder in a small radius.

## Download [here](https://github.com/budak7273/magnet/releases), put zip in your save's datapacks folder, then run `/reload` to install

Players will receive a message in the chat upon unlocking the recipe
(obtaining an iron ingot) informing them of its existence.

Craft a magnet (enhanced Chainmail Leggings) in your local Crafting Table or Crafter.

![Magnet crafting recipe](https://i.imgur.com/dc2A8DY.png)

## Features

* Brings items to you!
  * Break blocks over a void without fear of dropping items off the edge.
* Configurable!
  * Run `/function magnet:toggle_options_pane` to see options. Read the section below for more details.
* Lag friendly!
* Survival friendly
  * Custom crafting recipe provides a method of obtaining magnets in a survival playthrough
* Nearby item entities play a quiet sound to help you locate them (configurable)
* Multiplayer compatible
* Wear a magnet as pants!
  * Both functional _and_ stylish.
* Armor stands can use magnets (configurable, on by default)
  * Make a magnet powered mobfarm! Use armor stands wearing magnets to gather items to a central hopper.
* Mobs can also use magnets (configurable, off by default)
  * Mobs with magnets can attract and possibly equip dropped gear. Don't die near a mob with a magnet.
* Particles are displayed when an item is brought to a magnet user (configurable)
* Works on Fabric/Paper/etc. servers

## Commands

* `/function magnet:toggle_options_pane`
  * Toggles the options pane to show/hide the current config settings.
* `/function magnet:give_magnet`
  * Gives you a magnet's crafting ingredients for testing.
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
* `/scoreboard objectives setdisplay sidebar m_total_crafted_magnets`
  * Display the total crafted magnets stats scoreboard in the sidebar

## Config Options

Use `/scoreboard players set optionNameHere m_options valueHere` to set values

* `m_mob_interval` (Default 20) - The number of ticks between magnets working for mobs. 20 ticks in one second.
* `m_player_interval` (Default 5) - The number of ticks between magnets working for players. 20 ticks in one second.
* `armorStand` (Default 1) - If magnets work when equipped on armor stands (leggings slot).
* `playerHands` (Default 1) - If magnets work when in the player's main or offhand
* `playerEquip` (Default 1) - If magnets work when in the player's legs slot.
* `particlesOnHolder` (Default 1) - If particles should be spawned on the magnet user when an item is attracted.
* `particlesOnItem` (Default 1) - If particles should be spawned at the old location of the item when an item is attracted.
* `playItemSound` (Default 1) - If items should play a sound when within 10 blocks of a magnet user.
* `enabledActionbarText` (Default 1) - If having a magnet equipped should display text in your action bar.
* `allMobs_Laggy` (Default 0) - If magnets work for every mob than can equip armor. It will function when the item is in the leggings slot (ex. Zombies) or primary hand slot (ex. Fox) This can be quite laggy to enable.

## Further Details

* I tried to document exactly how everything works via comments in the function files. Feel free to contact me with any questions.
* Regular chainmail leggings are unaffected and can be used normally.
* Teleports items to you in a 5 block radius.
  * Only one item entity at a time is teleported on purpose, so you can't 'carry' multiple stacks of item entities with you as you move like you can with many modded magnets.
* Makes all items in a 10 block radius play a quiet sound (in the "player" sound category) to help you find them.
  * Plays a quieter, pitch shifted version of the Experience Bottle Thrown sound, if you have captions enabled.
  * More item entities causes the sounds to stack and get louder.
* When `allMobs_Laggy` is enabled, any mob wearing a magnet in its legs slot or primary hand slot will have the magnet effect applied. Tested with zombies, skeletons, zombie pigmen, foxes, and villagers.

## Credit

* I used an [online tellraw generator](https://minecraft.tools/en/tellraw.php) to produce tellraw commands - those are a pain.
* Multiple stackoverflow, reddit, and minecraft forums posts explaining command behavior and nitpicky syntax were read in the process of squashing bugs.

## Planned features (Eventually™)

* Offer a resource pack to clients that retextures the magnet item.
