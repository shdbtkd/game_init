execute store result score @s table-lvl run data get entity @s Items[{ Slot: 10b }].tag.StoredEnchantments[0].lvl
execute store result score @s table-max run data get entity @s Items[{ Slot: 10b }].tag.basic-max_level
execute store result score @s table-lvl_upper run scoreboard players operation @s table-max -= @s table-lvl
scoreboard players operation @s table-show_lvl = @s table-lvl