tellraw @p {"score":{"name":"_Rono","objective":"undying"}}
loot spawn ~ ~ ~ loot minecraft:entities/evoker
scoreboard players remove @s undying 1
execute if score @s undying matches 1.. run function comm:game-start/class/lostitem/base/undying