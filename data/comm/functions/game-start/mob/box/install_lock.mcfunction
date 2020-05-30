summon slime ~ ~ ~ {Tags:["boxhere","lock","none-show"],PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}

execute as @e[tag=boxhere,distance=..0] run function comm:game-start/mob/box/place_block
