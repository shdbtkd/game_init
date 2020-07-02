#data remove entity @e[distance=..0,limit=1,sort=nearest] Thrower
data modify entity @e[distance=..0,limit=1,sort=nearest] Item.tag.inventory set value 0b
scoreboard players set @s pickup-potion 0
execute as @s at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 21 ~ container.2 air