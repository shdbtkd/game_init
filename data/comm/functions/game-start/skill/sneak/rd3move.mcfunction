#execute at @s unless block ~ ~ ~ air run summon firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;16738601]}]}}}}
execute at @s unless block ~ ~ ~ air run function comm:game-start/skill/sneak/rd3getmotion
execute at @s unless block ~ ~ ~ air run kill @s
tp @s ^ ^ ^0.5
