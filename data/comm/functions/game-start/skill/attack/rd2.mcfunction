scoreboard players remove @s emmer 1
execute if entity @s[level=1..] if predicate pred:sneak run function comm:game-start/skill/sneak/rd2
function comm:game-start/items/itemself
function comm:game-start/skill/lootself
scoreboard players set @s rd2-emmer-remove 0