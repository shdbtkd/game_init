loot spawn ~ ~ ~ loot playerheadtricks:tnt1
scoreboard players remove @s p-tnt 1

execute if score @s p-tnt matches 1.. run function comm:game-start/class/lostitem/base/tnt