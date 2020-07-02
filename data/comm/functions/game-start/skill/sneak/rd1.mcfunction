
#scoreboard players operation @s attack-damage += rdsneak-damage attack-damage
execute store result entity @s damage double 1.5 run data get entity @s damage 1.5
xp add @a[tag=rd1] -1 levels