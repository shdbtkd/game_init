scoreboard players add @s level_result 1
xp add @s -1 levels
#say remove
execute if score @s level_result < @s enchant_up-cost run function comm:game-start/items/item-get/enchant_upgrade/act/level_setter