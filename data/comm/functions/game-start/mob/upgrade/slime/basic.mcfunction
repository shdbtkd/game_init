# scoreboard objectives add slime_id-S dummy 
# scoreboard objectives add slime_id-I dummy
# scoreboard players set now-id slime_id-S 0
# summon minecraft:zombie ~ ~ ~ {Team:"red",Tags:["slime"],Passengers:[{id:"minecraft:item",Tags:["select","delay","slime-storage"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{storage:[{}]}}}],ArmorItems:[{},{},{},{id:"minecraft:slime_block",Count:1b}]}
# summon minecraft:zombie ~ ~ ~ {Team:"red",Tags:["slime","upgrade"],Passengers:[{id:"minecraft:item",Tags:["select","delay","slime-storage"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{storage:[{}]}}}],ArmorItems:[{},{},{},{id:"minecraft:slime_block",Count:1b}]}

execute at @s unless score @s[tag=!upgrade] slime_id-S matches 0.. run function comm:game-start/mob/upgrade/slime/setslime
execute at @s unless score @s[tag=upgrade,tag=end-upgrade] slime_id-S matches 0.. run function comm:game-start/mob/upgrade/slime/setslime


