
execute if predicate pred:15 run tag @s add box-summon

execute as @s[tag=box-summon] run summon slime ~ ~ ~ {PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["boxhere","none-show"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}
#execute as @s[tag=box-summon] run summon area_effect_cloud ~ ~ ~ {Duration:-1,WaitTime:-2147483648,Tags:["boxhere"],Age:-2147483648}
execute at @s[tag=box-summon] if predicate pred:30 as @e[tag=boxhere,distance=..0,limit=1,sort=nearest] run tag @s add locked
execute at @s[tag=box-summon] as @e[tag=boxhere,distance=..0,limit=1,sort=nearest] run setblock ~ ~-2 ~ minecraft:redstone_lamp

execute at @e[tag=boxhere,distance=..0,limit=1,sort=nearest] run setblock ~ ~ ~ minecraft:trapped_chest
execute at @e[tag=boxhere,distance=..0,limit=1,sort=nearest] if predicate pred:30 run setblock ~ ~ ~ minecraft:trapped_chest[facing= east]
execute at @e[tag=boxhere,distance=..0,limit=1,sort=nearest] if predicate pred:30 run setblock ~ ~ ~ minecraft:trapped_chest[facing= west]
execute at @e[tag=boxhere,distance=..0,limit=1,sort=nearest] if predicate pred:25 run setblock ~ ~ ~ minecraft:trapped_chest[facing= south]
execute at @e[tag=boxhere,tag=locked,distance=..0,limit=1,sort=nearest] run data merge block ~ ~ ~ {Lock: "황금"}
execute as @e[tag=boxhere,tag=locked,distance=..0,limit=1,sort=nearest] run scoreboard players set @s locked-box 2
execute as @e[tag=boxhere,tag=locked,distance=..0,limit=1,sort=nearest] if predicate pred:30 run scoreboard players set @s locked-box 1
execute as @e[tag=boxhere,tag=locked,distance=..0,limit=1,sort=nearest] if predicate pred:30 run scoreboard players set @s locked-box 3
execute as @e[tag=boxhere,tag=locked,distance=..0,limit=1,sort=nearest] if predicate pred:20 run scoreboard players set @s locked-box 4

kill @s