
execute at @e[tag=modify-head] as @s[scores={stage=1..}] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run loot replace block ~ 21 ~ container.5 mine ~ 29 ~ minecraft:stick{drop_contents:true}

execute at @e[tag=modify-head] as @s[scores={stage=1..}] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run loot replace entity @s hotbar.1 mine ~ 21 ~ minecraft:stick{drop_contents:true}