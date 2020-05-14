scoreboard players add @e[tag=summon-tnt] fuse 1
data merge entity @s {PickupDelay:-1,Age:-32768}
execute as @e[tag=boom] at @s run function comm:game-start/items/tnt/boom/fuse
