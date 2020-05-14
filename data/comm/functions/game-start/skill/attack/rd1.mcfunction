scoreboard players remove @s emmer 1
execute as @s[level=1..] if score @s sneak matches 1.. run function comm:game-start/skill/sneak/rd1
function comm:game-start/items/itemself
function comm:game-start/skill/lootself
scoreboard players set @s rd1-emmer-remove 0