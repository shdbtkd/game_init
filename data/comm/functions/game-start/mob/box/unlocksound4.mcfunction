
execute at @e[tag=unlocking-chest] run playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 2
execute as @e[tag=unlocking-chest] at @s run scoreboard players operation @e[tag=boxhere,tag=locked,limit=1,sort=nearest] locked-box -= @s locked-box
execute as @e[tag=unlocking-chest] at @s if score @e[tag=boxhere,tag=locked,limit=1,sort=nearest] locked-box matches ..0 run playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 0
execute as @e[tag=unlocking-chest] at @s if score @e[tag=boxhere,tag=locked,limit=1,sort=nearest] locked-box matches ..0 at @e[tag=boxhere,tag=locked,limit=1,sort=nearest] run data remove block ~ ~ ~ Lock
execute as @e[tag=unlocking-chest] at @s if score @e[tag=boxhere,tag=locked,limit=1,sort=nearest] locked-box matches 0.. run kill @s
execute as @e[tag=unlocking-chest] at @s unless score @e[tag=boxhere,tag=locked,limit=1,sort=nearest] locked-box matches 0.. store result entity @s Item.Count byte -1 run scoreboard players get @e[tag=boxhere,tag=locked,limit=1,sort=nearest] locked-box
execute as @e[tag=unlocking-chest] at @s unless score @e[tag=boxhere,tag=locked,limit=1,sort=nearest] locked-box matches 0.. run data merge entity @s {PickupDelay:30,Age:-32768}