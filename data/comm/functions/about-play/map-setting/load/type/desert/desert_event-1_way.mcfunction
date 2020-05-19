
loot insert 0 12 -26 loot playerheadtricks:3stage

execute if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 1b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-1_way-1_event",posY:1,mode:"LOAD"}
execute if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 2b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-1_way-2_event",posY:1,mode:"LOAD"}
execute if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 3b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-1_way-3_event",posY:1,mode:"LOAD"}

execute if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 1b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 2b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-3_type-1_way-1_event",posY:1,mode:"LOAD"}
execute if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 2b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 2b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-3_type-1_way-2_event",posY:1,mode:"LOAD"}
execute if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 3b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 2b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-3_type-1_way-3_event",posY:1,mode:"LOAD"}

execute as @s at @s run function comm:about-play/map-setting/load/generic/rotate-1_way