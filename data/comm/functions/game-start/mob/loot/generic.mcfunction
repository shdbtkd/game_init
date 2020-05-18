scoreboard players remove @s kill 1

execute if predicate pred:10 run loot spawn ~ ~1 ~ loot playerheadtricks:emerald
summon minecraft:experience_orb ~ ~ ~ {Value:1}

# execute at @e[type=minecraft:experience_orb] as @a[tag=mend,distance=..0] if score @s[gamemode=adventure] HP < @s max-hp run effect give @s minecraft:regeneration 1 2
# execute as @a[tag=mend] if score @s[gamemode=adventure] HP < @s max-hp at @s as @e[type=minecraft:experience_orb,distance=..0] run kill @s