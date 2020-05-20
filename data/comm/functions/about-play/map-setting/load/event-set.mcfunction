
execute if score @p stage matches 2 at @s run function comm:about-play/map-setting/load/type/desert/desert_event

#execute if score @p stage matches 2 as @s at @s if score @s stage-road_count matches 4 run function comm:about-play/map-setting/load/desert/desert_event-4_way
#execute if score @p stage matches 2 as @s at @s if score @s stage-road_count matches 3 run function comm:about-play/map-setting/load/desert/desert_event-3_way
#execute if score @p stage matches 2 as @s at @s if score @s stage-road_count matches 2 run function comm:about-play/map-setting/load/desert/desert_event-2_way
#execute if score @p stage matches 2 as @s at @s if score @s stage-road_count matches 1 run function comm:about-play/map-setting/load/desert/desert_event-1_way

execute at @s run setblock ~-16 61 ~-16 structure_block
tellraw @p [{"nbt":"Items[0].tag.BlockEntityTag.name","block":"0 12 -26","color":"red"}, {"text":"  "}, {"nbt":"Items[0].Count","block":"0 12 -26","color":"aqua"}]
data modify block ~-16 61 ~-16 {} merge from block 0 12 -26 Items[].tag.BlockEntityTag
function comm:about-play/map-setting/load/generic/rotate_way-fillter
data remove block 0 12 -26 Items
setblock ~-16 62 ~-16 minecraft:redstone_block
tag @s add end-event
setblock ~-16 60 ~-16 minecraft:structure_block{name:"generic_stage_selector-event",posY:5,mode:"LOAD"} replace
setblock ~-16 59 ~-16 minecraft:redstone_block
