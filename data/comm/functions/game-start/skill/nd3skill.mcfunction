


execute as @a as @s if entity @s[tag=nd3,scores={U_shi=1..}] run xp add @a[tag=nd3] -1 levels
execute as @a as @s if entity @s[tag=nd3,scores={U_shi=1..}] run scoreboard players set @s U_shi 0
execute if score @s mine-c matches ..0 if score @s mine-p matches ..0 if score @s nd3-emmer-remove matches 1.. run function comm:game-start/skill/attack/nd3
execute unless score @s mine-c matches ..0 if score @s nd3-emmer-remove matches 1.. run scoreboard players set @s nd3-emmer-remove 0
execute unless score @s mine-p matches ..0 if score @s nd3-emmer-remove matches 1.. run scoreboard players set @s nd3-emmer-remove 0
execute if score @s emmer matches 1.. at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run data modify block ~ 15 ~ Items append from storage minecraft:weapon active[5]
execute if score @s emmer matches ..0 at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 15 ~ container.0 air
execute if predicate pred:sneak if entity @s[level=1..] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run data modify block ~ 15 ~ Items append from storage minecraft:offhand basic[5]
execute if predicate pred:sneak if entity @s[level=1..] unless data entity @s Inventory[{ Slot: -106b, id: "minecraft:shield" }] run function comm:game-start/skill/lootself
execute if predicate pred:sneak if entity @s[level=..0] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 15 ~ container.1 air
execute if predicate pred:sneak if entity @s[level=..0] if data entity @s Inventory[{ Slot: -106b, id: "minecraft:shield" }] run function comm:game-start/skill/lootself
execute unless predicate pred:sneak at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 15 ~ container.1 air
execute unless predicate pred:sneak if data entity @s Inventory[{ Slot: -106b, id: "minecraft:shield" }] run function comm:game-start/skill/lootself
