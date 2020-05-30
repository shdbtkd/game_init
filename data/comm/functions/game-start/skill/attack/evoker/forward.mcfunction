scoreboard players remove base_range rd3-emmer-remove 10
scoreboard players add warmup rd3-emmer-remove 10
execute if score base_range rd3-emmer-remove matches 0.. positioned ~ ~-5 ~ run function comm:game-start/skill/attack/evoker/raycast
execute if score base_range rd3-emmer-remove matches 0.. positioned ^ ^ ^1 run function comm:game-start/skill/attack/evoker/forward