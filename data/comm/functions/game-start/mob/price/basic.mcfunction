execute if data entity @s Item unless data entity @s { ItemRotation: 0b } run say 1
execute if data entity @s Item unless data entity @s { ItemRotation: 0b } run function comm:game-start/mob/price/act
#execute if entity @s[tag=price_shop] run function comm:game-start/class/event/shop/show