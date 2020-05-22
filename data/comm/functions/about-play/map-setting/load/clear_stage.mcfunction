
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

execute as @e[tag=map-all,tag=boss] at @s run data modify block ~-16 60 ~-16 name set value "minecraft:generic_stage_clear-boss"
execute as @e[tag=map-all,tag=boss] at @s run data modify block ~-16 59 ~-16 name set value "minecraft:generic_stage_clear-boss"

function comm:about-play/map-setting/load/schedule/loading_other
#schedule function comm:about-play/map-setting/load/schedule/loading_other 1t

execute as @e[tag=map-all,tag=!boss] at @s run setblock ~-16 60 ~-16 air
execute as @e[tag=map-all,tag=!boss] at @s run setblock ~-16 59 ~-16 air

execute as @e[tag=loader] at @s run data merge block ~-16 61 ~-16 {name:"basic-air",posY:0,posX:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute as @e[tag=loader] at @s if block ~-16 62 ~-16 minecraft:structure_block run setblock ~-16 62 ~-16 minecraft:redstone_block destroy
execute as @e[tag=end-event] at @s run data merge block ~-16 61 ~-16 {name:"basic-air",posY:0,posX:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute as @e[tag=end-event] at @s if block ~-16 62 ~-16 minecraft:structure_block run setblock ~-16 62 ~-16 minecraft:redstone_block destroy
execute as @e[tag=boss] at @s run data merge block ~-16 59 ~-16 {name:"basic-air",posY:-3,posX:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD",powered: 0b}
execute as @e[tag=map-all,tag=boss] at @s run setblock ~-16 58 ~-16 minecraft:redstone_block destroy
execute as @e[tag=center] at @s run data merge block ~-16 61 ~-16 {name:"basic-air",posY:0,posX:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute as @e[tag=map-all] at @s if block ~ ~-1 ~48 #minecraft:road_tracking run data merge block ~-16 61 ~16 {name:"road-vert-air",posY:0,posX:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute as @e[tag=map-all] at @s if block ~48 ~-1 ~ #minecraft:road_tracking run data merge block ~16 61 ~-16 {name:"road-hori-air",posY:0,posX:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute as @e[tag=map-all] at @s if block ~-16 61 ~-16 minecraft:structure_block run setblock ~-16 62 ~-16 minecraft:redstone_block destroy
execute as @e[tag=map-all] at @s if block ~-16 61 ~16 minecraft:structure_block if block ~ ~-1 ~48 #minecraft:road_tracking run setblock ~-16 62 ~16 minecraft:redstone_block destroy
execute as @e[tag=map-all] at @s if block ~16 61 ~-16 minecraft:structure_block if block ~48 ~-1 ~ #minecraft:road_tracking run setblock ~16 62 ~-16 minecraft:redstone_block destroy

function comm:about-play/map-setting/load/schedule/loader_clear
