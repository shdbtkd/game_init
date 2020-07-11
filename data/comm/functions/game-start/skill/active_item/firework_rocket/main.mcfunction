# say main

execute store result score pos_0 firework_rocket run data get entity @s Pos[0] 100
execute store result score pos_1 firework_rocket run data get entity @s Pos[1] 100
execute store result score pos_2 firework_rocket run data get entity @s Pos[2] 100

execute anchored eyes run summon area_effect_cloud ^ ^ ^5 {Duration:-1,WaitTime:-2147483648,Tags:["firework_motion"],Age:-2147483648}
execute anchored eyes at @s run tp @e[tag=firework_motion] ^ ^ ^5

execute as @e[tag=firework_motion] store result score facing_pos_0 firework_rocket run data get entity @s Pos[0] 100
execute as @e[tag=firework_motion] store result score facing_pos_1 firework_rocket run data get entity @s Pos[1] 100
execute as @e[tag=firework_motion] store result score facing_pos_2 firework_rocket run data get entity @s Pos[2] 100

scoreboard players operation pos_0 firework_rocket -= facing_pos_0 firework_rocket
scoreboard players operation pos_1 firework_rocket -= facing_pos_1 firework_rocket
scoreboard players operation pos_2 firework_rocket -= facing_pos_2 firework_rocket

scoreboard players add pos_1 firework_rocket 160
kill @e[tag=firework_motion]

scoreboard players operation shot_possible firework_rocket = @s result-att_dmg
scoreboard players add shot_possible firework_rocket 30

#summon minecraft:armor_stand ~ ~ ~ { Tags:["firework_rocket_ammo"] }
# execute anchored eyes at @s run summon fireball ^ ^ ^1.5 {Motion:[0.0,0.0,0.0],power:[0.0,-0.1,0.0],Tags:["firework_rocket_ammo"],ExplosionPower:2,Invulnerable:1b}

# execute as @e[ tag=firework_rocket_ammo, limit=1, sort=nearest ] store result score @s motion_1 firework_rocket -0.002 run data get entity @s Motion[1]

# execute as @e[ tag=firework_rocket_ammo, limit=1, sort=nearest ] run data modify entity @s Motion[1] set value 0.7d
#execute as @e[ tag=firework_rocket_ammo, limit=1, sort=nearest ] store result entity @s Motion[1] double 10 run scoreboard players get pos_1 firework_rocket
# execute as @e[ tag=firework_rocket_ammo, limit=1, sort=nearest ] store result entity @s Motion[2] double 10 run scoreboard players get pos_2 firework_rocket
#execute as @e[ tag=firework_rocket_ammo, limit=1, sort=nearest ] store result score @s firework_rocket run data get entity @s Motion[0]
# execute as @e[ tag=firework_rocket_ammo, limit=1, sort=nearest ] run say 1