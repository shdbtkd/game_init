scoreboard players set @s spawner-hurt 0
execute store result score @s spawner-motion0 run data get entity @s Pos[0] 10
execute store result score @s spawner-motion1 run data get entity @s Pos[1] 10
execute store result score @s spawner-motion2 run data get entity @s Pos[2] 10
execute facing entity @p eyes run summon area_effect_cloud ^ ^1 ^0.5 {Duration:-1,WaitTime:-2147483648,Tags:["cloud-spawner"],Age:-2147483648}
execute as @e[tag=cloud-spawner,limit=1,sort=nearest] run function comm:game-start/mob/upgrade/spawner/spawner-motion
scoreboard players operation @s spawner-motion0 -= @e[tag=cloud-spawner,limit=1,sort=nearest] spawner-motion0
scoreboard players operation @s spawner-motion1 -= @e[tag=cloud-spawner,limit=1,sort=nearest] spawner-motion1
scoreboard players operation @s spawner-motion2 -= @e[tag=cloud-spawner,limit=1,sort=nearest] spawner-motion2

tag @s remove spawner
data modify entity @s ArmorItems[3].tag.storage set from entity @s
data remove entity @s ArmorItems[3].tag.storage.Attributes[5]
data remove entity @s ArmorItems[3].tag.storage.ArmorItems[3]
data remove entity @s ArmorItems[3].tag.storage.UUIDLeast
data remove entity @s ArmorItems[3].tag.storage.UUIDMost
data remove entity @s ArmorItems[3].tag.storage.Pos
data remove entity @s ArmorItems[3].tag.storage.Motion
tag @s add spawner

execute if entity @s[type=skeleton] run summon minecraft:skeleton ~ ~ ~ {Team:"red",Tags:["spawner-target"]}
execute if entity @s[type=husk] run summon minecraft:husk ~ ~ ~ {Team:"red",Tags:["spawner-target"]}
execute if entity @s[type=zombie] run summon zombie ~ ~ ~ {Team:"red",Tags:["spawner-target"]}
execute as @e[tag=spawner-target,limit=1,sort=nearest] run function comm:game-start/mob/upgrade/spawner/get-motion
data modify entity @e[tag=spawner-target,limit=1,sort=nearest] {} merge from entity @s ArmorItems[3].tag.storage
execute as @e[tag=cloud-spawner,limit=1,sort=nearest] run kill @s

particle minecraft:flame ~ ~1.5 ~ 0.6 0.5 0.6 0 50
particle minecraft:cloud ~ ~1.5 ~ 0.1 0.1 0.1 0.15 20
playsound minecraft:item.trident.riptide_2 master @a ~ ~ ~ 2 0 0
