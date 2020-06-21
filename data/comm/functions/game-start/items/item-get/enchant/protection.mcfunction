scoreboard players set @p protection 1

execute if data entity @s Item.tag.Enchantments[{id:"minecraft:binding_curse",lvl:1s}] run scoreboard players set binding protection 1
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:vanishing_curse",lvl:1s}] run scoreboard players set vanish protection 1

kill @e[tag=item-selector,tag=protection]