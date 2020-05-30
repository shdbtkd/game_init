summon minecraft:armor_stand ~2 71 ~5 {Tags:["item-random"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
summon minecraft:armor_stand ~-3 71 ~5 {Tags:["item-random"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
summon minecraft:armor_stand ~5 71 ~2 {Tags:["item-random"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
summon minecraft:armor_stand ~-6 71 ~2 {Tags:["item-random"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
summon minecraft:armor_stand ~5 71 ~-3 {Tags:["item-random"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
summon minecraft:armor_stand ~-6 71 ~-3 {Tags:["item-random"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
summon minecraft:armor_stand ~2 71 ~-6 {Tags:["item-random"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
summon minecraft:armor_stand ~-3 71 ~-6 {Tags:["item-random"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}

execute if score player stage matches 1 as @e[tag=item-random,limit=7,sort=random] if predicate pred:80 run kill @s
execute if score player stage matches 2 as @e[tag=item-random,limit=7,sort=random] if predicate pred:50 run kill @s
execute if score player stage matches 3 as @e[tag=item-random,limit=7,sort=random] if predicate pred:30 run kill @s
execute if score player stage matches 4 as @e[tag=item-random,limit=7,sort=random] if predicate pred:20 run kill @s
execute if score player stage matches 5 as @e[tag=item-random,limit=7,sort=random] if predicate pred:10 run kill @s
execute if score player stage matches 6 as @e[tag=item-random,limit=7,sort=random] if predicate pred:10 run kill @s

execute as @e[tag=item-random] run scoreboard players add @s item-random 0
execute as @e[tag=item-random,scores={item-random=..0},limit=1] at @s run function comm:game-start/class/summon-item