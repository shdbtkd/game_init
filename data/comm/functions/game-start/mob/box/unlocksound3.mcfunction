execute at @e[tag=unlocking-chest] run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 1
execute at @e[tag=unlocking-chest] run particle minecraft:item minecraft:emerald ~ ~ ~ 0 0.2 0 0.1 10
schedule function comm:game-start/mob/box/unlocksound4 10t