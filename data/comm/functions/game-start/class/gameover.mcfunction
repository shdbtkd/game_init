tp @a 0.0 53 -1000.0
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
xp set @a 0 levels
scoreboard players set time stage 0
scoreboard players set start map_lod 0
function comm:about-play/map-setting/load/clear_stage
execute as @e[type=minecraft:item] if data entity @s Item.tag{ basicitem: 1b } run kill @s
data merge block -3 11 -17 {Items:[{Slot:0b,id:"minecraft:black_concrete",Count:1b},{Slot:1b,id:"minecraft:black_concrete",Count:1b},{Slot:2b,id:"minecraft:black_concrete",Count:1b},{Slot:3b,id:"minecraft:black_concrete",Count:1b},{Slot:4b,id:"minecraft:black_concrete",Count:1b}]}
data merge block -3 11 -20 {Items:[{Slot:0b,id:"minecraft:black_concrete",Count:1b},{Slot:1b,id:"minecraft:black_concrete",Count:1b},{Slot:2b,id:"minecraft:black_concrete",Count:1b},{Slot:3b,id:"minecraft:black_concrete",Count:1b},{Slot:4b,id:"minecraft:black_concrete",Count:1b}]}
data merge block -3 11 -23 {Items:[{Slot:0b,id:"minecraft:black_concrete",Count:1b},{Slot:1b,id:"minecraft:black_concrete",Count:1b},{Slot:2b,id:"minecraft:black_concrete",Count:1b},{Slot:3b,id:"minecraft:black_concrete",Count:1b},{Slot:4b,id:"minecraft:black_concrete",Count:1b}]}
data merge block 0 11 -17 {Items:[{Slot:0b,id:"minecraft:black_concrete",Count:1b},{Slot:1b,id:"minecraft:black_concrete",Count:1b},{Slot:2b,id:"minecraft:black_concrete",Count:1b},{Slot:3b,id:"minecraft:black_concrete",Count:1b},{Slot:4b,id:"minecraft:black_concrete",Count:1b}]}
data merge block 0 11 -20 {Items:[{Slot:0b,id:"minecraft:black_concrete",Count:1b},{Slot:1b,id:"minecraft:black_concrete",Count:1b},{Slot:2b,id:"minecraft:black_concrete",Count:1b},{Slot:3b,id:"minecraft:black_concrete",Count:1b},{Slot:4b,id:"minecraft:black_concrete",Count:1b}]}
data merge block 0 11 -23 {Items:[{Slot:0b,id:"minecraft:black_concrete",Count:1b},{Slot:1b,id:"minecraft:black_concrete",Count:1b},{Slot:2b,id:"minecraft:black_concrete",Count:1b},{Slot:3b,id:"minecraft:black_concrete",Count:1b},{Slot:4b,id:"minecraft:black_concrete",Count:1b}]}
scoreboard players set boss stage 0
scoreboard players set boss map_lod 0
scoreboard players set spawn boss-Jack-O 0
# scoreboard players set boss-type map_lod 0
kill @e[tag=player-teleporter]
kill @e[type=minecraft:tnt]