
execute as @e[type=minecraft:potion] unless score @s owner-UUID_0 matches 0.. unless score @s owner-UUID_0 matches ..0 run function comm:game-start/skill/variable/owner-getter
execute as @a at @e[type=minecraft:potion] if score @s player-UUID_0 = @e[distance=..0,type=potion,limit=1,sort=nearest] owner-UUID_0 if score @s player-UUID_1 = @e[distance=..0,type=potion,limit=1,sort=nearest] owner-UUID_1 if score @s player-UUID_2 = @e[distance=..0,type=potion,limit=1,sort=nearest] owner-UUID_2 if score @s player-UUID_3 = @e[distance=..0,type=potion,limit=1,sort=nearest] owner-UUID_3 run scoreboard players add @s use-potion 1

execute as @a[scores={golden_apple=1..}] run scoreboard players add @s use-potion 1
execute as @a[scores={golden_apple=1..}] run scoreboard players reset @s golden_apple
execute as @a[scores={enchanted_apple=1..}] run scoreboard players add @s use-potion 1
execute as @a[scores={enchanted_apple=1..}] run scoreboard players reset @s enchanted_apple