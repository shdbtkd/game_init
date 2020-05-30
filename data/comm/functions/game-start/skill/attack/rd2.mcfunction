scoreboard players remove @s emmer 1
execute as @s[level=1..] if score @s sneak matches 1.. run function comm:game-start/skill/sneak/rd2
execute as @s if score @s sneak matches 1.. run xp add @a[tag=rd2] -1 levels
function comm:game-start/items/itemself
function comm:game-start/skill/lootself
scoreboard players set @s rd2-emmer-remove 0