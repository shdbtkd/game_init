
execute as @e[type=minecraft:arrow] if score @a[tag=rd2,limit=1] player-UUID_0 = @s owner-UUID_0 if score @a[tag=rd2,limit=1] player-UUID_1 = @s owner-UUID_1 if score @a[tag=rd2,limit=1] player-UUID_2 = @s owner-UUID_2 if score @a[tag=rd2,limit=1] player-UUID_3 = @s owner-UUID_3 run tag @s add rd2arrow
execute at @s as @e[tag=rd2arrow,tag=!end-arrow] run function comm:game-start/skill/damage/arrow
execute if score @s mine-c matches ..0 if score @s mine-p matches ..0 if score @s rd2-emmer-remove matches 1.. run function comm:game-start/skill/attack/rd2
execute if score @s mine-c matches 1.. if score @s mine-p matches 1.. if score @s rd2-emmer-remove matches 1.. run scoreboard players set @s rd2-emmer-remove 0
#execute as @a[tag=rd2,scores={mine-p=..0}] as @s[scores={mine-c=..0}] if entity @s[scores={rd2-emmer-remove=1..}] run function comm:game-start/skill/attack/rd2
execute at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index if score @s emmer matches 1.. run data modify block ~ 15 ~ Items append from storage minecraft:weapon active[1]
execute at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index if score @s emmer matches ..0 run replaceitem block ~ 15 ~ container.0 air