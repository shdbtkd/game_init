tag @s add setted-wramup
execute store result entity @s Warmup int 0.1 run scoreboard players get warmup rd3-emmer-remove
data modify entity @s Owner set from entity @a[tag=rd3,limit=1] UUID