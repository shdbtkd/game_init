scoreboard players set @p nether_brick 1
scoreboard players add @p attack-damage 10

execute if data entity @s Item.tag.Enchantments[{id:"minecraft:binding_curse",lvl:1s}] run scoreboard players set binding nether_brick 1
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:vanishing_curse",lvl:1s}] run scoreboard players set vanish nether_brick 1

kill @e[tag=item-selector,tag=nether_brick]