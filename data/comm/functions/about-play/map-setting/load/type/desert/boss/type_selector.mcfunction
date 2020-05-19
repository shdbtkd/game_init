#
#   husk
#       모래폭풍
#
#   Desert, Snowy
#       쌍둥이 컨샙
#
#   파라오 
#
#
#
#



#
#   무덤에서 죽은 사람
#       땅에서 나오는 컨샙
#
#   자이언트
#       땅에 박힌 컨샙
#       summon minecraft:giant ~ ~ ~ {Passengers:[{id:"minecraft:slime",Size:5}]}
#
#
#
#

execute if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 1b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desertboss:desert-1_level-1_boss-all",posX:15,posY:0,posZ:15,mode:"LOAD"}
execute if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 2b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desertboss:desert-1_level-2_boss-all",posX:15,posY:0,posZ:15,mode:"LOAD"}
execute if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 3b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desertboss:desert-1_level-3_boss-all",posX:15,posY:0,posZ:15,mode:"LOAD"}
execute if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 4b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desertboss:desert-1_level-4_boss-all",posX:15,posY:0,posZ:15,mode:"LOAD"}
execute if data block 0 12 -26 Items[{ id: "minecraft:diamond", Count: 5b }] run setblock ~-16 61 ~-16 minecraft:structure_block{name:"desertboss:desert-1_level-5_boss-all",posX:15,posY:0,posZ:15,mode:"LOAD"}