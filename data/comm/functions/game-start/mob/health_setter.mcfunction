tag @s remove health_undefined
execute if entity @s[type=#minecraft:undead] run effect give @s minecraft:instant_damage 1 100
execute if entity @s[type=#minecraft:creature] run effect give @s minecraft:instant_health 1 100