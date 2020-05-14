
function comm:lobby-comm/ready/start

execute if score @p stage matches ..0 run function comm:lobby-comm/lobby
execute if score @p stage matches 1.. if score player stage matches 1.. run function comm:main

function comm:lobby-comm/ready/count

#############
function comm:about-play/arrow-setting/trigger
#############
function comm:game-start/items/preset/test
execute if score player stage matches 1.. run function comm:about-play/map-setting/stage
function comm:game-start/class/count
execute as @a at @s if entity @s[scores={stage=0..}] run effect give @s minecraft:saturation 1000000 0 true

# execute as @a[scores={hurt=0}] if data entity @s {OnGround: 1b} if block ~ ~ ~ #minecraft:can_death if block ~ ~1 ~ #minecraft:air_block