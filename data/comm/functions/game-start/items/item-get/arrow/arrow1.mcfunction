scoreboard players set @p arrow__1 1
scoreboard players add @p max-ammo 1

execute if data entity @s Item.tag.Enchantments[{id:"minecraft:binding_curse",lvl:1s}] run scoreboard players set binding arrow__1 1
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:vanishing_curse",lvl:1s}] run scoreboard players set vanish arrow__1 1

kill @e[tag=item-selector,tag=arrow__1]