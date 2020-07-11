
summon minecraft:husk ~ ~ ~ {Team:"red",Tags:["upgrade"]}

# give @p minecraft:command_block{ display:{ Name: '{"text":"husk_upgrade","bold":true,"italic":false}' }, BlockEntityTag: { Command:"execute positioned ~ 71 ~ run function comm:game-start/mob/summon/zombies/upgrade/zombie_upgrade"} }