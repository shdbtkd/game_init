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

execute as @e[type=#minecraft:arrow_owners,team=red] unless score @s player-UUID_0 matches 0.. unless score @s player-UUID_0 matches ..0 run function comm:game-start/skill/variable/uuid-getter
execute as @e[type=minecraft:arrow,tag=!end-red_arrow] at @e[type=#minecraft:arrow_owners,team=red] if score @s owner-UUID_0 = @e[ type= #minecraft:arrow_owners, limit= 1, sort= nearest, distance= ..0 ] player-UUID_0 if score @s owner-UUID_1 = @e[ type= #minecraft:arrow_owners, limit= 1, sort= nearest, distance= ..0 ] player-UUID_1 if score @s owner-UUID_2 = @e[ type= #minecraft:arrow_owners, limit= 1, sort= nearest, distance= ..0 ] player-UUID_2 if score @s owner-UUID_3 = @e[ type= #minecraft:arrow_owners, limit= 1, sort= nearest, distance= ..0 ] player-UUID_3 run function comm:game-start/mob/arrow_set/main

# execute as @e[type=minecraft:arrow] at @e[type=#minecraft:arrow_owners,team=red] if score @s owner-UUID_0 = @e[ type= minecraft:skeleton, limit= 1, sort= nearest, distance= ..0 ] player-UUID_0 if score @s owner-UUID_1 = @e[ type= minecraft:skeleton, limit= 1, sort= nearest, distance= ..0 ] player-UUID_1 if score @s owner-UUID_2 = @e[ type= minecraft:skeleton, limit= 1, sort= nearest, distance= ..0 ] player-UUID_2 if score @s owner-UUID_3 = @e[ type= minecraft:skeleton, limit= 1, sort= nearest, distance= ..0 ] player-UUID_3 run kill @s
# execute as @e[type=minecraft:arrow,tag=] run function comm:game-start/mob/arrow_set/main