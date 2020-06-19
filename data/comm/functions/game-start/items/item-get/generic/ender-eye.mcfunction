scoreboard players set @p ender_eye 1

execute if data entity @s Item.tag.Enchantments[{id:"minecraft:binding_curse",lvl:1s}] run scoreboard players set binding ender_eye 1
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:vanishing_curse",lvl:1s}] run scoreboard players set vanish ender_eye 1

kill @e[tag=item-selector,tag=ender_eye]