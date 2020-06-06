
execute if entity @s[tag=!now-end] if score time stage matches 102 if score red stage matches ..0 run scoreboard players set time stage 0

#	execute if score start map_lod matches 12 if score @a[limit=1] stage matches 1 as @e[tag=boss] at @s run fill ~1 71 ~14 ~-2 74 ~14 nether_portal
#	execute if score start map_lod matches 12 if score @a[limit=1] stage matches 1 as @e[tag=boss] at @s run fill ~1 71 ~-15 ~-2 74 ~-15 nether_portal
#	execute if score start map_lod matches 12 if score @a[limit=1] stage matches 1 as @e[tag=boss] at @s run fill ~14 71 ~1 ~14 74 ~-2 nether_portal[axis=z]
#	execute if score start map_lod matches 12 if score @a[limit=1] stage matches 1 as @e[tag=boss] at @s run fill ~-15 71 ~1 ~-15 74 ~-2 nether_portal[axis=z]

execute if entity @s[tag=boss] run tag @s add now-end

execute if entity @s[tag=!now-end] if block ~ 71 ~ air run summon armor_stand ~ 71 ~ {Tags:["stage-reward"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
execute if entity @s[tag=!now-end] if block ~ 71 ~ air run tag @s add now-end

execute if entity @s[tag=!now-end] if block ~ 71 ~5 air run summon armor_stand ~ 71 ~5 {Tags:["stage-reward"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
execute if entity @s[tag=!now-end] if block ~ 71 ~5 air run tag @s add now-end

execute if entity @s[tag=!now-end] if block ~ 71 ~ air run summon armor_stand ~ 71 ~-5 {Tags:["stage-reward"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
execute if entity @s[tag=!now-end] if block ~ 71 ~-5 air run tag @s add now-end

execute if entity @s[tag=!now-end] if block ~ 71 ~ air run summon armor_stand ~5 71 ~ {Tags:["stage-reward"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
execute if entity @s[tag=!now-end] if block ~5 71 ~ air run tag @s add now-end

execute if entity @s[tag=!now-end] if block ~ 71 ~ air run summon armor_stand ~-5 71 ~ {Tags:["stage-reward"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
execute if entity @s[tag=!now-end] if block ~-5 71 ~ air run tag @s add now-end

execute if entity @s[tag=!now-end] if block ~ 72 ~ air run summon armor_stand ~ 72 ~ {Tags:["stage-reward"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
execute if entity @s[tag=!now-end] if block ~ 72 ~ air run tag @s add now-end

execute if entity @s[tag=!now-end] if block ~ 72 ~5 air run summon armor_stand ~ 72 ~5 {Tags:["stage-reward"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
execute if entity @s[tag=!now-end] if block ~ 72 ~5 air run tag @s add now-end

execute if entity @s[tag=!now-end] if block ~ 72 ~-5 air run summon armor_stand ~ 72 ~-5 {Tags:["stage-reward"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
execute if entity @s[tag=!now-end] if block ~ 72 ~-5 air run tag @s add now-end

execute if entity @s[tag=!now-end] if block ~5 72 ~ air run summon armor_stand ~5 72 ~ {Tags:["stage-reward"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
execute if entity @s[tag=!now-end] if block ~5 72 ~ air run tag @s add now-end

execute if entity @s[tag=!now-end] if block ~-5 72 ~ air run summon armor_stand ~-5 72 ~ {Tags:["stage-reward"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}
execute if entity @s[tag=!now-end] if block ~-5 72 ~ air run tag @s add now-end


execute if predicate pred:10 run tag @s add fake
execute if entity @s[tag=!fake] as @e[tag=stage-reward] at @s run function comm:about-play/map-setting/reward/stage-reward
execute if entity @s[tag=fake] as @e[tag=stage-reward] at @s run function comm:about-play/map-setting/reward/stage-fakereward

execute if block ~ ~ ~ #minecraft:air_block if block ~ ~1 ~ #minecraft:air_block if block ~ ~2 ~ #minecraft:air_block if block ~ ~4 ~ #minecraft:air_block if block ~ ~5 ~ #minecraft:air_block 