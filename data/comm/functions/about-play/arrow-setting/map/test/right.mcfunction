scoreboard players set @s map_type 0
#execute if block ~ ~-1 ~ #minecraft:load_tracking run effect give @e[distance=..0] minecraft:glowing
execute if block ~ ~-1 ~ #minecraft:load_tracking run scoreboard players operation @s map_type = @e[tag=map-all,tag=appear,limit=1,sort=nearest,distance=..0] room_type
execute at @e[tag=modify-head] as @s[scores={map_type=1..}] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result block ~ 17 ~ Items[{ Slot: 14b }].tag.CustomModelData int 1 run scoreboard players get @s map_type

scoreboard players set @s map_type 0
execute positioned ~-48 ~ ~ if block ~ ~-1 ~ #minecraft:load_tracking run scoreboard players operation @s map_type = @e[tag=map-all,tag=appear,limit=1,sort=nearest,distance=..0] room_type
execute at @e[tag=modify-head] as @s[scores={map_type=1..}] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result block ~ 17 ~ Items[{ Slot: 15b }].tag.CustomModelData int 1 run scoreboard players get @s map_type
