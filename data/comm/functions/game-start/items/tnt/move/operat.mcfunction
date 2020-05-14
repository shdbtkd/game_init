execute as @s at @s store result score @s tnt0 run data get entity @s Pos[0] 100
execute as @s at @s store result score @s tnt2 run data get entity @s Pos[2] 100

execute as @p at @s store result score @s tnt0 run data get entity @s Pos[0] 100
execute as @p at @s store result score @s tnt2 run data get entity @s Pos[2] 100

scoreboard players operation @s tnt0 -= @p tnt0
scoreboard players operation @s tnt2 -= @p tnt2

execute store result entity @s Motion[0] double 0.015 run scoreboard players get @s tnt0
execute store result entity @s Motion[2] double 0.015 run scoreboard players get @s tnt2
data modify entity @s Motion[1] set value 0.2