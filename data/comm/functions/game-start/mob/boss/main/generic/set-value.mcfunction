scoreboard players set result boss-now_health 0
execute store result score @s boss-now_health run data get entity @s Health
scoreboard players remove @s boss-now_health 1000
scoreboard players operation result boss-now_health += @s boss-now_health
execute store result bossbar minecraft:generic.bossbar value run scoreboard players get result boss-now_health