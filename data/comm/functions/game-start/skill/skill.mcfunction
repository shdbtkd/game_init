

# execute as @a[scores={mine-p=1..}] run scoreboard players remove @s mine-p 1
# execute as @a[scores={mine-c=1..}] run scoreboard players remove @s mine-c 1

execute as @e[type=arrow] unless score @s owner-UUID_0 matches 0.. unless score @s owner-UUID_0 matches ..0 run function comm:game-start/skill/variable/owner-getter

execute as @a[tag=rd1] at @s run function comm:game-start/skill/rd1skill

execute as @a[tag=rd2] at @s run function comm:game-start/skill/rd2skill

execute as @a[tag=rd3] at @s run function comm:game-start/skill/rd3skill


execute as @a[tag=nd1] at @s run function comm:game-start/skill/nd1skill

execute as @a[tag=nd2] at @s run function comm:game-start/skill/nd2skill

execute as @a[tag=nd3] at @s run function comm:game-start/skill/nd3skill






