	execute as @e[tag=red-random] as @e[tag=summon-selecter,limit=1,sort=random] store result score summon-num random run data get entity @s Pos[2]
	execute as @e[tag=red-random,limit=1,sort=random,scores={random=..0}] store result score @s random run scoreboard players get summon-num random