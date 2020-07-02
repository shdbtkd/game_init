
summon zombie ~ ~ ~ {Team:"red",Tags:["spawner"],ArmorItems:[{},{},{},{id:"minecraft:spawner",Count:1b,tag:{storage:[{}]}}],Attributes:[{Name:generic.followRange,Base:-9999}]}

# give @p minecraft:command_block{ display:{ Name: '{"text":"zombie_spawner","bold":true,"italic":false}' }, BlockEntityTag: { Command:"execute positioned ~ 71 ~ run function comm:game-start/mob/summon/zombies/ungrade/zombie_spawner"} }