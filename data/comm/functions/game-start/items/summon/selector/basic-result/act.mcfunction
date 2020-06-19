#execute as @e[tag=item-selector,tag=basic-item_selector,tag=!item-selector_loaded,tag=!item-selector_loading,limit=1,sort=random] run function comm:game-start/items/summon/selector/generic-load
execute as @e[tag=item-selector,tag=basic-item_selector,tag=!item-selector_loaded,tag=!item-selector_loading,limit=1,sort=random] run tag @s add item-selector_loading
execute as @e[tag=item-random,limit=1,sort=random] at @s run function comm:game-start/items/summon/selector/basic-result/items
execute if entity @e[tag=item-random] run function comm:game-start/items/summon/selector/basic-result/act