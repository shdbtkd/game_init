tag @s add end-red_arrow

# effect give @e[ type= #minecraft:arrow_owners, distance=..0, limit=1, sort= nearest] minecraft:glowing 1 0 true

# execute at @s store result score @s red_arrow_pos_0 run data get entity @s Pos[0] 1000
# execute at @s store result score @s red_arrow_pos_1 run data get entity @s Pos[1] 1000
# execute at @s store result score @s red_arrow_pos_2 run data get entity @s Pos[2] 1000

# execute as @e[ type= #minecraft:arrow_owners, distance=..0, limit=1, sort= nearest] store result score @s red_arrow_pos_0 run data get entity @s Pos[0] 1000
# execute as @e[ type= #minecraft:arrow_owners, distance=..0, limit=1, sort= nearest] store result score @s red_arrow_pos_1 run data get entity @s Pos[1] 1000
# execute as @e[ type= #minecraft:arrow_owners, distance=..0, limit=1, sort= nearest] store result score @s red_arrow_pos_2 run data get entity @s Pos[2] 1000

# scoreboard players operation @e[ type= #minecraft:arrow_owners, distance=..0, limit=1, sort= nearest] red_arrow_pos_0 -= @s red_arrow_pos_0
# scoreboard players operation @e[ type= #minecraft:arrow_owners, distance=..0, limit=1, sort= nearest] red_arrow_pos_1 -= @s red_arrow_pos_1
# scoreboard players operation @e[ type= #minecraft:arrow_owners, distance=..0, limit=1, sort= nearest] red_arrow_pos_2 -= @s red_arrow_pos_2

#data modify entity @s NoGravity set value 1b
#execute store result entity @s Motion[0] double 1 run data get entity @s Motion[0]
# execute store result entity @s Motion[1] double 0.5 run data get entity @s Motion[1]
#execute store result entity @s Motion[2] double 1 run data get entity @s Motion[2]

# execute store result entity @s Motion[0] double -0.5 run scoreboard players get @e[ type= #minecraft:arrow_owners, distance=..0, limit=1, sort= nearest ] red_arrow_pos_0
# execute store result entity @s Motion[2] double -0.5 run scoreboard players get @e[ type= #minecraft:arrow_owners, distance=..0, limit=1, sort= nearest ] red_arrow_pos_2
# execute store result entity @s Motion[2] double -50 run scoreboard players get @e[ type= #minecraft:arrow_owners, distance=..0, limit=1, sort= nearest ] red_arrow_pos_2

# execute store result score @s red_arrow_pos_0 run data get entity @s Motion[0] 100
# execute store result score @s red_arrow_pos_2 run data get entity @s Motion[2] 100
