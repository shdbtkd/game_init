
execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run data remove block ~ 21 ~ Items

function comm:game-start/items/head-modify
function comm:lobby-comm/setting/resetscore
function comm:lobby-comm/setting/weapon
execute positioned -14 1 -1 run function comm:game-start/items/summon/selector/reset