execute if score player stage > out-player stage as @a[tag=!play-now] at @s at @e[tag=player-teleporter,sort=nearest] run tp ~ ~ ~
execute if score player stage > out-player stage as @a[tag=!play-now] at @s anchored eyes at @s run tp @s ~ ~ ~ facing entity @e[team=red,limit=1,sort=nearest] eyes
kill @e[tag=player-teleporter]