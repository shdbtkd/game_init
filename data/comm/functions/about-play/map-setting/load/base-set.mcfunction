execute as @s[tag=center] if score @p stage matches 1

execute if score @p stage matches 2 as @s[tag=center] run function comm:about-play/map-setting/load/type/desert/desert_center
execute if score @p stage matches 2 as @s[tag=map-all,tag=!boss] unless block ~ ~-1 ~48 minecraft:red_concrete unless block ~ ~-1 ~48 minecraft:cyan_concrete unless block ~ ~-1 ~48 minecraft:air run setblock ~-16 61 ~16 minecraft:structure_block{name:"desert:desert-road",posY:1,posX:31,rotation:"CLOCKWISE_90",mode:"LOAD"}
execute if score @p stage matches 2 as @s[tag=map-all,tag=!boss] unless block ~48 ~-1 ~ minecraft:red_concrete unless block ~48 ~-1 ~ minecraft:cyan_concrete unless block ~48 ~-1 ~ minecraft:air run setblock ~16 61 ~-16 minecraft:structure_block{name:"desert:desert-road",posY:1,mode:"LOAD"}

execute as @s[tag=center] at @s run setblock ~-16 61 ~-16 structure_block
execute as @s[tag=center] run tellraw @p [{"nbt":"Items[0].tag.BlockEntityTag.name","block":"0 12 -26","color":"red"}, {"text":"  "}, {"nbt":"Items[0].Count","block":"0 12 -26","color":"aqua"}]
execute as @s[tag=center] at @s run data modify block ~-16 61 ~-16 {} merge from block 0 12 -26 Items[].tag.BlockEntityTag
function comm:about-play/map-setting/load/generic/rotate_way-fillter
data remove block 0 12 -26 Items
execute as @s[tag=center] run setblock ~-16 62 ~-16 minecraft:redstone_block
execute as @s[tag=map-all,tag=!boss] unless block ~ ~-1 ~48 minecraft:red_concrete unless block ~ ~-1 ~48 minecraft:cyan_concrete unless block ~ ~-1 ~48 minecraft:air run setblock ~-16 62 ~16 minecraft:redstone_block
execute as @s[tag=map-all,tag=!boss] unless block ~48 ~-1 ~ minecraft:red_concrete unless block ~48 ~-1 ~ minecraft:cyan_concrete unless block ~48 ~-1 ~ minecraft:air run setblock ~16 62 ~-16 minecraft:redstone_block
