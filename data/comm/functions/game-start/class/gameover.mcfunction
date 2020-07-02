execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run data remove block ~ 21 ~ Items
tp @a -1.0 39 -816.0
title @a times 0 60 0
title @a title ["",{"text":"GAME OVER!","color":"red"}]
gamemode adventure @a
tellraw @a ["",{"text":"     "},{"text":"[전원 돌아가기]","bold":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/function comm:game-start/class/gameoveract"}}]
kill @e[tag=out-rd1]
kill @e[tag=out-rd2]
kill @e[tag=out-rd3]
kill @e[tag=out-nd1]
kill @e[tag=out-nd2]
kill @e[tag=out-nd3]
tag @a remove rd1
tag @a remove rd2
tag @a remove rd3
tag @a remove nd1
tag @a remove nd2
tag @a remove nd3
xp set @a 0 levels
scoreboard players set time stage 0
scoreboard players set start map_lod 0
function comm:about-play/map-setting/load/clear_stage
execute as @e[type=minecraft:item] if data entity @s Item.tag{ basicitem: 1b } run kill @s
kill @e[type=minecraft:item,tag=!select]
scoreboard players set boss stage 0
scoreboard players set boss map_lod 0
scoreboard players set spawn boss-Jack-O 0
# scoreboard players set boss-type map_lod 0
kill @e[type=minecraft:tnt]
bossbar set minecraft:generic.bossbar visible false