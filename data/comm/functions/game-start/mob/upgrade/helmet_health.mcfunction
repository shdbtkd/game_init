tag @s add health_undefined
execute store result score @s upgede_health run attribute @s minecraft:generic.max_health get
scoreboard players operation @s upgede_health += helmet_health_addition upgede_health
data modify entity @s ArmorItems.[3] set value {id:"minecraft:iron_helmet",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:1,Operation:0,UUID:[I;2022671392,-610252885,-1230595114,-1358816166],Slot:"head"}]}}
execute store result entity @s ArmorItems.[3].tag.AttributeModifiers[{ AttributeName: "generic.max_health" }].Amount int 1 run scoreboard players get helmet_health_addition upgede_health
# tellraw @p {"score":{"name":"@s","objective":"upgede_health"}}
# execute store result entity @s Health float 1 run scoreboard players get @s upgede_health

# 
# 
# 
# # summon minecraft:zombie ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:1,Operation:0,UUID:[I;2022671392,-610252885,-1230595114,-1358816166],Slot:"head"}]}}]}
# 
# {id:"minecraft:iron_helmet",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:1,Operation:0,UUID:[I;2022671392,-610252885,-1230595114,-1358816166],Slot:"head"}]}}