
summon minecraft:spider ~ ~ ~ {Team:"red"}

# give @p minecraft:command_block{ display:{ Name: '{"text":"spider","bold":true,"italic":false}' }, BlockEntityTag: { Command:"execute positioned ~ 71 ~ run function comm:game-start/mob/summon/insects/spider"} }