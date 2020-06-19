summon zombie ~ ~ ~ {Team:"red",Tags:["red-boss","test"], Attributes:[{Name:generic.max_health,Base:80}]}
#attribute @e[tag=red-boss,tag=test,limit=1,sort=nearest] minecraft:generic.max_health base set 80
effect give @e[tag=red-boss,tag=test,limit=1,sort=nearest] minecraft:glowing 1000000 0 true
function comm:game-start/mob/boss/main/generic/bossbar