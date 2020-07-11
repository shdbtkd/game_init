summon slime ~ ~ ~ {Tags:["boxhere","none-show"],PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}

execute as @e[tag=boxhere,distance=..0] run function comm:game-start/mob/box/place_block

# give @p minecraft:command_block{ display:{ Name: '{"text":"box","bold":true,"italic":false}' }, BlockEntityTag: { Command:"execute positioned ~ 71 ~ run function comm:game-start/mob/box/install_basic"} }
# give @p minecraft:command_block{ display:{ Name: '{"text":"box 10%","bold":true,"italic":false}' }, BlockEntityTag: { Command:"execute if predicate pred:10 positioned ~ 71 ~ run function comm:game-start/mob/box/install_basic"} }
# give @p minecraft:command_block{ display:{ Name: '{"text":"box 30%","bold":true,"italic":false}' }, BlockEntityTag: { Command:"execute if predicate pred:30 positioned ~ 71 ~ run function comm:game-start/mob/box/install_basic"} }