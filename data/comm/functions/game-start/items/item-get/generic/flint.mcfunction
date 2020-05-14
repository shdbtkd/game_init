scoreboard players set @p flint 1
scoreboard players add @p attack-damage 10

execute if data entity @s Item.tag.Enchantments[{id:"minecraft:binding_curse",lvl:1s}] run scoreboard players set binding flint 1
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:vanishing_curse",lvl:1s}] run scoreboard players set vanish flint 1