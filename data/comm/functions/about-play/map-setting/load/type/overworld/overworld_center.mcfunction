execute if score @s stage-road_count matches 4 run loot insert 0 12 -26 loot dungeons:overworld/center/center-4_way
execute if score @s stage-road_count matches 3 run loot insert 0 12 -26 loot dungeons:overworld/center/center-3_way
execute if score @s stage-road_count matches 2 run loot insert 0 12 -26 loot dungeons:overworld/center/center-2_way
execute if score @s stage-road_count matches 1 run loot insert 0 12 -26 loot dungeons:overworld/center/center-1_way

execute if score @s stage-road_count matches 2 if score @s stage-road_Xminu matches 1.. if score @s stage-road_Xplus matches 1.. run data remove block 0 12 -26 Items
execute if score @s stage-road_count matches 2 if score @s stage-road_Xminu matches 1.. if score @s stage-road_Xplus matches 1.. run loot insert 0 12 -26 loot dungeons:overworld/center/center-straight
execute if score @s stage-road_count matches 2 if score @s stage-road_Zminu matches 1.. if score @s stage-road_Zplus matches 1.. run loot insert 0 12 -26 loot dungeons:overworld/center/center-straight