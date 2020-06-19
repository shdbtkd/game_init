summon area_effect_cloud ~ ~ ~ {Duration:-1,WaitTime:-2147483648,Tags:["cloud-rd3"],Age:-2147483648}
#summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:1b,Tags:["cloud-rd3"]}
execute anchored eyes at @s run tp @e[tag=cloud-rd3] @s
execute anchored eyes at @s run tp @e[tag=cloud-rd3] ^ ^ ^1
#execute anchored eyes at @s run particle minecraft:smoke ^ ^ ^1.5 0 0 0 0.2 50
#execute anchored eyes at @s run particle minecraft:smoke ^ ^ ^1.5 0 0 0 0.1 150
#execute as @e[tag=cloud-rd3] run tp @s ~ ~1 ~
execute store result score @s rd3sneak-motion0 run data get entity @s Pos[0]
#execute store result score @s rd3sneak-motion1 run data get entity @s Pos[1]
execute store result score @s rd3sneak-motion2 run data get entity @s Pos[2]

execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3move
execute as @e[tag=cloud-rd3] at @s run function comm:game-start/skill/sneak/rd3getmotion

scoreboard players operation @s rd3sneak-motion0 -= rd3-moveto0 rd3sneak-motion0
scoreboard players operation @s rd3sneak-motion2 -= rd3-moveto2 rd3sneak-motion2

execute anchored eyes at @s run summon fireball ^ ^ ^1.5 {Motion:[0.0,0.0,0.0],power:[0.0,-0.1,0.0],Tags:["rd3sneak-ammo"],ExplosionPower:2,Invulnerable:1b}
execute anchored eyes at @s run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 2
execute anchored eyes at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0.7

execute as @e[tag=rd3sneak-ammo,limit=1,sort=nearest] store result entity @s Motion[0] double -0.07 run scoreboard players get @a[tag=rd3,limit=1] rd3sneak-motion0
execute as @e[tag=rd3sneak-ammo,limit=1,sort=nearest] run data modify entity @s Motion[1] set value 0.7d
execute as @e[tag=rd3sneak-ammo,limit=1,sort=nearest] store result entity @s Motion[2] double -0.07 run scoreboard players get @a[tag=rd3,limit=1] rd3sneak-motion2

#execute as @e[tag=rd3sneak-ammo] at @s unless block ~ ~-1 ~ air run say 1

#execute as @e[tag=cloud-rd3] run say 1
kill @e[tag=cloud-rd3]

xp add @s -1 levels