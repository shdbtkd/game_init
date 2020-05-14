
setworldspawn 0 16 0
kill @e[team=red]
scoreboard players set time stage 0

# item selector
kill @e[tag=item-selecter]
summon minecraft:armor_stand -10 2 1 {Tags:["item-selecter","host"]}
# item selector

execute if score @p stage matches 2..3 run scoreboard players set min-battle map_lod 5
execute if score @p stage matches 2..3 run scoreboard players set max-battle map_lod 8
execute if score @p stage matches 4..5 run scoreboard players set min-battle map_lod 7
execute if score @p stage matches 4..5 run scoreboard players set max-battle map_lod 10

execute if score @p stage matches 6..7 run scoreboard players set min-battle map_lod 9
execute if score @p stage matches 6..7 run scoreboard players set max-battle map_lod 12
execute if score @p stage matches 8..9 run scoreboard players set min-battle map_lod 11
execute if score @p stage matches 8..9 run scoreboard players set max-battle map_lod 14

execute if score @p stage matches 10..11 run scoreboard players set min-battle map_lod 13
execute if score @p stage matches 10..11 run scoreboard players set max-battle map_lod 16
execute if score @p stage matches 12..13 run scoreboard players set min-battle map_lod 15
execute if score @p stage matches 12..13 run scoreboard players set max-battle map_lod 18

execute if score @p stage matches 14..14 run scoreboard players set min-battle map_lod 17
execute if score @p stage matches 14..14 run scoreboard players set max-battle map_lod 20

execute if score @p stage matches 2..7 run scoreboard players set min-event map_lod 2
execute if score @p stage matches 8..11 run scoreboard players set min-event map_lod 3
execute if score @p stage matches 12..14 run scoreboard players set min-event map_lod 4

execute as @e[tag=map-all] at @s run setblock ~-16 60 ~-16 air
execute as @e[tag=map-all] at @s run setblock ~-16 59 ~-16 air

execute as @e[tag=loader] at @s run data merge block ~-16 61 ~-16 {name:"basic-air",posY:0,posX:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute as @e[tag=loader] at @s if block ~-16 62 ~-16 minecraft:structure_block run setblock ~-16 62 ~-16 minecraft:redstone_block destroy
execute as @e[tag=end-event] at @s run data merge block ~-16 61 ~-16 {name:"basic-air",posY:0,posX:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute as @e[tag=end-event] at @s if block ~-16 62 ~-16 minecraft:structure_block run setblock ~-16 62 ~-16 minecraft:redstone_block destroy
execute as @e[tag=boss] at @s run data merge block ~-16 61 ~-16 {name:"basic-ai",posY:0,posX:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute as @e[tag=boss] at @s if block ~-16 62 ~-16 minecraft:structure_block run setblock ~-16 62 ~-16 minecraft:redstone_block destroy
execute as @e[tag=center] at @s run data merge block ~-16 61 ~-16 {name:"basic-air",posY:0,posX:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute as @e[tag=map-all] at @s[tag=!big] unless block ~ ~-1 ~48 minecraft:red_concrete unless block ~ ~-1 ~48 minecraft:air run data merge block ~-16 61 ~16 {name:"road-vert-air",posY:0,posX:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute as @e[tag=map-all] at @s[tag=!big] unless block ~48 ~-1 ~ minecraft:red_concrete unless block ~48 ~-1 ~ minecraft:air run data merge block ~16 61 ~-16 {name:"road-hori-air",posY:0,posX:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute as @e[tag=map-all] at @s if block ~-16 61 ~-16 minecraft:structure_block run setblock ~-16 62 ~-16 minecraft:redstone_block destroy
execute as @e[tag=map-all] at @s[tag=!big] if block ~-16 61 ~16 minecraft:structure_block unless block ~ ~-1 ~48 minecraft:red_concrete unless block ~ ~-1 ~48 minecraft:air run setblock ~-16 62 ~16 minecraft:redstone_block destroy
execute as @e[tag=map-all] at @s[tag=!big] if block ~16 61 ~-16 minecraft:structure_block unless block ~48 ~-1 ~ minecraft:red_concrete unless block ~48 ~-1 ~ air run setblock ~16 62 ~-16 minecraft:redstone_block destroy

# execute as @e[tag=loaded] at @s run setblock ~-16 62 ~-16 minecraft:air
# execute as @e[tag=end-event] at @s run setblock ~-16 62 ~-16 minecraft:air
# execute as @e[tag=boss] at @s run setblock ~-16 62 ~-16 minecraft:air
# 
# execute as @e[tag=map-all] at @s run setblock ~-16 62 ~-16 air
# execute as @e[tag=map-all] at @s run setblock ~-16 62 ~-15 air
# 
# execute as @e[tag=map-all] at @s run setblock ~-16 62 ~-16 air
# execute as @e[tag=map-all] at @s run setblock ~-16 62 ~-15 air
# 
# execute as @e[tag=map-all] at @s run setblock ~-16 62 ~-16 air
# execute as @e[tag=map-all] at @s run setblock ~-16 62 ~-15 air
# 
# execute as @e[tag=map-all] at @s run setblock ~-16 62 ~-16 air
# execute as @e[tag=map-all] at @s run setblock ~-16 62 ~-15 air

kill @e[tag=center]
kill @e[tag=boss]
kill @e[tag=event]
kill @e[tag=loader]
kill @e[tag=hide]
kill @e[tag=tester]
kill @e[tag=door-vert]
kill @e[tag=door-hori]
kill @e[tag=clear]
kill @e[tag=clear-add]
kill @e[tag=close-add]
kill @e[tag=boxhere]

fill 96 50 -960 192 50 -768 minecraft:gray_concrete replace minecraft:blue_concrete
fill -48 50 -960 48 50 -768 minecraft:gray_concrete replace minecraft:blue_concrete
fill -192 50 -960 -96 50 -768 minecraft:gray_concrete replace minecraft:blue_concrete
fill 192 50 -752 96 50 -672 minecraft:gray_concrete replace minecraft:blue_concrete
fill 48 50 -768 -48 50 -672 minecraft:gray_concrete replace minecraft:blue_concrete
fill -96 50 -672 -192 50 -768 minecraft:gray_concrete replace minecraft:blue_concrete

fill 96 50 -960 192 50 -768 minecraft:red_concrete replace minecraft:gray_concrete
fill -48 50 -960 48 50 -768 minecraft:red_concrete replace minecraft:gray_concrete
fill -192 50 -960 -96 50 -768 minecraft:red_concrete replace minecraft:gray_concrete
fill 192 50 -752 96 50 -672 minecraft:red_concrete replace minecraft:gray_concrete
fill 48 50 -768 -48 50 -672 minecraft:red_concrete replace minecraft:gray_concrete
fill -96 50 -672 -192 50 -768 minecraft:red_concrete replace minecraft:gray_concrete

fill 96 50 -960 192 50 -768 minecraft:red_concrete replace minecraft:cyan_concrete
fill -48 50 -960 48 50 -768 minecraft:red_concrete replace minecraft:cyan_concrete
fill -192 50 -960 -96 50 -768 minecraft:red_concrete replace minecraft:cyan_concrete
fill 192 50 -752 96 50 -672 minecraft:red_concrete replace minecraft:cyan_concrete
fill 48 50 -768 -48 50 -672 minecraft:red_concrete replace minecraft:cyan_concrete
fill -96 50 -672 -192 50 -768 minecraft:red_concrete replace minecraft:cyan_concrete
setblock 0 50 -816 minecraft:gray_concrete