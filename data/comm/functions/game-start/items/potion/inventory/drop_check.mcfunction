# scoreboard players set @s pickup-potion 0

function comm:game-start/skill/variable/thrower-getter

execute as @a if score @s player-UUID_0 = @e[distance=..0,limit=1,sort=nearest] owner-UUID_0 if score @s player-UUID_1 = @e[distance=..0,limit=1,sort=nearest] owner-UUID_1 if score @s player-UUID_2 = @e[distance=..0,limit=1,sort=nearest] owner-UUID_2 if score @s player-UUID_3 = @e[distance=..0,limit=1,sort=nearest] owner-UUID_3 run function comm:game-start/items/potion/inventory/drop_act