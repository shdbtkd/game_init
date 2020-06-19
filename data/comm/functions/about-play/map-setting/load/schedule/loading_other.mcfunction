execute at @e[tag=map-all,tag=center] run setblock ~-16 59 ~-16 minecraft:redstone_block
execute as @e[tag=boss,tag=map-all] at @s run setblock ~-16 61 ~-16 minecraft:redstone_block destroy
execute as @e[tag=boss,tag=map-all] at @s run setblock ~-16 58 ~-16 minecraft:redstone_block destroy

function comm:about-play/map-setting/load/schedule/boss-load

execute if score start map_lod matches 8 run scoreboard players set start map_lod 9