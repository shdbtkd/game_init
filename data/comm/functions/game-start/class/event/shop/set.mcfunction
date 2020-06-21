
execute if entity @s[tag=!expensive] run summon minecraft:item_frame ~ ~ ~ {Tags:["price","price_emerald","price_shop","owner-frame"], Facing:1b, Invisible:0b, Fixed:1b, Item:{ id: "minecraft:emerald", Count: 1b, tag:{ CustomModelData:2 }}}
execute if entity @s[tag=expensive] run summon minecraft:item_frame ~ ~ ~ {Tags:["price","price_emerald","price_shop","owner-frame"], Facing:1b, Invisible:0b, Fixed:1b, Item:{ id: "minecraft:emerald", Count: 1b, tag:{ CustomModelData:6 }}}

tag @s remove unset-shop
setblock ~ 71 ~ minecraft:smooth_stone_slab
setblock ~ 72 ~ minecraft:glass

summon minecraft:item_frame ~ ~ ~-1 {Tags:["price","price_emerald","price_shop","child-frame"], Facing:2b, Invisible:1b, Invulnerable:1b, Fixed:0b }
summon minecraft:item_frame ~ ~ ~1 {Tags:["price","price_emerald","price_shop","child-frame"], Facing:3b, Invisible:1b, Invulnerable:1b, Fixed:0b }
summon minecraft:item_frame ~-1 ~ ~ {Tags:["price","price_emerald","price_shop","child-frame"], Facing:4b, Invisible:1b, Invulnerable:1b, Fixed:0b }
summon minecraft:item_frame ~1 ~ ~ {Tags:["price","price_emerald","price_shop","child-frame"], Facing:5b, Invisible:1b, Invulnerable:1b, Fixed:0b }

execute if entity @s[tag=!expensive] run function comm:game-start/class/event/shop/item
execute if entity @s[tag=expensive] run function comm:game-start/class/event/shop/expensive

execute at @s as @e[tag=price_shop,tag=owner-frame,limit=1,sort=nearest] run function comm:game-start/mob/price/set
execute at @s as @e[tag=price_shop,tag=owner-frame,limit=1,sort=nearest] at @s as @e[tag=child-frame,distance=..1] run data modify entity @s Item set from entity @e[distance=..0,limit=1] Item
execute at @s as @e[tag=price_shop,tag=owner-frame,limit=1,sort=nearest] at @s as @e[tag=child-frame,distance=..1] run scoreboard players operation @s price = @e[distance=..0,limit=1] price