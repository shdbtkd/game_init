execute unless score @s price <= @p emerald run tellraw @p ["",{"text":"에메랄드가 부족합니다. (필요한 에메랄드 ","color":"white"}, {"nbt":"Item.tag.CustomModelData","entity":"@s","color":"white"}, {"text":"개)","color":"white"}]
data modify entity @s ItemRotation set value 0b

execute if entity @s[tag=price_box] if score @s price <= @p emerald run function comm:game-start/mob/price/fillter/box
execute if entity @s[tag=price_shop] if score @s price <= @p emerald run function comm:game-start/mob/price/fillter/shop