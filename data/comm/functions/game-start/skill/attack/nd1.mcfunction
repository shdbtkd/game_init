scoreboard players remove @s emmer 1
scoreboard players set @s nd1-emmer-remove 0
execute if entity @s[level=1..] if predicate pred:sneak run function comm:game-start/skill/sneak/nd1
execute if score @s emmer matches 1.. at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run data modify block ~ 15 ~ Items append from storage minecraft:weapon active[3]
execute if score @s emmer matches ..0 at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 15 ~ container.0 air
function comm:game-start/items/itemself