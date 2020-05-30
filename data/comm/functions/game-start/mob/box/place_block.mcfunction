
#execute if entity @s[tag=lock] run summon minecraft:item_frame ~ ~ ~ {Tags:["lock-control","price"], Facing: 1b}
execute if block ~1 ~ ~ #minecraft:air_block run function comm:game-start/mob/box/plus_x
execute if block ~-1 ~ ~ #minecraft:air_block run function comm:game-start/mob/box/minus_x
execute if block ~ ~ ~1 #minecraft:air_block run function comm:game-start/mob/box/plus_z
execute if block ~ ~ ~-1 #minecraft:air_block run function comm:game-start/mob/box/minus_z
execute if entity @s[tag=lock] run data modify block ~ ~ ~ {} merge value {Lock: "상자"}
execute if entity @s[tag=lock] if score @s box-facing matches 2 run summon minecraft:item_frame ~ ~ ~ {Tags:["lock-control","price","price_emerald","price_box"], Facing:2b, Invisible:1b, Fixed:1b, Item:{ id: "minecraft:emerald", Count: 1b, tag:{ CustomModelData:4 }}}
execute if entity @s[tag=lock] if score @s box-facing matches 3 run summon minecraft:item_frame ~ ~ ~ {Tags:["lock-control","price","price_emerald","price_box"], Facing:3b, Invisible:1b, Fixed:1b, Item:{ id: "minecraft:emerald", Count: 1b, tag:{ CustomModelData:4 }}}
execute if entity @s[tag=lock] if score @s box-facing matches 4 run summon minecraft:item_frame ~ ~ ~ {Tags:["lock-control","price","price_emerald","price_box"], Facing:4b, Invisible:1b, Fixed:1b, Item:{ id: "minecraft:emerald", Count: 1b, tag:{ CustomModelData:4 }}}
execute if entity @s[tag=lock] if score @s box-facing matches 5 run summon minecraft:item_frame ~ ~ ~ {Tags:["lock-control","price","price_emerald","price_box"], Facing:5b, Invisible:1b, Fixed:1b, Item:{ id: "minecraft:emerald", Count: 1b, tag:{ CustomModelData:4 }}}

execute if entity @s[tag=lock] as @e[tag=lock-control,limit=1,sort=nearest] run function comm:game-start/mob/price/set