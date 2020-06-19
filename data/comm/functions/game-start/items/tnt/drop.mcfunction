scoreboard players remove @s p-tnt 1
scoreboard players remove @s d-tnt 1
execute if entity @s[scores={d-tnt=1..}] run function comm:game-start/items/tnt/drop