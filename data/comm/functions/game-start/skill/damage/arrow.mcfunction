data modify entity @s NoGravity set value 1b
data modify entity @s pickup set value -1b
execute store result score @s result-att_dmg run data get entity @s damage 40
scoreboard players operation @s result-att_dmg += @p result-att_dmg
execute store result entity @s damage double 0.025 run scoreboard players get @s result-att_dmg
tag @s add end-arrow