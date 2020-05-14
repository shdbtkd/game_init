
execute unless entity @e[team=red,scores={slime_id-S=0..}] run scoreboard players set now-id slime_id-S 0
execute unless entity @e[team=red,scores={slime_id-S=0..}] run scoreboard players set @s slime_id-S 0
execute if entity @e[team=red,scores={slime_id-S=0..}] run scoreboard players add now-id slime_id-S 1
execute if entity @e[team=red,scores={slime_id-S=0..}] run scoreboard players operation @s slime_id-S = now-id slime_id-S
execute if entity @e[team=red,scores={slime_id-S=0..}] run scoreboard players operation @e[tag=slime-storage,limit=1,sort=nearest] slime_id-I = @s slime_id-S

tag @s remove slime
execute as @e[tag=slime-storage,limit=1,sort=nearest] run function comm:game-start/mob/upgrade/slime/setstorage
tag @s add slime
