particle minecraft:explosion_emitter ~ 72.5 ~ 1.5 1.5 1.5 1 3
execute positioned ^0.5 ^ ^ run particle minecraft:explosion_emitter ~ 72.5 ~ 1.5 1.5 1.5 1 3
#execute positioned ^0.5 ^ ^ run particle minecraft:explosion_emitter ^ ^ ^-10 1.5 1.5 1.5 1 3
#execute positioned ^0.5 ^ ^ run playsound minecraft:entity.generic.explode block @a ~ 72.5 ~ 0.7 0.6 0.1
execute positioned ^0.5 ^ ^ run playsound minecraft:entity.wither.break_block block @a ~ 72.5 ~ 0.5 0 0.2
execute positioned ^0.5 ^ ^ run playsound minecraft:entity.wither.spawn block @a ~ 72.5 ~ 0.7 1 0.4
execute positioned ^0.5 ^ ^ run playsound minecraft:entity.wither.spawn block @a ~ 72.5 ~ 0.6 0 0.2

execute if entity @e[tag=potal-pos_selector-selected,tag=potal-pos_selector-top] positioned ^-3 ^ ^ run data modify block ~ 69 ~ rotation set value NONE
execute if entity @e[tag=potal-pos_selector-selected,tag=potal-pos_selector-right] positioned ^-3 ^ ^ run data modify block ~ 69 ~ rotation set value CLOCKWISE_90
execute if entity @e[tag=potal-pos_selector-selected,tag=potal-pos_selector-bottom] positioned ^-3 ^ ^ run data modify block ~ 69 ~ rotation set value CLOCKWISE_180
execute if entity @e[tag=potal-pos_selector-selected,tag=potal-pos_selector-left] positioned ^-3 ^ ^ run data modify block ~ 69 ~ rotation set value COUNTERCLOCKWISE_90

execute positioned ^-3 ^ ^ run setblock ~ 70 ~ redstone_block

execute if entity @e[tag=potal-pos_selector-selected,tag=!potal-pos_selector-top,tag=!potal-pos_selector-bottom] positioned ^ ^-1 ^9 run fill ^ ^ ^ ^1 ^2 ^ minecraft:nether_portal[axis= z]
execute if entity @e[tag=potal-pos_selector-selected,tag=!potal-pos_selector-left,tag=!potal-pos_selector-right] positioned ^ ^-1 ^9 run fill ^ ^ ^ ^1 ^2 ^ minecraft:nether_portal[axis= x]
#execute align xz positioned ~ ~2 ~ unless entity @e[tag=potal-teleporter_enter,tag=potal-undead_type] run summon minecraft:armor_stand ~ ~ ~ {Tags:["potal-teleporter_enter","potal-undead_type"],Invulnerable:1b,Invisible:1b}
#execute align xz positioned ~ ~2 ~ unless entity @e[tag=potal-teleporter_enter,tag=potal-creature_type] run summon minecraft:armor_stand ~ ~ ~ {Tags:["potal-teleporter_enter","potal-creature_type"],Invulnerable:1b,Invisible:1b}

# execute as @e[tag=boss] at @s positioned ~ 72 ~ align xz rotated 0 0 positioned ^-0.5 ^ ^21.5 run function comm:about-play/map-setting/reward/boss-reward/potal/act