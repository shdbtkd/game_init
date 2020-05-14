
execute if score @s mirror-crit matches 1 run data modify entity @s crit set value 1b
data modify entity @s shake set value 0b

execute store result entity @s Motion[0] double 0.005 run scoreboard players get @s mirror-motion0
execute store result entity @s Motion[1] double 0.005 run scoreboard players get @s mirror-motion1
execute store result entity @s Motion[2] double 0.005 run scoreboard players get @s mirror-motion2

execute store result entity @s Motion[1] double -0.005 run scoreboard players get @s mirror-motion1

#execute as @s at @s run function comm:game-start/skill/itemskill/arrow/mirror/getmotion