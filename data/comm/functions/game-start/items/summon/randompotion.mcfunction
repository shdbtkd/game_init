#execute as @e[tag=random-potion,limit=1,sort=random] at @s run function comm:game-start/items/summon/randompotion

execute if data block 12 12 -7 Items[{ Count: 64b }]