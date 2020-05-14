
execute as @a[tag=nd1] anchored eyes at @s run summon area_effect_cloud ^ ^ ^1 {Duration:-1,WaitTime:-2147483648,Tags:["c-nd1"],Age:-2147483648}
execute as @a[tag=nd1] anchored eyes at @s run particle minecraft:explosion ^ ^ ^2 0.5 0.5 0.5 0 5
execute as @a[tag=nd1] anchored eyes at @s run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 3 0
execute as @a[tag=nd1] anchored eyes at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.2 0
execute as @a[tag=nd1] anchored eyes at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 4 0
execute store result score @s nd1sneak-motion0 run data get entity @s Pos[0]
execute store result score @s nd1sneak-motion1 run data get entity @s Pos[1]
execute store result score @s nd1sneak-motion2 run data get entity @s Pos[2]
execute at @e[tag=c-nd1] as @e[team=red,distance=..3] store result score @s nd1sneak-motion0 run data get entity @s Pos[0]
#execute at @e[tag=c-nd1] as @e[team=red,distance=..3] store result score @s nd1sneak-motion1 run data get entity @s Pos[1]
execute at @e[tag=c-nd1] as @e[team=red,distance=..3] store result score @s nd1sneak-motion2 run data get entity @s Pos[2]
execute at @e[tag=c-nd1] as @e[team=red,distance=..3] run scoreboard players operation @s nd1sneak-motion0 -= @a[tag=nd1] nd1sneak-motion0
#execute at @e[tag=c-nd1] as @e[team=red,distance=..3] run scoreboard players operation @s nd1sneak-motion1 -= @a[tag=nd1] nd1sneak-motion1
execute at @e[tag=c-nd1] as @e[team=red,distance=..3] run scoreboard players operation @s nd1sneak-motion2 -= @a[tag=nd1] nd1sneak-motion2
execute at @e[tag=c-nd1] as @e[team=red,distance=..3] store result entity @s Motion[0] double 0.7 run scoreboard players get @s nd1sneak-motion0
#execute at @e[tag=c-nd1] as @e[team=red,distance=..3] store result entity @s Motion[1] double 0.7 run scoreboard players get @s nd1sneak-motion1
execute at @e[tag=c-nd1] as @e[team=red,distance=..3] run data modify entity @s Motion[1] set value 0.5d
execute at @e[tag=c-nd1] as @e[team=red,distance=..3] store result entity @s Motion[2] double 0.7 run scoreboard players get @s nd1sneak-motion2
execute at @e[tag=c-nd1] as @e[team=red,distance=..3] run scoreboard players reset @s nd1sneak-motion0
#execute at @e[tag=c-nd1] as @e[team=red,distance=..3] run scoreboard players reset @s nd1sneak-motion1
execute at @e[tag=c-nd1] as @e[team=red,distance=..3] run scoreboard players reset @s nd1sneak-motion2
execute at @e[tag=c-nd1] as @e[team=red,distance=..3,tag=A] run effect give @s minecraft:instant_damage
execute at @e[tag=c-nd1] as @e[team=red,distance=..3,tag=U] run effect give @s minecraft:instant_health
#execute as @a[tag=nd1] anchored eyes at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 3 0
kill @e[tag=c-nd1]
xp add @s -1 levels