execute as @e[type=minecraft:tnt] store result score @s fuse run data get entity @s Fuse

execute as @e[tag=boom,scores={fuse=40..}] at @s at @e[tag=summon-tnt,distance=..0.9,limit=1,sort=nearest] run function comm:game-start/items/tnt/move/motion

execute as @e[tag=boom,scores={fuse=..45}] at @s at @p[distance= ..0.6] run function comm:game-start/items/tnt/move/operat

execute as @e[tag=boom,tag=default,scores={fuse=..1}] run function comm:game-start/items/tnt/boom/default

