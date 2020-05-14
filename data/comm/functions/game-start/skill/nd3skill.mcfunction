


execute as @a as @s if entity @s[tag=nd3,scores={U_shi=1..}] run xp add @a[tag=nd3] -1 levels
execute as @a as @s if entity @s[tag=nd3,scores={U_shi=1..}] run scoreboard players set @s U_shi 0
execute as @a[tag=nd3,scores={mine-p=..0}] as @s[scores={mine-c=..0}] if entity @s[scores={nd3-emmer-remove=1..}] run scoreboard players remove @s emmer 1
execute at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index if score @s emmer matches 1.. run data modify block ~ 15 ~ Items append from storage minecraft:weapon active[5]
execute at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index if score @s emmer matches ..0 run replaceitem block ~ 15 ~ container.0 air
execute if entity @s[scores={sneak=1..},level=1..] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run data modify block ~ 15 ~ Items append from storage minecraft:offhand basic[5]
execute unless entity @s[scores={sneak=1..},level=1..] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 15 ~ container.1 air
execute if data entity @s {SelectedItemSlot: 0} run function comm:game-start/skill/lootself
execute as @a[tag=nd3,scores={mine-p=..0}] as @s[scores={mine-c=..0}] if entity @s[scores={nd3-emmer-remove=1..}] run function comm:game-start/items/itemself
execute as @a[tag=nd3] as @s if entity @s[scores={nd3-emmer-remove=1..}] run scoreboard players set @s nd3-emmer-remove 0