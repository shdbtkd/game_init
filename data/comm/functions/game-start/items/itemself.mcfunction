execute at @e[tag=modify-head] as @s[scores={stage=1..}] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run loot replace entity @s hotbar.2 mine ~ 21 ~ minecraft:stick{drop_contents:true}