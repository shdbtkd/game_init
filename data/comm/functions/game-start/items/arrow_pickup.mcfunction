scoreboard players remove @s arrow_pickup 1
scoreboard players add @s emmer 1
execute as @a[scores={arrow_pickup=1..}] run function comm:game-start/items/arrow_pickup