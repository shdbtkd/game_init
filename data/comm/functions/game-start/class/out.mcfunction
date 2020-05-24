
# scoreboard players set @a[scores={stage=..0}] title 0

# execute as @a[scores={out=..2}] run scoreboard players add @s[scores={title=..60}] title 1

#execute as @a[scores={out=3..}] run effect clear @s minecraft:absorption
execute as @a[scores={out=3..}] run effect clear @s minecraft:regeneration
execute as @a[scores={out=3..}] run scoreboard players set @s undying 0
execute as @a[scores={out=3..}] run title @s times 0 10 0
execute as @a[scores={out=3..},tag=nd2] run scoreboard players add G_tri D_tri 1

execute as @a[scores={out=1}] run title @s times 0 60 0
execute as @a[scores={out=1}] run title @s clear
execute as @a[scores={out=1}] run title @s title ["",{"text":"YOU DIE!","color":"red"}]
execute as @a[scores={out=1}] run scoreboard players set @s skill 0

execute as @a[scores={out=1}] run gamemode spectator @s
execute as @a[scores={out=1}] run xp set @s 0 levels
execute as @a[scores={out=1}] run xp set @s 0 points

# scoreboard players enable @a[scores={out=1..}] s

execute as @a[scores={out=1},gamemode= spectator] at @s run function playerheadtricks:createheadblock
execute as @a[scores={out=1},gamemode= spectator] at @s run function comm:game-start/class/lostitem/base/drop
execute as @a[scores={out=1}] at @s if score @s stage matches 1.. run scoreboard players set @s out 2
execute as @a[scores={out=3..}] at @s if score @s stage matches 1.. run scoreboard players reset @s out

