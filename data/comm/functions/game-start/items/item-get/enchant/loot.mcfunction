scoreboard players set @p looting 1

execute if data entity @s Item.tag.Enchantments[{id:"minecraft:binding_curse",lvl:1s}] run scoreboard players set binding looting 1
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:vanishing_curse",lvl:1s}] run scoreboard players set vanish looting 1
say 1
kill @e[tag=item-selector,tag=looting]