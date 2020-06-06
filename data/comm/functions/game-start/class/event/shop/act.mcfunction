summon minecraft:armor_stand ~2 71.5 ~5 {Tags:["shop-pos","unset-shop"], Invisible:1b, Invulnerable:1b, Small:1b, NoGravity:1b, Passengers:[{id: "minecraft:item", Tags:["shop-item"], Item: { id: "minecraft:stone", Count:1b } }]}
summon minecraft:armor_stand ~-3 71.5 ~5 {Tags:["shop-pos","unset-shop"], Invisible:1b, Invulnerable:1b, Small:1b, NoGravity:1b, Passengers:[{id: "minecraft:item", Tags:["shop-item"], Item: { id: "minecraft:stone", Count:1b } }]}
summon minecraft:armor_stand ~5 71.5 ~2 {Tags:["shop-pos","unset-shop"], Invisible:1b, Invulnerable:1b, Small:1b, NoGravity:1b, Passengers:[{id: "minecraft:item", Tags:["shop-item"], Item: { id: "minecraft:stone", Count:1b } }]}
summon minecraft:armor_stand ~-6 71.5 ~2 {Tags:["shop-pos","unset-shop"], Invisible:1b, Invulnerable:1b, Small:1b, NoGravity:1b, Passengers:[{id: "minecraft:item", Tags:["shop-item"], Item: { id: "minecraft:stone", Count:1b } }]}
summon minecraft:armor_stand ~5 71.5 ~-3 {Tags:["shop-pos","unset-shop"], Invisible:1b, Invulnerable:1b, Small:1b, NoGravity:1b, Passengers:[{id: "minecraft:item", Tags:["shop-item"], Item: { id: "minecraft:stone", Count:1b } }]}
summon minecraft:armor_stand ~-6 71.5 ~-3 {Tags:["shop-pos","unset-shop"], Invisible:1b, Invulnerable:1b, Small:1b, NoGravity:1b, Passengers:[{id: "minecraft:item", Tags:["shop-item"], Item: { id: "minecraft:stone", Count:1b } }]}
summon minecraft:armor_stand ~2 71.5 ~-6 {Tags:["shop-pos","unset-shop"], Invisible:1b, Invulnerable:1b, Small:1b, NoGravity:1b, Passengers:[{id: "minecraft:item", Tags:["shop-item"], Item: { id: "minecraft:stone", Count:1b } }]}
summon minecraft:armor_stand ~-3 71.5 ~-6 {Tags:["shop-pos","unset-shop"], Invisible:1b, Invulnerable:1b, Small:1b, NoGravity:1b, Passengers:[{id: "minecraft:item", Tags:["shop-item"], Item: { id: "minecraft:stone", Count:1b } }]}

execute at @p as @e[tag=unset-shop,limit=2,sort=furthest] run function comm:game-start/class/event/shop/kill
execute at @p as @e[tag=unset-shop,limit=3,sort=furthest] run tag @s add expensive
execute at @p as @e[tag=unset-shop,limit=2,sort=furthest] if predicate pred:50 run function comm:game-start/class/event/shop/kill

execute as @e[tag=unset-shop] at @s run function comm:game-start/class/event/shop/set
