execute as @e[tag=item-selector,tag=active-item_selector,tag=!item-selector_loaded,tag=!item-selector_loading,limit=1,sort=random] run say 1
execute as @e[tag=item-selector,tag=active-item_selector,tag=!item-selector_loaded,tag=!item-selector_loading,limit=1,sort=random] run tag @s add item-selector_loading

data modify entity @e[tag=active_item,tag=!end-active_item,limit=1,sort=nearest] Item set from entity @e[tag=active-item_selector,tag=item-selector_loading,tag=!item-selector_loaded,limit=1] ArmorItems[3]
tag @e[tag=active_item,tag=!end-active_item,limit=1] add end-active_item
execute store result score @s active_item-id run data get entity @s Item.tag.active_item-id
tag @e[tag=active-item_selector,tag=item-selector_loading,tag=!item-selector_loaded,limit=1] remove item-selector_loaded