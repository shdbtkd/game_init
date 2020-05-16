execute at @e[tag=loader] if block ~ ~-1 ~ minecraft:red_concrete run setblock ~ ~-1 ~ minecraft:gray_concrete
execute at @e[tag=hide] if block ~ ~-1 ~ minecraft:red_concrete run setblock ~ ~-1 ~ minecraft:blue_concrete
execute at @e[tag=boss] if block ~ ~-1 ~ minecraft:red_concrete run setblock ~ ~-1 ~ minecraft:cyan_concrete
execute at @e[tag=map-all] as @e[tag=tester,distance=..1] run kill @s

execute store result score count map_lod if entity @e[type=minecraft:armor_stand,tag=loader]
execute store result score count-loader map_lod if entity @e[type=minecraft:armor_stand,tag=loader,tag=!event]
execute store result score count-end-load map_lod if entity @e[type=minecraft:armor_stand,tag=loader,tag=!event,tag=loaded]
execute store result score count-hide map_lod if entity @e[type=minecraft:armor_stand,tag=hide]
execute store result score count-event map_lod if entity @e[tag=event,type=minecraft:armor_stand]
execute store result score count-end-event map_lod if entity @e[tag=event,tag=end-event,type=minecraft:armor_stand]

scoreboard players set @e[tag=map-all] stage-road_count 0
scoreboard players add @e[tag=map-all] stage-road_count 0

execute as @e[tag=map-all] at @s unless block ~48 ~-1 ~ minecraft:red_concrete unless block ~48 ~-1 ~ minecraft:blue_concrete unless block ~48 ~-1 ~ minecraft:air run scoreboard players add @s stage-road_count 1
execute as @e[tag=map-all] at @s unless block ~48 ~-1 ~ minecraft:red_concrete unless block ~48 ~-1 ~ minecraft:blue_concrete unless block ~48 ~-1 ~ minecraft:air run scoreboard players add @s stage-road_Xplus 1
execute as @e[tag=map-all] at @s unless block ~-48 ~-1 ~ minecraft:red_concrete unless block ~-48 ~-1 ~ minecraft:blue_concrete unless block ~-48 ~-1 ~ minecraft:air run scoreboard players add @s stage-road_count 1
execute as @e[tag=map-all] at @s unless block ~-48 ~-1 ~ minecraft:red_concrete unless block ~-48 ~-1 ~ minecraft:blue_concrete unless block ~-48 ~-1 ~ minecraft:air run scoreboard players add @s stage-road_Xminu 1
execute as @e[tag=map-all] at @s unless block ~ ~-1 ~48 minecraft:red_concrete unless block ~ ~-1 ~48 minecraft:blue_concrete unless block ~ ~-1 ~48 minecraft:air run scoreboard players add @s stage-road_count 1
execute as @e[tag=map-all] at @s unless block ~ ~-1 ~48 minecraft:red_concrete unless block ~ ~-1 ~48 minecraft:blue_concrete unless block ~ ~-1 ~48 minecraft:air run scoreboard players add @s stage-road_Zplus 1
execute as @e[tag=map-all] at @s unless block ~ ~-1 ~-48 minecraft:red_concrete unless block ~ ~-1 ~-48 minecraft:blue_concrete unless block ~ ~-1 ~-48 minecraft:air run scoreboard players add @s stage-road_count 1
execute as @e[tag=map-all] at @s unless block ~ ~-1 ~-48 minecraft:red_concrete unless block ~ ~-1 ~-48 minecraft:blue_concrete unless block ~ ~-1 ~-48 minecraft:air run scoreboard players add @s stage-road_Zminu 1