execute store result score @s table-lvl run data get entity @s Items[{ Slot: 10b }].tag.StoredEnchantments[].lvl
execute store result score @s table-max run data get entity @s Items[{ Slot: 10b }].tag.basic-max_level
execute store result score @s table-inventory if data entity @s Items[{ id: "minecraft:enchanted_book" }]
scoreboard players remove @s table-inventory 1