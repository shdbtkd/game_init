execute as @e[type=vex,team=!red] run function comm:game-start/mob/upgrade/vex
execute as @e[tag=health_undefined] run function comm:game-start/mob/health_setter

execute as @e[tag=barrelhere,scores={barrel_break=0..}] run function comm:game-start/mob/barrel/break_operator

execute as @e[team=!] store result score @s hurt run data get entity @s HurtTime
execute anchored eyes as @e[tag=!none-show] at @s if score @s hurt matches 7.. run particle minecraft:block redstone_block ^ ^ ^ 0.1 0 0.1 01 5
execute anchored feet as @e[tag=!none-show] at @s if score @s hurt matches 7.. run particle minecraft:block redstone_block ^ ^ ^ 0.1 0 0.1 01 5

execute as @e[tag=boxhere] at @s if block ~ ~-2 ~ minecraft:redstone_lamp[lit=true] run function comm:game-start/mob/box/open

#execute as @e[type=minecraft:creeper] at @s if data entity @s {Fuse: 1s} run function comm:game-start/items/tnt/boom/checking

execute if entity @e[team=red] run function comm:game-start/mob/mob
execute as @e[tag=slime-storage] run scoreboard players reset @s slime-exist
execute as @e[tag=slime-storage] at @e[team=red,tag=slime] if score @e[team=red,tag=slime,distance=..0,limit=1,sort=nearest] slime_id-S = @s slime_id-I run scoreboard players add @s slime-exist 1
execute as @e[tag=slime-storage] at @s unless score @s slime-exist matches 1.. run function comm:game-start/mob/upgrade/slime/now-spawn

execute as @a[scores={kill=1..}] at @s run function comm:game-start/mob/loot/generic