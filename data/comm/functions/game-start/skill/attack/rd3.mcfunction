scoreboard players remove @s emmer 1
execute as @s[level=1..] if score @s sneak matches 1.. run function comm:game-start/skill/sneak/rd3
execute as @s[level=..0] if score @s sneak matches 1.. run function comm:game-start/skill/attack/evoker/branchs/selector
execute as @s if score @s sneak matches ..0 run function comm:game-start/skill/attack/evoker/branchs/selector
function comm:game-start/items/itemself
function comm:game-start/skill/lootself
scoreboard players set @s rd3-emmer-remove 0