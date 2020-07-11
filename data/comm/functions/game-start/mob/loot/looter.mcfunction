scoreboard players add tracking looting 1
say loot
loot spawn ~ ~ ~ loot playerheadtricks:emerald/default-emerald
summon minecraft:experience_orb ~ ~ ~ {Value:3}
execute if score tracking looting < @s looting run function comm:game-start/mob/loot/looter