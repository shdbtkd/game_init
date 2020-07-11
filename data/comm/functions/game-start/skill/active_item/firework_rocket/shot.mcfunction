data remove block -8 12 -17 Items
loot insert -8 12 -17 loot playerheadtricks:active/common/firework_rocket/motion

execute store result score motion_0 firework_rocket run data get block -8 12 -17 Items[0].tag.Damage 5
execute store result score motion_1 firework_rocket run data get block -8 12 -17 Items[1].tag.Damage 5
execute store result score motion_2 firework_rocket run data get block -8 12 -17 Items[2].tag.Damage 5

scoreboard players remove motion_0 firework_rocket 80
scoreboard players remove motion_1 firework_rocket 80
scoreboard players remove motion_2 firework_rocket 80

scoreboard players operation motion_0 firework_rocket += pos_0 firework_rocket
scoreboard players operation motion_1 firework_rocket += pos_1 firework_rocket
scoreboard players operation motion_2 firework_rocket += pos_2 firework_rocket

execute anchored eyes run summon minecraft:firework_rocket ^ ^ ^-0.3 { Tags:["firework_rocket_ammo"], LifeTime:24, ShotAtAngle: 1b, NoGravity:1b, FireworksItem: { id: firework_rocket, Count: 1, tag: { Fireworks: { Explosions: [{ Type: 4, Flicker: 1b, Trail: 1b, Colors: [I;3479244], FadeColors: [I;15550463] }] } } } }
execute as @e[ tag=firework_rocket_ammo, tag=!end_firework_rocket_ammo, limit=1, sort=nearest ] run data modify entity @s Owner set from entity @s UUID

execute as @e[ tag=firework_rocket_ammo, tag=!end_firework_rocket_ammo, limit=1, sort=nearest ] store result entity @s Motion[0] double -0.0009 run scoreboard players get motion_0 firework_rocket
execute as @e[ tag=firework_rocket_ammo, tag=!end_firework_rocket_ammo, limit=1, sort=nearest ] store result entity @s Motion[1] double -0.0009 run scoreboard players get motion_1 firework_rocket
execute as @e[ tag=firework_rocket_ammo, tag=!end_firework_rocket_ammo, limit=1, sort=nearest ] store result entity @s Motion[2] double -0.0009 run scoreboard players get motion_2 firework_rocket

data remove block -8 12 -17 Items
loot insert -8 12 -17 loot playerheadtricks:active/common/firework_rocket/color

execute as @e[ tag=firework_rocket_ammo, tag=!end_firework_rocket_ammo, limit=1, sort=nearest ] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[].Colors set from block -8 12 -17 Items[].tag.Colors
execute as @e[ tag=firework_rocket_ammo, tag=!end_firework_rocket_ammo, limit=1, sort=nearest ] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[].FadeColors set from block -8 12 -17 Items[].tag.FadeColors

execute as @e[ tag=firework_rocket_ammo, tag=!end_firework_rocket_ammo, limit=1, sort=nearest ] run tag @s add end_firework_rocket_ammo

scoreboard players remove shot_possible firework_rocket 10

# execute as @e[ tag=firework_rocket_ammo, limit=1, sort=nearest ] run function comm:game-start/skill/active_item/firework_rocket/color
# execute as @e[ tag=firework_rocket_ammo, limit=1, sort=nearest ] run function comm:game-start/skill/active_item/firework_rocket/fade