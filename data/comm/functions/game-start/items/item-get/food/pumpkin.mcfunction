scoreboard players set @p pumpkin_pie 1
scoreboard players add @p max-hp 2

execute if data entity @s Item.tag.Enchantments[{id:"minecraft:binding_curse",lvl:1s}] run scoreboard players set binding pumpkin_pie 1
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:vanishing_curse",lvl:1s}] run scoreboard players set vanish pumpkin_pie 1

kill @e[tag=item-selector,tag=pumpkin_pie]