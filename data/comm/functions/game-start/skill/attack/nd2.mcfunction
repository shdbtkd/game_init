scoreboard players remove @s emmer 1
execute as @e[type=trident] run function comm:game-start/skill/variable/owner-getter
execute as @e[type=trident] if score @a[tag=nd2,limit=1] player-UUID_0 = @s owner-UUID_0 if score @a[tag=nd2,limit=1] player-UUID_1 = @s owner-UUID_1 if score @a[tag=nd2,limit=1] player-UUID_2 = @s owner-UUID_2 if score @a[tag=nd2,limit=1] player-UUID_3 = @s owner-UUID_3 run tag @s add nd2trident
execute if entity @s[level=1..] if predicate pred:sneak as @e[tag=nd2trident] run function comm:game-start/skill/sneak/nd2
execute if entity @e[tag=nd2trident] at @e[tag=modify-head] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 15 ~ container.0 air
function comm:game-start/skill/lootself
scoreboard players set @s nd2-emmer-remove 0