### 살리기 ###

	### rd1 ###
		### 메세지 ###
		execute if score rd1 s matches 1 run tellraw @a ["",{"selector":"@a[tag=rd1]"},{"text":" 부활까지","color":"white"},{"text":" 5초...","bold":true,"color":"gold"}]
		execute if score rd1 s matches 1 run scoreboard players add rd1 s 1
		execute if score rd1 s matches 20 run tellraw @a ["",{"selector":"@a[tag=rd1]"},{"text":" 부활까지","color":"white"},{"text":" 4초...","bold":true,"color":"gold"}]
		execute if score rd1 s matches 20 run scoreboard players add rd1 s 1
		execute if score rd1 s matches 40 run tellraw @a ["",{"selector":"@a[tag=rd1]"},{"text":" 부활까지","color":"white"},{"text":" 3초...","bold":true,"color":"gold"}]
		execute if score rd1 s matches 40 run scoreboard players add rd1 s 1
		execute if score rd1 s matches 60 run tellraw @a ["",{"selector":"@a[tag=rd1]"},{"text":" 부활까지","color":"white"},{"text":" 2초...","bold":true,"color":"gold"}]
		execute if score rd1 s matches 60 run scoreboard players add rd1 s 1
		execute if score rd1 s matches 80 run tellraw @a ["",{"selector":"@a[tag=rd1]"},{"text":" 부활까지","color":"white"},{"text":" 1초...","bold":true,"color":"gold"}]
		execute if score rd1 s matches 80 run scoreboard players add rd1 s 1
		execute if score rd1 s matches 100.. run tellraw @a ["",{"selector":"@a[tag=rd1]"},{"text":" 부활!","bold":true,"color":"gold"}]
		### 메세지 끝 ###
		### 부활 ###
		execute if score rd1 s matches 100.. run gamemode adventure @a[tag=rd1]
		execute if score rd1 s matches 100.. at @e[tag=out-rd1] as @a[tag=rd1] run tp @s ~ ~ ~
		### 부활 끝 ###
		### 체력 조정 ###
		execute if score rd1 s matches 100.. as @a[tag=rd1] run effect give @s minecraft:instant_damage 1 100
		execute if score rd1 s matches 100.. as @a[tag=rd1] run replaceitem entity @s weapon.mainhand minecraft:totem_of_undying
		### 제력조정 끝 ###
		### 스코어 out=3 으로 ###
		execute if score rd1 s matches 100.. run scoreboard players set @a[tag=rd1] out 3
		### 스코어 끝 ###
		### 머리 없에기 ###
		execute if score rd1 s matches 100.. as @e[tag=out-rd1] at @s if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ air
		execute if score rd1 s matches 100.. as @e[tag=out-rd1] at @s if block ~ ~-1 ~ minecraft:player_head run setblock ~ ~-1 ~ air
		execute if score rd1 s matches 100.. as @e[tag=out-rd1] at @s if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ air

		execute if score rd1 s matches 100.. run kill @e[tag=out-rd1]

		execute if score rd1 s matches 100.. run scoreboard players set rd1 s 0
	###########

	### rd2 ###
		execute if score rd2 s matches 1 run tellraw @a ["",{"selector":"@a[tag=rd2]"},{"text":" 부활까지","color":"white"},{"text":" 5초...","bold":true,"color":"gold"}]
		execute if score rd2 s matches 1 run scoreboard players add rd2 s 1
		execute if score rd2 s matches 20 run tellraw @a ["",{"selector":"@a[tag=rd2]"},{"text":" 부활까지","color":"white"},{"text":" 4초...","bold":true,"color":"gold"}]
		execute if score rd2 s matches 20 run scoreboard players add rd2 s 1
		execute if score rd2 s matches 40 run tellraw @a ["",{"selector":"@a[tag=rd2]"},{"text":" 부활까지","color":"white"},{"text":" 3초...","bold":true,"color":"gold"}]
		execute if score rd2 s matches 40 run scoreboard players add rd2 s 1
		execute if score rd2 s matches 60 run tellraw @a ["",{"selector":"@a[tag=rd2]"},{"text":" 부활까지","color":"white"},{"text":" 2초...","bold":true,"color":"gold"}]
		execute if score rd2 s matches 60 run scoreboard players add rd2 s 1
		execute if score rd2 s matches 80 run tellraw @a ["",{"selector":"@a[tag=rd2]"},{"text":" 부활까지","color":"white"},{"text":" 1초...","bold":true,"color":"gold"}]
		execute if score rd2 s matches 80 run scoreboard players add rd2 s 1
		execute if score rd2 s matches 100.. run tellraw @a ["",{"selector":"@a[tag=rd2]"},{"text":" 부활!","bold":true,"color":"gold"}]

		execute if score rd2 s matches 100.. run gamemode adventure @a[tag=rd2]
		execute if score rd2 s matches 100.. at @e[tag=out-rd2] as @a[tag=rd2] run tp @s ~ ~ ~

		execute if score rd2 s matches 100.. as @a[tag=rd2] run effect give @s minecraft:instant_damage 1 100
		execute if score rd2 s matches 100.. as @a[tag=rd2] run replaceitem entity @s weapon.mainhand minecraft:totem_of_undying

		execute if score rd2 s matches 100.. run scoreboard players set @a[tag=rd2] out 3

		execute if score rd2 s matches 100.. as @e[tag=out-rd2] at @s if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ air
		execute if score rd2 s matches 100.. as @e[tag=out-rd2] at @s if block ~ ~-1 ~ minecraft:player_head run setblock ~ ~-1 ~ air
		execute if score rd2 s matches 100.. as @e[tag=out-rd2] at @s if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ air

		execute if score rd2 s matches 100.. run kill @e[tag=out-rd2]

		execute if score rd2 s matches 100.. run scoreboard players set rd2 s 0
	###########

	### rd3 ###
		execute if score rd3 s matches 1 run tellraw @a ["",{"selector":"@a[tag=rd3]"},{"text":" 부활까지","color":"white"},{"text":" 5초...","bold":true,"color":"gold"}]
		execute if score rd3 s matches 1 run scoreboard players add rd3 s 1
		execute if score rd3 s matches 20 run tellraw @a ["",{"selector":"@a[tag=rd3]"},{"text":" 부활까지","color":"white"},{"text":" 4초...","bold":true,"color":"gold"}]
		execute if score rd3 s matches 20 run scoreboard players add rd3 s 1
		execute if score rd3 s matches 40 run tellraw @a ["",{"selector":"@a[tag=rd3]"},{"text":" 부활까지","color":"white"},{"text":" 3초...","bold":true,"color":"gold"}]
		execute if score rd3 s matches 40 run scoreboard players add rd3 s 1
		execute if score rd3 s matches 60 run tellraw @a ["",{"selector":"@a[tag=rd3]"},{"text":" 부활까지","color":"white"},{"text":" 2초...","bold":true,"color":"gold"}]
		execute if score rd3 s matches 60 run scoreboard players add rd3 s 1
		execute if score rd3 s matches 80 run tellraw @a ["",{"selector":"@a[tag=rd3]"},{"text":" 부활까지","color":"white"},{"text":" 1초...","bold":true,"color":"gold"}]
		execute if score rd3 s matches 80 run scoreboard players add rd3 s 1
		execute if score rd3 s matches 100.. run tellraw @a ["",{"selector":"@a[tag=rd3]"},{"text":" 부활!","bold":true,"color":"gold"}]

		execute if score rd3 s matches 100.. run gamemode adventure @a[tag=rd3]
		execute if score rd3 s matches 100.. at @e[tag=out-rd3] as @a[tag=rd3] run tp @s ~ ~ ~

		execute if score rd3 s matches 100.. as @a[tag=rd3] run replaceitem entity @s armor.head air
		execute if score rd3 s matches 100.. as @a[tag=rd3] run effect give @s minecraft:instant_damage 1 100
		execute if score rd3 s matches 100.. as @a[tag=rd3] run replaceitem entity @s weapon.mainhand minecraft:totem_of_undying

		execute if score rd3 s matches 100.. run scoreboard players set @a[tag=rd3] out 3

		execute if score rd3 s matches 100.. as @e[tag=out-rd3] at @s if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ air
		execute if score rd3 s matches 100.. as @e[tag=out-rd3] at @s if block ~ ~-1 ~ minecraft:player_head run setblock ~ ~-1 ~ air
		execute if score rd3 s matches 100.. as @e[tag=out-rd3] at @s if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ air

		execute if score rd3 s matches 100.. run kill @e[tag=out-rd3]

		execute if score rd3 s matches 100.. run scoreboard players set rd3 s 0
	###########




	### nd1 ###
		execute if score nd1 s matches 1 run tellraw @a ["",{"selector":"@a[tag=nd1]"},{"text":" 부활까지","color":"white"},{"text":" 5초...","bold":true,"color":"gold"}]
		execute if score nd1 s matches 1 run scoreboard players add nd1 s 1
		execute if score nd1 s matches 20 run tellraw @a ["",{"selector":"@a[tag=nd1]"},{"text":" 부활까지","color":"white"},{"text":" 4초...","bold":true,"color":"gold"}]
		execute if score nd1 s matches 20 run scoreboard players add nd1 s 1
		execute if score nd1 s matches 40 run tellraw @a ["",{"selector":"@a[tag=nd1]"},{"text":" 부활까지","color":"white"},{"text":" 3초...","bold":true,"color":"gold"}]
		execute if score nd1 s matches 40 run scoreboard players add nd1 s 1
		execute if score nd1 s matches 60 run tellraw @a ["",{"selector":"@a[tag=nd1]"},{"text":" 부활까지","color":"white"},{"text":" 2초...","bold":true,"color":"gold"}]
		execute if score nd1 s matches 60 run scoreboard players add nd1 s 1
		execute if score nd1 s matches 80 run tellraw @a ["",{"selector":"@a[tag=nd1]"},{"text":" 부활까지","color":"white"},{"text":" 1초...","bold":true,"color":"gold"}]
		execute if score nd1 s matches 80 run scoreboard players add nd1 s 1
		execute if score nd1 s matches 100.. run tellraw @a ["",{"selector":"@a[tag=nd1]"},{"text":" 부활!","bold":true,"color":"gold"}]

		execute if score nd1 s matches 100.. run gamemode adventure @a[tag=nd1]
		execute if score nd1 s matches 100.. at @e[tag=out-nd1] as @a[tag=nd1] run tp @s ~ ~ ~

		execute if score nd1 s matches 100.. as @a[tag=nd1] run effect give @s minecraft:instant_damage 1 100
		execute if score nd1 s matches 100.. as @a[tag=nd1] run replaceitem entity @s weapon.mainhand minecraft:totem_of_undying

		execute if score nd1 s matches 100.. run scoreboard players set @a[tag=nd1] out 3

		execute if score nd1 s matches 100.. as @e[tag=out-nd1] at @s if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ air
		execute if score nd1 s matches 100.. as @e[tag=out-nd1] at @s if block ~ ~-1 ~ minecraft:player_head run setblock ~ ~-1 ~ air
		execute if score nd1 s matches 100.. as @e[tag=out-nd1] at @s if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ air

		execute if score nd1 s matches 100.. run kill @e[tag=out-nd1]

		execute if score nd1 s matches 100.. run scoreboard players set nd1 s 0
	###########

	### nd2 ###
		execute if score nd2 s matches 1 run tellraw @a ["",{"selector":"@a[tag=nd2]"},{"text":" 부활까지","color":"white"},{"text":" 5초...","bold":true,"color":"gold"}]
		execute if score nd2 s matches 1 run scoreboard players add nd2 s 1
		execute if score nd2 s matches 20 run tellraw @a ["",{"selector":"@a[tag=nd2]"},{"text":" 부활까지","color":"white"},{"text":" 4초...","bold":true,"color":"gold"}]
		execute if score nd2 s matches 20 run scoreboard players add nd2 s 1
		execute if score nd2 s matches 40 run tellraw @a ["",{"selector":"@a[tag=nd2]"},{"text":" 부활까지","color":"white"},{"text":" 3초...","bold":true,"color":"gold"}]
		execute if score nd2 s matches 40 run scoreboard players add nd2 s 1
		execute if score nd2 s matches 60 run tellraw @a ["",{"selector":"@a[tag=nd2]"},{"text":" 부활까지","color":"white"},{"text":" 2초...","bold":true,"color":"gold"}]
		execute if score nd2 s matches 60 run scoreboard players add nd2 s 1
		execute if score nd2 s matches 80 run tellraw @a ["",{"selector":"@a[tag=nd2]"},{"text":" 부활까지","color":"white"},{"text":" 1초...","bold":true,"color":"gold"}]
		execute if score nd2 s matches 80 run scoreboard players add nd2 s 1
		execute if score nd2 s matches 100.. run tellraw @a ["",{"selector":"@a[tag=nd2]"},{"text":" 부활!","bold":true,"color":"gold"}]

		execute if score nd2 s matches 100.. run gamemode adventure @a[tag=nd2]
		execute if score nd2 s matches 100.. at @e[tag=out-nd2] as @a[tag=nd2] run tp @s ~ ~ ~

		execute if score nd2 s matches 100.. as @a[tag=nd2] run effect give @s minecraft:instant_damage 1 100
		execute if score nd2 s matches 100.. as @a[tag=nd2] run replaceitem entity @s weapon.mainhand minecraft:totem_of_undying

		execute if score nd2 s matches 100.. run scoreboard players set @a[tag=nd2] out 3

		execute if score nd2 s matches 100.. as @e[tag=out-nd2] at @s if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ air
		execute if score nd2 s matches 100.. as @e[tag=out-nd2] at @s if block ~ ~-1 ~ minecraft:player_head run setblock ~ ~-1 ~ air
		execute if score nd2 s matches 100.. as @e[tag=out-nd2] at @s if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ air

		execute if score nd2 s matches 100.. run kill @e[tag=out-nd2]

		execute if score nd2 s matches 100.. run scoreboard players set nd2 s 0
	###########

	### nd3 ###
		execute if score nd3 s matches 1 run tellraw @a ["",{"selector":"@a[tag=nd3]"},{"text":" 부활까지","color":"white"},{"text":" 5초...","bold":true,"color":"gold"}]
		execute if score nd3 s matches 1 run scoreboard players add nd3 s 1
		execute if score nd3 s matches 20 run tellraw @a ["",{"selector":"@a[tag=nd3]"},{"text":" 부활까지","color":"white"},{"text":" 4초...","bold":true,"color":"gold"}]
		execute if score nd3 s matches 20 run scoreboard players add nd3 s 1
		execute if score nd3 s matches 40 run tellraw @a ["",{"selector":"@a[tag=nd3]"},{"text":" 부활까지","color":"white"},{"text":" 3초...","bold":true,"color":"gold"}]
		execute if score nd3 s matches 40 run scoreboard players add nd3 s 1
		execute if score nd3 s matches 60 run tellraw @a ["",{"selector":"@a[tag=nd3]"},{"text":" 부활까지","color":"white"},{"text":" 2초...","bold":true,"color":"gold"}]
		execute if score nd3 s matches 60 run scoreboard players add nd3 s 1
		execute if score nd3 s matches 80 run tellraw @a ["",{"selector":"@a[tag=nd3]"},{"text":" 부활까지","color":"white"},{"text":" 1초...","bold":true,"color":"gold"}]
		execute if score nd3 s matches 80 run scoreboard players add nd3 s 1
		execute if score nd3 s matches 100.. run tellraw @a ["",{"selector":"@a[tag=nd3]"},{"text":" 부활!","bold":true,"color":"gold"}]

		execute if score nd3 s matches 100.. run gamemode adventure @a[tag=nd3]
		execute if score nd3 s matches 100.. at @e[tag=out-nd3] as @a[tag=nd3] run tp @s ~ ~ ~

		execute if score nd3 s matches 100.. as @a[tag=nd3] run effect give @s minecraft:instant_damage 1 100
		execute if score nd3 s matches 100.. as @a[tag=nd3] run replaceitem entity @s weapon.mainhand minecraft:totem_of_undying

		execute if score nd3 s matches 100.. run scoreboard players set @a[tag=nd3] out 3

		execute if score nd3 s matches 100.. as @e[tag=out-nd3] at @s if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ air
		execute if score nd3 s matches 100.. as @e[tag=out-nd3] at @s if block ~ ~-1 ~ minecraft:player_head run setblock ~ ~-1 ~ air
		execute if score nd3 s matches 100.. as @e[tag=out-nd3] at @s if block ~ ~1 ~ minecraft:player_head run setblock ~ ~1 ~ air

		execute if score nd3 s matches 100.. run kill @e[tag=out-nd3]

		execute if score nd3 s matches 100.. run scoreboard players set nd3 s 0
	###########
############

execute if score start map_lod matches 1.. if score player-all stage matches 1.. if score player stage matches ..0 if score time map_lod matches ..60 run scoreboard players add time map_lod 1
execute if score start map_lod matches 1.. if score player-all stage matches 1.. if score player stage matches ..0 if score time map_lod matches 60.. if score start map_lod matches ..20 run scoreboard players set start map_lod 20
