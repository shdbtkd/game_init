
bossbar set minecraft:generic.bossbar visible false
bossbar set minecraft:generic.bossbar visible true

bossbar set minecraft:generic.bossbar color red

scoreboard players set result boss-max_health 0

execute as @e[tag=red-boss] unless score @s boss-max_health matches 0.. store result score @s boss-max_health run attribute @s minecraft:generic.max_health base get
execute as @e[tag=red-boss] run scoreboard players operation result boss-max_health += @s boss-max_health
execute store result bossbar minecraft:generic.bossbar max run scoreboard players get result boss-max_health
execute as @e[tag=red-boss] run function comm:game-start/mob/boss/main/generic/set-modifiers
execute as @e[tag=red-boss] run function comm:game-start/mob/boss/main/generic/set-value

