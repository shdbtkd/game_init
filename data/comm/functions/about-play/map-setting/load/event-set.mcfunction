
execute if score @p stage matches 2 run loot insert 0 12 -26 loot playerheadtricks:2type

execute if score @p stage matches 2 as @s at @s if score @s stage-road_count matches 4 run function comm:about-play/map-setting/load/desert/desert_event-4_way
execute if score @p stage matches 2 as @s at @s if score @s stage-road_count matches 3 run function comm:about-play/map-setting/load/desert/desert_event-3_way
execute if score @p stage matches 2 as @s at @s if score @s stage-road_count matches 2 run function comm:about-play/map-setting/load/desert/desert_event-2_way
execute if score @p stage matches 2 as @s at @s if score @s stage-road_count matches 1 run function comm:about-play/map-setting/load/desert/desert_event-1_way

tellraw @p {"nbt":"Items","block":"0 12 -26"}
data remove block 0 12 -26 Items
setblock ~-16 62 ~-16 minecraft:redstone_block
tag @s add end-event
setblock ~-16 60 ~-16 minecraft:structure_block{name:"generic_stage_selector-event",posY:5,mode:"LOAD"} replace
setblock ~-16 59 ~-16 minecraft:redstone_block
