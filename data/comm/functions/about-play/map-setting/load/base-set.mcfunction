execute as @s[tag=center] if score @p stage matches 1

execute if score @p stage matches 2 as @s[tag=center] run function comm:about-play/map-setting/load/desert/desert_center
execute if score @p stage matches 2 as @s[tag=map-all,tag=!boss] unless block ~ ~-1 ~48 minecraft:red_concrete unless block ~ ~-1 ~48 minecraft:cyan_concrete unless block ~ ~-1 ~48 minecraft:air run setblock ~-16 61 ~16 minecraft:structure_block{name:"desert-road",posY:1,posX:31,rotation:"CLOCKWISE_90",mode:"LOAD"}
execute if score @p stage matches 2 as @s[tag=map-all,tag=!boss] unless block ~48 ~-1 ~ minecraft:red_concrete unless block ~48 ~-1 ~ minecraft:cyan_concrete unless block ~48 ~-1 ~ minecraft:air run setblock ~16 61 ~-16 minecraft:structure_block{name:"desert-road",posY:1,mode:"LOAD"}

execute as @s[tag=center] run setblock ~-16 62 ~-16 minecraft:redstone_block
execute as @s[tag=map-all,tag=!boss] unless block ~ ~-1 ~48 minecraft:red_concrete unless block ~ ~-1 ~48 minecraft:cyan_concrete unless block ~ ~-1 ~48 minecraft:air run setblock ~-16 62 ~16 minecraft:redstone_block
execute as @s[tag=map-all,tag=!boss] unless block ~48 ~-1 ~ minecraft:red_concrete unless block ~48 ~-1 ~ minecraft:cyan_concrete unless block ~48 ~-1 ~ minecraft:air run setblock ~16 62 ~-16 minecraft:redstone_block
