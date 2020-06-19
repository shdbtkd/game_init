scoreboard players set @s next-stage 0
execute at @e[tag=boss] at @e[tag=boss_door,limit=1,sort=nearest] as @s run tp @s ~ ~ ~ facing entity @e[tag=clear-add-large,limit=1] eyes