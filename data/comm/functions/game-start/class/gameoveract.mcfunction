scoreboard players set next stage 0
tp @a 0 16 0
spawnpoint @a 0 16 0
xp set @a 0 points
xp set @a 0 levels
scoreboard players set @a stage 0
clear @a
scoreboard players reset @a out

execute at @e[tag=modify-head] run data modify block ~ 12 ~ Items set from block 8 12 -31 Items
execute at @e[tag=modify-head] run data modify block ~ 19 ~ Items set from block 8 12 -29 Items

effect give @a instant_health 2 100 true
scoreboard players set next stage 0
scoreboard players set time stage 0
scoreboard players set start map_lod 0
execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 15 ~ container.5 air

gamerule fallDamage false

function comm:lobby-comm/setting/resetscore
function comm:about-play/map-setting/load/schedule/stage-type
