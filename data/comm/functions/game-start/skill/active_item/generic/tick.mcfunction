
execute if score @s active_wait-max matches 1.. run function comm:game-start/skill/active_item/generic/cooldown/tick

execute if data entity @s Inventory[{ Slot: 6b, tag: { activeitem: 1b } }] if score shot_possible firework_rocket matches 1.. run function comm:game-start/skill/active_item/firework_rocket/shot

# scoreboard players set generic_max_cooldown active_wait-max 238000
# scoreboard players set _Rono active_wait-max 20

#   max
#   238000
#
#   cooldown max, tick
#   20
#
#   max / cooldown = store
#   11900
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#