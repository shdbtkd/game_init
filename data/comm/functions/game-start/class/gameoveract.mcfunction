tp @a 0 16 0
spawnpoint @a 0 16 0
xp set @a 0 points
xp set @a 0 levels
scoreboard players set @a stage 0
clear @a
scoreboard players reset @a out

tag @a remove rd1
tag @a remove rd2
tag @a remove rd3

tag @a remove nd1
tag @a remove nd2
tag @a remove nd3

data remove block -3 12 -17 Items
data remove block -3 12 -20 Items
data remove block -3 12 -23 Items
data remove block 0 12 -17 Items
data remove block 0 12 -20 Items
data remove block 0 12 -23 Items

effect give @a instant_health 2 100 true
scoreboard players set time stage 0
scoreboard players set start map_lod 0
execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 15 ~ container.5 air

function comm:lobby-comm/setting/resetscore
