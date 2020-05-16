
execute if score @p stage matches 2 run loot insert 0 12 -26 loot playerheadtricks:2type

execute if score @s stage-road_count matches 4 if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-4_way-center",posY:1,mode:"LOAD"}
execute if score @s stage-road_count matches 3 if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-3_way-center",posY:1,mode:"LOAD"}
execute if score @s stage-road_count matches 2 if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-2_way-center",posY:1,mode:"LOAD"}
execute if score @s stage-road_count matches 2 if score @s stage-road_Xminu matches 1.. if score @s stage-road_Xplus matches 1.. if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-straight-center",posY:1,mode:"LOAD"}
execute if score @s stage-road_count matches 2 if score @s stage-road_Zminu matches 1.. if score @s stage-road_Zplus matches 1.. if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-straight-center",posY:1,mode:"LOAD"}
execute if score @s stage-road_count matches 1 if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-1_way-center",posY:1,mode:"LOAD"}

execute if score @s stage-road_count matches 4 if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 2b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-4_way-center",posY:1,mode:"LOAD"}
execute if score @s stage-road_count matches 3 if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 2b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-3_way-center",posY:1,mode:"LOAD"}
execute if score @s stage-road_count matches 2 if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 2b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-2_way-center",posY:1,mode:"LOAD"}
execute if score @s stage-road_count matches 2 if score @s stage-road_Xminu matches 1.. if score @s stage-road_Xplus matches 1.. if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 2b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-straight-center",posY:1,mode:"LOAD"}
execute if score @s stage-road_count matches 2 if score @s stage-road_Zminu matches 1.. if score @s stage-road_Zplus matches 1.. if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 2b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-straight-center",posY:1,mode:"LOAD"}
execute if score @s stage-road_count matches 1 if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 2b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-1_way-center",posY:1,mode:"LOAD"}

data remove block 0 12 -26 Items
function comm:about-play/map-setting/load/generic/rotate_way-fillter