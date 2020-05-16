
loot insert 0 12 -26 loot playerheadtricks:3stage

execute if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 1b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-2_way-1_event",posY:1,mode:"LOAD"}
execute if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 2b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-2_way-2_event",posY:1,mode:"LOAD"}
execute if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 3b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-2_way-3_event",posY:1,mode:"LOAD"}

execute if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 1b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 2b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-3_type-2_way-1_event",posY:1,mode:"LOAD"}
execute if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 2b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 2b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-3_type-2_way-2_event",posY:1,mode:"LOAD"}
execute if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 3b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 2b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-3_type-2_way-3_event",posY:1,mode:"LOAD"}

execute if score @s stage-road_Xminu matches 1.. if score @s stage-road_Xplus matches 1.. run data remove block 0 12 -26 Items[{ id:"minecraft:diamond" }]
execute if score @s stage-road_Xminu matches 1.. if score @s stage-road_Xplus matches 1.. run loot insert 0 12 -26 loot playerheadtricks:2stage
execute if score @s stage-road_Xminu matches 1.. if score @s stage-road_Xplus matches 1.. if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 1b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-straight-1_event",posY:1,mode:"LOAD"}
execute if score @s stage-road_Xminu matches 1.. if score @s stage-road_Xplus matches 1.. if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 2b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-straight-2_event",posY:1,mode:"LOAD"}

execute if score @s stage-road_Xminu matches 1.. if score @s stage-road_Xplus matches 1.. if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 1b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-3_type-straight-1_event",posY:1,mode:"LOAD"}
execute if score @s stage-road_Xminu matches 1.. if score @s stage-road_Xplus matches 1.. if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 2b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-3_type-straight-2_event",posY:1,mode:"LOAD"}

execute if score @s stage-road_Zminu matches 1.. if score @s stage-road_Zplus matches 1.. run data remove block 0 12 -26 Items[{ id:"minecraft:diamond" }]
execute if score @s stage-road_Zminu matches 1.. if score @s stage-road_Zplus matches 1.. run loot insert 0 12 -26 loot playerheadtricks:2stage
execute if score @s stage-road_Zminu matches 1.. if score @s stage-road_Zplus matches 1.. if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 1b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-straight-1_event",posY:1,mode:"LOAD"}
execute if score @s stage-road_Zminu matches 1.. if score @s stage-road_Zplus matches 1.. if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 2b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-straight-2_event",posY:1,mode:"LOAD"}

execute if score @s stage-road_Zminu matches 1.. if score @s stage-road_Zplus matches 1.. if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 1b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-3_type-straight-1_event",posY:1,mode:"LOAD"}
execute if score @s stage-road_Zminu matches 1.. if score @s stage-road_Zplus matches 1.. if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 2b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-3_type-straight-2_event",posY:1,mode:"LOAD"}

execute as @s at @s run function comm:about-play/map-setting/load/generic/rotate-2_way