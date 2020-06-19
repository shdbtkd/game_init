scoreboard players remove @s emmer 1
execute if score @s emmer matches ..0 run replaceitem block ~ 15 ~ container.0 air
function comm:game-start/skill/lootself
scoreboard players set @s nd3-emmer-remove 0