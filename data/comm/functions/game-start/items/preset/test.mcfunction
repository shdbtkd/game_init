execute as @e[type=minecraft:item] unless score @s item-delay matches 0.. run data modify entity @s Age set value -32768
execute as @e[type=minecraft:item] unless score @s item-delay matches 0.. run data modify entity @s Health set value 32768
execute as @e[type=minecraft:item] unless score @s item-delay matches 0.. run data modify entity @s Invulnerable set value 1b

scoreboard players add @e[type=minecraft:item] item-delay 0

execute as @e[type=minecraft:item,scores={item-delay=0},nbt={Item: {id:"minecraft:totem_of_undying"}}] run tag @s add delay
execute as @e[type=minecraft:item,scores={item-delay=0},nbt={Item: {id:"minecraft:potion"}}] run tag @s add delay
execute as @e[type=minecraft:item,scores={item-delay=0},nbt={Item: {id:"minecraft:emerald"}}] run tag @s add delay
execute as @e[type=minecraft:item,scores={item-delay=0},nbt={Item: {id:"minecraft:tnt"}}] run tag @s add delay

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier"}}] run kill @s
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:string"}}] run kill @s
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_button"}}] run kill @s

execute as @e[limit=1000,type=minecraft:item,tag=!delay,tag=!select,scores={item-delay=0},nbt=!{Item: {tag: { item: 1b } }}] run data merge entity @s {PickupDelay:0}
execute as @e[limit=1000,type=minecraft:item,tag=!delay,tag=!select,nbt=!{Item: {tag: { item: 1b } }}] at @s run tp @s @p[distance=..3,sort=nearest,gamemode=!spectator]
# execute as @e[limit=1000,type=minecraft:item,tag=!delay,tag=!select,nbt=!{Item: {tag: { game-item: 1b } }}] at @s run tp @s @p[distance=..3,sort=nearest,gamemode=!spectator]

execute as @e[type=minecraft:item,tag=select] run data merge entity @s {PickupDelay:-1,Age:-32768}

scoreboard players add @e[type=minecraft:item,scores={item-delay=0}] item-delay 1