
scoreboard players set base_range rd3-emmer-remove 60
scoreboard players operation base_range rd3-emmer-remove += @s attack-damage
scoreboard players set warmup rd3-emmer-remove 0

execute positioned ^ ^ ^ run function comm:game-start/skill/attack/evoker/attcak