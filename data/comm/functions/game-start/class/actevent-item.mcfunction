tag @s add active-event

execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s run summon minecraft:armor_stand ~2 71 ~5 {Tags:["item-random"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s run summon minecraft:armor_stand ~-3 71 ~5 {Tags:["item-random"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}

execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s run summon minecraft:armor_stand ~5 71 ~2 {Tags:["item-random"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s run summon minecraft:armor_stand ~-6 71 ~2 {Tags:["item-random"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}

execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s run summon minecraft:armor_stand ~5 71 ~-3 {Tags:["item-random"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s run summon minecraft:armor_stand ~-6 71 ~-3 {Tags:["item-random"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}

execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s run summon minecraft:armor_stand ~2 71 ~-6 {Tags:["item-random"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s run summon minecraft:armor_stand ~-3 71 ~-6 {Tags:["item-random"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}

execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 1 run kill @e[limit=6,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 1 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]

execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 2 run kill @e[limit=4,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 2 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 2 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 2 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]

execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 3 run kill @e[limit=3,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 3 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 3 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 3 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 3 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]

execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 4 run kill @e[limit=2,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 4 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 4 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 4 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 4 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 4 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]

execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 5 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 5 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 5 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 5 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 5 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 5 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 5 if predicate pred:75 run kill @e[limit=1,sort=random,tag=item-random]

execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 6 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 6 if predicate pred:loot run kill @e[limit=1,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 6 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 6 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 6 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 6 if predicate pred:50 run kill @e[limit=1,sort=random,tag=item-random]
execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s if score player stage matches 6 if predicate pred:75 run kill @e[limit=1,sort=random,tag=item-random]

execute as @e[tag=active-event,tag=chest-event,tag=!end-active-event] at @s run tag @s add end-active-event

execute as @e[tag=item-random] run scoreboard players add @s item-random 0


