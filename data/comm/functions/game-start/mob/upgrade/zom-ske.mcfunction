tag @s add end-upgrade

execute as @s[tag=!spawner,tag=!slime] if predicate pred:30 if score @p stage matches 2.. run function comm:game-start/mob/upgrade/helmet_health
execute as @s if predicate pred:30 if score @p stage matches 2.. run data modify entity @s ArmorItems.[1] set value {id:"minecraft:iron_leggings",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.05,Operation:0,UUID:[I;2036277742,80429961,-1192161421,-1922418239],Slot:"legs"}]}}
execute as @s if predicate pred:30 if score @p stage matches 2.. run data modify entity @s HandItems.[1] set value {id:"minecraft:totem_of_undying",Count:1b}

execute as @s if predicate pred:30 run data modify entity @s ArmorItems.[2] set value {id:"minecraft:iron_chestplate",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:10,Operation:0,UUID:[I;242421597,-472038928,-1230708819,-1910335300],Slot:"chest"}]}}
execute as @s if predicate pred:30 run data modify entity @s ArmorItems.[0] set value {id:"minecraft:iron_boots",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.05,Operation:0,UUID:[I;-222097021,2123713165,-1541286833,1255002062]}]}}

execute as @s if entity @s[type=zombie] if predicate pred:30 run data modify entity @s HandItems.[0] set value {id:"minecraft:iron_sword",Count:1b}