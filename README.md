# Magnet
Datapack for Minecraft that adds an item magnet which, when held, attracts items in a small radius.

Obtain a set of chainmail leggings and rename them to `Magnet` in an anvil. Now, holding the Magnet in your offhand, main hand, or even wearing them as leggings will cause items to teleport to you within a small radius. This effect also applies to mobs wearing the magnet as leggings.

## Features
* Brings items to you!
  * Break blocks over a void without fear of dropping items off the edge.
* Item entities play a quiet sound to help you locate nearby them.
* Works for multiple players at once
* Wear a magnet as pants
* Mobs can also use magnets
  * Make a magnet powered mobfarm! Use mobs wearing magnets to gather items to a hopper and save on hoppers.
* Works on Spigot as well

## Further Details
* Regular chainmail leggings are unaffected and can be used normally.
* Teleports items to you in a 5 block radius.
  * Only one item entity at a time is teleported on purpose, so you can't 'carry' multiple stacks of item entities with you as you move like you can with many modded magnets.
* Makes all items in a 10 block radius play a quiet sound (from the "player" sound category) to help you find them.
  * Plays a quieter, pitch shifted version of the Experience Bottle Thrown sound, if you have captions enabled.
  * More item entities causes the sound to stack and get louder.
* Any mob that can wear the chainmail leggings in its legs slot will have the magnet effect applied on equip. Tested with zombies, skeletons, and zombie pigmen, but I don't see why it wouldn't work on villagers given armor as well.
* Runs a minimum of 4 commands every tick. Descriptions of each command:
  1. Applies to players holding magnets in their offhand.
  2. Applies to players wearing the magnet as leggings.
  3. Applies to players holding the magnet in their main hand.
  4. Applies to entities wearing the magnet in their leggings slot.
  * If entities/players are found with a magnet, each entity causes at minimum an addition 1 command to be run, the item teleport command. Furthermore, every item entity within 10 blocks of the entity holding a magnet will run a playsound command.

## Planned features
* Offer a resource pack to clients that retextures the magnet item.
* Custom crafting recipe to obtain the leggings.
  * I wrote one, but something isn't working with it. Not sure what's causing it to not register.
