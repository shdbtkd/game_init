
#scoreboard players operation @s attack-damage += rdsneak-damage attack-damage
execute store result entity @s damage double 0.15 run scoreboard players get @s attack-damage
xp add @s -1 levels