loot spawn ~ ~ ~ loot playerheadtricks:emerald-1
scoreboard players remove @s emerald 1

execute if score @s emerald matches 1.. run function comm:game-start/class/lostitem/base/emerald