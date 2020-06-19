scoreboard players set @p bucket 1
scoreboard players add @p armor-P 1

execute if data entity @s Item.tag.Enchantments[{id:"minecraft:binding_curse",lvl:1s}] run scoreboard players set binding bucket 1
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:vanishing_curse",lvl:1s}] run scoreboard players set vanish bucket 1

kill @e[tag=item-selector,tag=bucket]