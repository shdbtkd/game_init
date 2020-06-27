
summon minecraft:skeleton ~ ~ ~ {Team:"red",Health:10f,HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],Attributes:[{Name:generic.maxHealth,Base:10}]}

# give @p minecraft:command_block{ display:{ Name: '{"text":"zombie","bold":true,"italic":false}' }, BlockEntityTag: { Command:"execute positioned ~ 71 ~ run function comm:game-start/mob/summon/skeletons/skeleton"} }