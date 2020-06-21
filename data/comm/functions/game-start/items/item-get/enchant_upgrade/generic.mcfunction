execute store result score @s enchant_up-lvl run data get entity @s Inventory[{ tag: { enchant-select_trigger: 1b } }].tag.StoredEnchantments[0].lvl
execute store result score @s enchant_up-cost run data get entity @s Inventory[{ tag: { enchant-select_trigger: 1b } }].tag.CustomModelData

scoreboard players operation @s level_result = @s player_level
scoreboard players operation @s level_result -= @s enchant_up-cost

execute unless score @s level_result matches 0.. run function comm:game-start/items/item-get/enchant_upgrade/faill_event