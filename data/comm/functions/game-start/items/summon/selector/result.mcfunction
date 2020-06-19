
summon minecraft:item ~ ~1 ~ {Tags:["item_unset","item","delay"], Item:{id:"minecraft:diamond",Count:1b}}
data modify entity @e[tag=item_unset,limit=1,sort=nearest] Item set from entity @e[tag=!item-selector_loaded,tag=item-selector_loading,limit=1] ArmorItems[3]
tag @e[tag=!item-selector_loaded,tag=item-selector_loading,limit=1] add item-selector_loaded
tag @e[tag=item_unset,limit=1,sort=nearest] remove item_unset