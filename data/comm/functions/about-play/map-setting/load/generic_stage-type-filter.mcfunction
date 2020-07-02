tag @s add loaded

execute if score @p stage matches 2 at @s run function comm:about-play/map-setting/load/type/desert/level_1/desert_battle
execute if score @p stage matches 3 at @s run function comm:about-play/map-setting/load/type/overworld/level_1/overworld_battle
execute if score @p stage matches 4 at @s run function comm:about-play/map-setting/load/type/desert/level_1/desert_battle
execute if score @p stage matches 5 at @s run function comm:about-play/map-setting/load/type/overworld/level_1/overworld_battle
execute if score @p stage matches 6 at @s run function comm:about-play/map-setting/load/type/overworld/level_1/overworld_battle
execute if score @p stage matches 7 at @s run function comm:about-play/map-setting/load/type/overworld/level_1/overworld_battle
execute if score @p stage matches 8 at @s run function comm:about-play/map-setting/load/type/overworld/level_1/overworld_battle
execute if score @p stage matches 9 at @s run function comm:about-play/map-setting/load/type/overworld/level_1/overworld_battle

execute at @s run setblock ~-16 61 ~-16 structure_block
tellraw @p [{"nbt":"Items[0].tag.BlockEntityTag.name","block":"0 12 -26","color":"red"}, {"text":"  "}, {"nbt":"Items[0].Count","block":"0 12 -26","color":"aqua"}]
data modify block ~-16 61 ~-16 {} merge from block 0 12 -26 Items[].tag.BlockEntityTag
function comm:about-play/map-setting/load/generic/rotate_way-fillter
setblock ~-16 60 ~-16 minecraft:structure_block{name:"generic_stage_selector-battle",posY:5,mode:"LOAD"} replace
data remove block 0 12 -26 Items
setblock ~-16 62 ~-16 minecraft:redstone_block
setblock ~-16 59 ~-16 minecraft:redstone_block
