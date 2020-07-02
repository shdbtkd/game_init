scoreboard players add tracking looting 1
loot spawn ~ ~ ~ loot playerheadtricks:emerald/default-emerald
execute if score tracking looting < @s looting run function comm:game-start/mob/loot/looter