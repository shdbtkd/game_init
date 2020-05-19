execute as @e[type=vex,team=!red] run function comm:game-start/mob/upgrade/vex

execute as @e[team=!] store result score @s hurt run data get entity @s HurtTime
execute anchored eyes as @e[tag=!none-show] at @s if score @s hurt matches 7.. run particle minecraft:block redstone_block ^ ^ ^ 0.1 0 0.1 01 5
execute anchored feet as @e[tag=!none-show] at @s if score @s hurt matches 7.. run particle minecraft:block redstone_block ^ ^ ^ 0.1 0 0.1 01 5

execute as @e[team=red,tag=!A] if entity @s[type=!minecraft:zombie,type=!#minecraft:skeletons,type=!minecraft:drowned,type=!minecraft:zombie_villager,type=!minecraft:zombified_piglin,type=!minecraft:husk,type=!minecraft:phantom] run tag @s add A
execute as @e[team=red,tag=!A] run tag @s[tag=!U] add U

execute as @e[tag=box-random] at @s run function comm:game-start/mob/box/summon
execute as @e[tag=boxhere,tag=locked] at @s run function comm:game-start/mob/box/testlock
execute at @e[tag=boxhere,tag=locked,scores={locked-box=1..}] as @e[type=item,nbt={Item: {id:"minecraft:emerald"}},limit=1,sort=nearest,distance=..1.2] at @s unless entity @e[tag=unlocking-chest] if data block ~ ~-0.1 ~ Lock run function comm:game-start/mob/box/removelock
#execute at @e[tag=unlocking-chest] run function comm:game-start/mob/box/showparticle
execute as @e[tag=boxhere] at @s if block ~ ~-2 ~ minecraft:redstone_lamp[lit=true] run function comm:game-start/mob/box/open

execute as @e[type=minecraft:creeper] at @s if data entity @s {Fuse: 1s} run function comm:game-start/items/tnt/boom/checking

execute if entity @e[team=red] run function comm:game-start/mob/mob
execute as @e[tag=slime-storage] run scoreboard players reset @s slime-exist
execute as @e[tag=slime-storage] at @e[team=red,tag=slime] if score @e[team=red,tag=slime,distance=..0,limit=1,sort=nearest] slime_id-S = @s slime_id-I run scoreboard players add @s slime-exist 1
execute as @e[tag=slime-storage] at @s unless score @s slime-exist matches 1.. run function comm:game-start/mob/upgrade/slime/now-spawn