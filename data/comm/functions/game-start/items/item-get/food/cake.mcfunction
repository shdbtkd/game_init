scoreboard players set @p cake 1
scoreboard players add @p max-hp 4

execute if data entity @s Item.tag.Enchantments[{id:"minecraft:binding_curse",lvl:1s}] run scoreboard players set binding cake 1
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:vanishing_curse",lvl:1s}] run scoreboard players set vanish cake 1
