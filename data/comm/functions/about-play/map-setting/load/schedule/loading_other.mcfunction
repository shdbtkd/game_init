execute at @e[tag=map-all,tag=center] run setblock ~-16 59 ~-16 minecraft:redstone_block
execute as @e[tag=boss,tag=map-all] at @s run setblock ~-16 61 ~-16 minecraft:redstone_block
execute as @e[tag=boss,tag=map-all] at @s run setblock ~-16 58 ~-16 minecraft:redstone_block

execute as @e[tag=boss,tag=map-all] at @s run setblock ~ 62 ~ minecraft:redstone_block destroy
execute as @e[tag=boss,tag=map-all] at @s run setblock ~-1 62 ~-1 minecraft:redstone_block destroy
execute as @e[tag=boss,tag=map-all] at @s run setblock ~-1 62 ~ minecraft:redstone_block destroy
execute as @e[tag=boss,tag=map-all] at @s run setblock ~ 62 ~-1 minecraft:redstone_block destroy

execute as @e[tag=boss,tag=map-all] at @s run setblock ~ 59 ~ minecraft:redstone_block destroy
execute as @e[tag=boss,tag=map-all] at @s run setblock ~-1 59 ~-1 minecraft:redstone_block destroy
execute as @e[tag=boss,tag=map-all] at @s run setblock ~-1 59 ~ minecraft:redstone_block destroy
execute as @e[tag=boss,tag=map-all] at @s run setblock ~ 59 ~-1 minecraft:redstone_block destroy

execute if score start map_lod matches 8 run scoreboard players set start map_lod 9