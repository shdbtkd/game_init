data modify entity @s NoGravity set value 1b
data modify entity @s pickup set value -1b
execute store result score @s attack-damage run data get entity @s damage 40
scoreboard players operation @s attack-damage += @p attack-damage
execute store result entity @s damage double 0.025 run scoreboard players get @s attack-damage
tag @s add end-arrow