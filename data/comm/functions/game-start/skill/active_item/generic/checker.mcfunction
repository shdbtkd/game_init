scoreboard players reset @s item_drop
execute as @e[type=item] if data entity @s Item.tag{ basic_weapon: 1b } run function comm:game-start/skill/active_item/generic/finder
execute as @e[type=item] if data entity @s Item.tag{ activeitem: 1b } run function comm:game-start/skill/active_item/generic/drop