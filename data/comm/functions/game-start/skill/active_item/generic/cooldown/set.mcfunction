scoreboard players set generic_max_cooldown active_wait-max 238000

execute store result score @s active_wait-max run data get entity @s Inventory[{ Slot: 6b, tag: { activeitem: 1b } }].tag.cooldown
execute store result score @s active_wait-save run scoreboard players operation generic_max_cooldown active_wait-max /= @s active_wait-max
scoreboard players set @s active_wait-tick 0

scoreboard players set generic_max_cooldown active_wait-max 238000