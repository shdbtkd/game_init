
execute if score @s stage-road_Zminu matches 1.. if score @s stage-road_Zplus matches 1.. run data modify block ~-16 61 ~-16 posX set value 31
execute if score @s stage-road_Zminu matches 1.. if score @s stage-road_Zplus matches 1.. run data modify block ~-16 61 ~-16 rotation set value CLOCKWISE_90


execute if score @s stage-road_Xplus matches 1.. if score @s stage-road_Zminu matches 1.. run data modify block ~-16 61 ~-16 posX set value 31
execute if score @s stage-road_Xplus matches 1.. if score @s stage-road_Zminu matches 1.. run data modify block ~-16 61 ~-16 rotation set value CLOCKWISE_90

execute if score @s stage-road_Xplus matches 1.. if score @s stage-road_Zplus matches 1.. run data modify block ~-16 61 ~-16 posX set value 31
execute if score @s stage-road_Xplus matches 1.. if score @s stage-road_Zplus matches 1.. run data modify block ~-16 61 ~-16 posZ set value 31
execute if score @s stage-road_Xplus matches 1.. if score @s stage-road_Zplus matches 1.. run data modify block ~-16 61 ~-16 rotation set value CLOCKWISE_180

execute if score @s stage-road_Xminu matches 1.. if score @s stage-road_Zplus matches 1.. run data modify block ~-16 61 ~-16 posZ set value 31
execute if score @s stage-road_Xminu matches 1.. if score @s stage-road_Zplus matches 1.. run data modify block ~-16 61 ~-16 rotation set value COUNTERCLOCKWISE_90