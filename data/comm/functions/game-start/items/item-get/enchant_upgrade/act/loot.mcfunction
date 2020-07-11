function comm:game-start/items/item-get/enchant_upgrade/act/generic

execute store result score @s looting run data get entity @s Inventory[{ tag: { enchant-select_trigger: 1b } }].tag.StoredEnchantments[].lvl