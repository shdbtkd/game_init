execute as @a at @s at @e[tag=close,limit=1,sort=nearest] run playsound minecraft:block.chest.locked block @s ~ ~ ~ 2 0
execute as @a at @s at @e[tag=close,limit=1,sort=nearest] run playsound minecraft:entity.player.attack.knockback block @a ~ ~ ~ 5 0
execute as @a at @s run playsound minecraft:block.chest.locked block @s ~ ~ ~ 2 0 1