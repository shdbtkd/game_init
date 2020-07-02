scoreboard players remove @s emmer 1
execute if entity @s[level=1..] if predicate pred:sneak as @e[tag=rd1arrow,tag=!end-arrow] run function comm:game-start/skill/sneak/rd1
function comm:game-start/items/itemself
function comm:game-start/skill/lootself
scoreboard players set @s rd1-emmer-remove 0