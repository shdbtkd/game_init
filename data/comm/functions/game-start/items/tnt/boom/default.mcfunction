summon minecraft:creeper ~ ~ ~ {Silent:1b,NoAI:1b,ExplosionRadius:3b,Fuse:0}
kill @s
function comm:game-start/items/tnt/boom/particle

execute as @e[tag=barrelhere,distance=..5.5] at @s run scoreboard players set @s barrel_break 3