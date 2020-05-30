execute if block ~ ~ ~ #minecraft:none_hitbox-block align y run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["rd3evoker"]}
execute if block ~ ~ ~ #minecraft:slab_hitbox-block align y run summon minecraft:evoker_fangs ~ ~0.5 ~ {Tags:["rd3evoker"]}

execute as @e[tag=rd3evoker,tag=!setted-wramup] run function comm:game-start/skill/attack/evoker/set_warmup