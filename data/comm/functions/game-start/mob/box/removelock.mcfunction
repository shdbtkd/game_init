execute store result score @s locked-box run data get entity @s Item.Count
data merge entity @s {PickupDelay:-1,Age:-32768}
tag @s add unlocking-chest
function comm:game-start/mob/box/unlocksound1
schedule function comm:game-start/mob/box/unlocksound1 4t
schedule function comm:game-start/mob/box/unlocksound2 8t
schedule function comm:game-start/mob/box/unlocksound3 14t