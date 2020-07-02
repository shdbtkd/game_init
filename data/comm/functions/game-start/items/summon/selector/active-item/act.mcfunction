
#summon minecraft:item 7 70 -821 {Tags:["active_item","delay"], Item:{id:"minecraft:diamond",Count:1b}}
#summon minecraft:item ~ ~1 ~ {Tags:["active_item","delay"], Item:{id:"minecraft:diamond",Count:1b}}
execute as @e[tag=active_item,tag=!end-active_item,limit=1,sort=random] at @s run function comm:game-start/items/summon/selector/active-item/set
execute if entity @e[tag=active_item,tag=!end-active_item] run function comm:game-start/items/summon/selector/active-result/act