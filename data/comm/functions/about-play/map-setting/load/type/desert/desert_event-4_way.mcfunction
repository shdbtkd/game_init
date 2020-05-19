loot insert 0 12 -26 loot playerheadtricks:2stage

execute if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 1b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-4_way-1_event",posY:1,mode:"LOAD"}
execute if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 2b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-1_type-4_way-2_event",posY:1,mode:"LOAD"}

execute if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 1b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 2b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-3_type-4_way-1_event",posY:1,mode:"LOAD"}
execute if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 2b }] if data block 0 12 -26 Items[{ id:"minecraft:emerald", Count: 2b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desert:desert-3_type-4_way-2_event",posY:1,mode:"LOAD"}