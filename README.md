# Magnet
Datapack for Minecraft that adds an item magnet which teleports items to you in a small radius.

Obtain a set of chainmail leggings and rename them to `Magnet` in an anvil. Now, holding the Magnet in your offhand, main hand, or wearing them as leggings will cause items to teleport to you within a small radius. This effect also applies to mobs wearing the magnet as leggings.

## Features
* Teleports items to you!
  * Break items over a void without fear of dropping them off the edge.
* Plays a quiet sound to help you locate nearby items.
* Works for multiple players at once
* Wear a magnet as pants
* Mobs can also use magnets
  * Make a magnet powered mobfarm! Use mobs wearing magnets to gather items to a hopper.
* Works on Spigot as well

## Further Details
* Regular chainmail leggings are unaffected and can be used normally.
* Teleports items to you in a 5 block radius.
  * Only one item entity at a time is teleported on purpose, so you can't trail stacks of items behind you as you move like you can with most modded magnets.
* Makes all items in a 10 block radius play a quiet sound (from the "player" sound category) to help you find them.
  * Plays a quieter, pitch shifted version of the Experience Bottle Thrown sound, if you have captions enabled.
  * More item entities causes the sound to stack and get louder.
* Any mob that can wear the chainmail leggings in its legs slot will have the magnet effect applied on equip.
* Runs 12 commands every tick. If this starts causing problems, consider deleting the commands that run to detect having the magnet in your main hand, since that's 9 of those commands. 

## Planned features
* Offer a resource pack to clients that retextures the magnet item.
* Custom crafting recipe to obtain the leggings.
  * I wrote one, but something isn't working with it. Not sure what's causing it to not register.
