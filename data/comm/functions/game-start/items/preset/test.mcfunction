scoreboard players add @e[type=minecraft:item] item-delay 0

execute as @e[type=minecraft:item,nbt={Item: {id:"minecraft:pumpkin"}}] at @s if predicate pred:10 run loot spawn ~ ~1 ~ loot playerheadtricks:emerald

execute as @e[type=minecraft:item,scores={item-delay=0},nbt={Item: {id:"minecraft:totem_of_undying"}}] run tag @s add delay
execute as @e[type=minecraft:item,scores={item-delay=0},nbt={Item: {id:"minecraft:potion"}}] run tag @s add delay
execute as @e[type=minecraft:item,scores={item-delay=0},nbt={Item: {id:"minecraft:emerald"}}] run tag @s add delay
execute as @e[type=minecraft:item,scores={item-delay=0},nbt={Item: {id:"minecraft:tnt"}}] run tag @s add delay

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier"}}] run kill @s
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:wheat_seeds"}}] run kill @s
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:pumpkin"}}] run kill @s
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:string"}}] run kill @s
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_button"}}] run kill @s
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:polished_andesite"}}] run kill @s

execute as @e[limit=1000,type=minecraft:item,tag=!delay,tag=!select,scores={item-delay=0}] run data merge entity @s {PickupDelay:0}
execute as @e[limit=1000,type=minecraft:item,tag=!delay,tag=!select] at @s run tp @s @p[distance=..3,sort=nearest,gamemode=!spectator]

execute as @e[type=minecraft:item,tag=select] run data merge entity @s {PickupDelay:-1,Age:-32768}

scoreboard players add @e[type=minecraft:item,scores={item-delay=0}] item-delay 1