data remove block 0 12 -26 Items

#execute if score @p stage matches 2 as @e[tag=boss,tag=map-all] at @s run loot insert 0 12 -26 loot dungeons:desert/boss/boss-1_level
execute if score @p stage matches 2 as @e[tag=boss,tag=map-all] at @s run loot insert 0 12 -26 loot dungeons:desert/boss/boss-test
execute if score @p stage matches 3 as @e[tag=boss,tag=map-all] at @s run loot insert 0 12 -26 loot dungeons:overworld/boss/boss-test

execute as @e[tag=boss,tag=map-all] at @s run setblock ~-16 60 ~-16 structure_block
tellraw @p [{"nbt":"Items[0].tag.BlockEntityTag.name","block":"0 12 -26","color":"red"}, {"text":"  "}, {"nbt":"Items[0].Count","block":"0 12 -26","color":"aqua"}]
execute as @e[tag=boss,tag=map-all] at @s run data modify block ~-16 60 ~-16 {} merge from block 0 12 -26 Items[].tag.BlockEntityTag
data remove block 0 12 -26 Items
execute as @e[tag=boss,tag=map-all] at @s run setblock ~-16 59 ~-16 minecraft:structure_block{name:"generic_stage_selector-boss_all",posX:15,posY:1,posZ:15,mode:"LOAD"} replace
