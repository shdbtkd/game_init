#-------- arrow --------#
execute if data entity @s Item.tag{arrow__1:1b} at @s run function comm:game-start/items/item-get/arrow/arrow1
execute if data entity @s Item.tag{arrow__2:1b} at @s run function comm:game-start/items/item-get/arrow/arrow2
execute if data entity @s Item.tag{arrow__3:1b} at @s run function comm:game-start/items/item-get/arrow/arrow3
execute if data entity @s Item.tag{arrow__4:1b} at @s run function comm:game-start/items/item-get/arrow/arrow4
execute if data entity @s Item.tag{arrow__5:1b} at @s run function comm:game-start/items/item-get/arrow/arrow5
execute if data entity @s Item.tag{arrow__6:1b} at @s run function comm:game-start/items/item-get/arrow/arrow6
#-------- arrow --------#

#-------- food --------#
execute if data entity @s Item.tag{bread:1b} at @s run function comm:game-start/items/item-get/food/bread
execute if data entity @s Item.tag{apple:1b} at @s run function comm:game-start/items/item-get/food/apple
execute if data entity @s Item.tag{pumpkin_pie:1b} at @s run function comm:game-start/items/item-get/food/pumpkin
execute if data entity @s Item.tag{cake:1b} at @s run function comm:game-start/items/item-get/food/cake
#-------- food --------#

#-------- generic --------#
execute if data entity @s Item.tag{ender_eye:1b} at @s run function comm:game-start/items/item-get/generic/ender-eye
execute if data entity @s Item.tag{brick:1b} at @s run function comm:game-start/items/item-get/generic/brick
execute if data entity @s Item.tag{nether_brick:1b} at @s run function comm:game-start/items/item-get/generic/nether-brick
execute if data entity @s Item.tag{flint:1b} at @s run function comm:game-start/items/item-get/generic/flint
execute if data entity @s Item.tag{bucket:1b} at @s run function comm:game-start/items/item-get/generic/bucket
execute if data entity @s Item.tag{redstone:1b} at @s run function comm:game-start/items/item-get/generic/redstone
execute if data entity @s Item.tag{feather:1b} at @s run function comm:game-start/items/item-get/generic/feather
#-------- generic --------#

#-------- pet --------#
execute if data entity @s Item.tag{bone:1b} at @s run function comm:game-start/items/item-get/pet/bone
#-------- pet --------#

#-------- enchant --------#
execute if data entity @s Item.tag{looting:1b} at @s run function comm:game-start/items/item-get/enchant/loot
execute if data entity @s Item.tag{protection:1b} at @s run function comm:game-start/items/item-get/enchant/protection
#-------- enchant --------#

data merge entity @s {PickupDelay:0,Age:-32768}
execute as @p at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run summon minecraft:item ~-1 13 ~ {Tags:["merge-item"],Item:{id:"minecraft:acacia_button",Count:1b}}
data modify entity @e[tag=merge-item,limit=1] Item set from entity @s Item
execute as @p run function comm:game-start/skill/lootself


#---------- head index ----------#
# 양동이, 뼈, 침대
# 가시
# 초월 ??
#
#
#
#
#
#
# 엑티브
# 베너, 앤더 드래곤
#---------- head index ----------#