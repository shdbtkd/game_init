tag @s add active_item
tag @s add end-active_item
execute as @p at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 21 ~ container.5 air
data modify entity @s Item.tag.inventory set value 0b
scoreboard players set @p active_pickup 0