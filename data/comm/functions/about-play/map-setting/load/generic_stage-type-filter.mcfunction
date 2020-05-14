
execute if score @p stage matches 2 run loot insert 0 12 -26 loot playerheadtricks:10stage
execute if score @p stage matches 2 run loot insert 0 12 -26 loot playerheadtricks:2type

execute if score @p stage matches 2 at @s if score @s stage-road_count matches 4 run function comm:about-play/map-setting/load/desert/desert_1-4_way
execute if score @p stage matches 2 at @s if score @s stage-road_count matches 3 run function comm:about-play/map-setting/load/desert/desert_1-3_way
execute if score @p stage matches 2 at @s if score @s stage-road_count matches 2 run function comm:about-play/map-setting/load/desert/desert_1-2_way
execute if score @p stage matches 2 at @s if score @s stage-road_count matches 1 run function comm:about-play/map-setting/load/desert/desert_1-1_way

setblock ~-16 60 ~-16 minecraft:structure_block{name:"generic_stage_selector-battle",posY:5,mode:"LOAD"} replace
tellraw @p {"nbt":"Items","block":"0 12 -26"}
data remove block 0 12 -26 Items
setblock ~-16 62 ~-16 minecraft:redstone_block
tag @s add end-event
setblock ~-16 59 ~-16 minecraft:redstone_block

# execute as @e[tag=loader,tag=!event,tag=!loaded,sort=random,limit=1] at @s if score @p stage matches 2 at @s if score @s stage-road_count matches 3 run function comm:about-play/map-setting/load/desert/desert_1-3_way