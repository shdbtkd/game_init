summon slime ~ ~ ~ {Tags:["barrelhere","none-show"],PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}

setblock ~ ~ ~ minecraft:barrel[facing= up]

execute if predicate pred:20 run setblock ~ ~ ~ minecraft:barrel[facing= east]
execute if predicate pred:20 run setblock ~ ~ ~ minecraft:barrel[facing= north]
execute if predicate pred:20 run setblock ~ ~ ~ minecraft:barrel[facing= south]
execute if predicate pred:20 run setblock ~ ~ ~ minecraft:barrel[facing= west]

data modify block ~ ~ ~ {} merge value {Lock: "통"}

# give @p minecraft:command_block{ display:{ Name: '{"text":"barrel","bold":true,"italic":false}' }, BlockEntityTag: { Command:"execute positioned ~ 71 ~ run function comm:game-start/mob/barrel/install"} }