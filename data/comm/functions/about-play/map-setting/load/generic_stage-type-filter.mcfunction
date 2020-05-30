tag @s add loaded

execute if score @p stage matches 2 at @s run function comm:about-play/map-setting/load/type/desert/desert_battle

execute at @s run setblock ~-16 61 ~-16 structure_block
tellraw @p [{"nbt":"Items[0].tag.BlockEntityTag.name","block":"0 12 -26","color":"red"}, {"text":"  "}, {"nbt":"Items[0].Count","block":"0 12 -26","color":"aqua"}]
data modify block ~-16 61 ~-16 {} merge from block 0 12 -26 Items[].tag.BlockEntityTag
function comm:about-play/map-setting/load/generic/rotate_way-fillter
setblock ~-16 60 ~-16 minecraft:structure_block{name:"generic_stage_selector-battle",posY:5,mode:"LOAD"} replace
data remove block 0 12 -26 Items
setblock ~-16 62 ~-16 minecraft:redstone_block
setblock ~-16 59 ~-16 minecraft:redstone_block
