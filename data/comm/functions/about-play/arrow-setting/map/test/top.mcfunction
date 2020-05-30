scoreboard players set @s map_type 0
#summon armor_stand ~ ~ ~
execute if block ~ ~-1 ~ #minecraft:load_tracking run scoreboard players operation @s map_type = @e[tag=map-all,tag=appear,limit=1,sort=nearest,distance=..0] room_type
execute at @e[tag=modify-head] as @s if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result block ~ 17 ~ Items[{ Slot: 4b }].tag.CustomModelData int 1 run scoreboard players get @s map_type

scoreboard players set @s map_type 0
execute positioned ~48 ~ ~ if block ~ ~-1 ~ #minecraft:load_tracking run scoreboard players operation @s map_type = @e[tag=map-all,tag=appear,limit=1,sort=nearest,distance=..0] room_type
execute at @e[tag=modify-head] as @s if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result block ~ 17 ~ Items[{ Slot: 3b }].tag.CustomModelData int 1 run scoreboard players get @s map_type

scoreboard players set @s map_type 0
execute positioned ~96 ~ ~ if block ~ ~-1 ~ #minecraft:load_tracking run scoreboard players operation @s map_type = @e[tag=map-all,tag=appear,limit=1,sort=nearest,distance=..0] room_type
execute at @e[tag=modify-head] as @s if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result block ~ 17 ~ Items[{ Slot: 2b }].tag.CustomModelData int 1 run scoreboard players get @s map_type

scoreboard players set @s map_type 0
execute positioned ~-48 ~ ~ if block ~ ~-1 ~ #minecraft:load_tracking run scoreboard players operation @s map_type = @e[tag=map-all,tag=appear,limit=1,sort=nearest,distance=..0] room_type
execute at @e[tag=modify-head] as @s if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result block ~ 17 ~ Items[{ Slot: 5b }].tag.CustomModelData int 1 run scoreboard players get @s map_type

scoreboard players set @s map_type 0
execute positioned ~-96 ~ ~ if block ~ ~-1 ~ #minecraft:load_tracking run scoreboard players operation @s map_type = @e[tag=map-all,tag=appear,limit=1,sort=nearest,distance=..0] room_type
execute at @e[tag=modify-head] as @s if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result block ~ 17 ~ Items[{ Slot: 6b }].tag.CustomModelData int 1 run scoreboard players get @s map_type