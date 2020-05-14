scoreboard players add @s spawner-hurt 1
scoreboard players set @s[scores={hurt=1..}] spawner-hurt 0

execute if score @s spawner-hurt matches 40.. run function comm:game-start/mob/upgrade/spawner/spin-spawner
execute if score @s spawner-hurt matches 200.. run function comm:game-start/mob/upgrade/spawner/now-spawn

# scoreboard objectives add spawner-hurt dummy
# scoreboard objectives add spawner-motion0 dummy
# scoreboard objectives add spawner-motion1 dummy
# scoreboard objectives add spawner-motion2 dummy
# summon zombie ~ ~1 ~ {Team:"red",Tags:["spawner"],ArmorItems:[{},{},{},{id:"minecraft:spawner",Count:1b,tag:{storage:[{}]}}],Attributes:[{Name:generic.followRange,Base:-9999}]}