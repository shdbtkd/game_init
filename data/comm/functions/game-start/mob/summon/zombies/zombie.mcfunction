
summon minecraft:zombie ~ ~ ~ {Team:"red"}

# give @p minecraft:command_block{ display:{ Name: '{"text":"zombie","bold":true,"italic":false}' }, BlockEntityTag: { Command:"execute positioned ~ 71 ~ run function comm:game-start/mob/summon/zombies/zombie"} }