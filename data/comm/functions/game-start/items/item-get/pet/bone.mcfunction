
scoreboard players set @p bone 1
scoreboard players add @p max-ammo 1

execute if data entity @s Item.tag.Enchantments[{id:"minecraft:binding_curse",lvl:1s}] run scoreboard players set binding bone 1
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:vanishing_curse",lvl:1s}] run scoreboard players set vanish bone 1

summon minecraft:wolf ~ ~ ~ {Tags:["getuuid"],Team:"blue",Invulnerable:1b}
execute as @e[tag=getuuid,limit=1,sort=nearest] run function comm:game-start/items/item-get/pet/mergeuuid

kill @e[tag=item-selector,tag=bone]