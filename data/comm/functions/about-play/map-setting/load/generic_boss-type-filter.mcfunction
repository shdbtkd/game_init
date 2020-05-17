data remove block 0 12 -26 Items
execute if score @p stage matches 2 run loot insert 0 12 -26 loot playerheadtricks:5stage

execute if score @p stage matches 2 as @e[tag=boss,tag=map-all] at @s run function comm:about-play/map-setting/load/desert/boss/type_selector

data remove block 0 12 -26 Items

execute if score @p stage matches 2 as @e[tag=boss,tag=map-all] at @s run setblock ~-16 59 ~-16 minecraft:structure_block{name:"generic_stage_selector-boss_all",posX:15,posY:1,posZ:15,mode:"LOAD"} replace
