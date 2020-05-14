execute as @s run data modify entity @s Motion[0] set from entity @e[tag=summon-tnt,limit=1,sort=nearest] Motion[0]
execute as @s run data modify entity @s Motion[1] set from entity @e[tag=summon-tnt,limit=1,sort=nearest] Motion[1]
execute as @s run data modify entity @s Motion[2] set from entity @e[tag=summon-tnt,limit=1,sort=nearest] Motion[2]
kill @e[tag=summon-tnt,limit=1,sort=nearest]