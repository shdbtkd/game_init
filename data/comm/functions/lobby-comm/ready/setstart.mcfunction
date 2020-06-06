kill @e[tag=modify-head]

scoreboard players add @a stage 2
execute if predicate pred:50 run scoreboard players add @a stage 1
scoreboard players set next stage 3
scoreboard players set start map_lod 1
# scoreboard players set next stage 0

summon minecraft:armor_stand -3 13 -17 {Tags:["rd1-itempos","modify-head"]}
summon minecraft:armor_stand -3 13 -20 {Tags:["rd2-itempos","modify-head"]}
summon minecraft:armor_stand -3 13 -23 {Tags:["rd3-itempos","modify-head"]}

summon minecraft:armor_stand 0 13 -17 {Tags:["nd1-itempos","modify-head"]}
summon minecraft:armor_stand 0 13 -20 {Tags:["nd2-itempos","modify-head"]}
summon minecraft:armor_stand 0 13 -23 {Tags:["nd3-itempos","modify-head"]}

scoreboard players set @e[tag=rd1-itempos] class-index 1
scoreboard players set @e[tag=rd2-itempos] class-index 2
scoreboard players set @e[tag=rd3-itempos] class-index 3

scoreboard players set @e[tag=nd1-itempos] class-index 4
scoreboard players set @e[tag=nd2-itempos] class-index 5
scoreboard players set @e[tag=nd3-itempos] class-index 6

function comm:game-start/items/head-modify
function comm:lobby-comm/setting/resetscore
function comm:lobby-comm/setting/weapon