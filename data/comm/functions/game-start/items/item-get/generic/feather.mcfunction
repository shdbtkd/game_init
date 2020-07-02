
scoreboard players set @p feather 1
scoreboard players add @p movement-speed 2

execute if data entity @s Item.tag.Enchantments[{id:"minecraft:binding_curse",lvl:1s}] run scoreboard players set binding feather 1
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:vanishing_curse",lvl:1s}] run scoreboard players set vanish feather 1

#execute as @e[tag=item-selector,tag=feather] run say 1
kill @e[tag=item-selector,tag=feather]