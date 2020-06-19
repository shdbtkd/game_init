data remove block 0 12 -28 Items
loot insert 0 12 -28 loot dungeons:potal/chance_dropper
execute store result score creature_result potal_info run data get block 0 12 -28 Items[{ id: "minecraft:netherite_sword" }].tag.Damage
execute store result score undead_result potal_info run data get block 0 12 -28 Items[{ id: "minecraft:netherite_pickaxe" }].tag.Damage
data remove block 0 12 -28 Items

execute as @e[tag=boss] at @s positioned ~ 51 ~ run function comm:about-play/map-setting/reward/boss-reward/potal/tracking
tag @e[tag=potal-pos_selector,limit=1,sort=random] add potal-pos_selector-selected
execute if score creature_chance potal_info >= creature_result potal_info as @e[tag=boss] at @s align xz facing entity @e[tag=potal-pos_selector-selected,limit=1] eyes rotated ~ 0 positioned ~ 73 ~ positioned ^-0.5 ^ ^21.5 run function comm:about-play/map-setting/reward/boss-reward/potal/creature/generate
kill @e[tag=potal-pos_selector-selected]

tag @e[tag=potal-pos_selector,limit=1,sort=random] add potal-pos_selector-selected
execute if score undead_chance potal_info >= undead_result potal_info as @e[tag=boss] at @s align xz facing entity @e[tag=potal-pos_selector-selected,limit=1] eyes rotated ~ 0 positioned ~ 73 ~ positioned ^-0.5 ^ ^21.5 run function comm:about-play/map-setting/reward/boss-reward/potal/undead/generate
kill @e[tag=potal-pos_selector-selected]
kill @e[tag=potal-pos_selector]
# 
# 
# data remove block 0 12 -28 Items
# loot insert 0 12 -28 loot dungeons:potal/chance_dropper
# execute store result score creature_result potal_info run data get block 0 12 -28 Items[{ id: "minecraft:netherite_sword" }].tag.Damage
# execute store result score undead_result potal_info run data get block 0 12 -28 Items[{ id: "minecraft:netherite_pickaxe" }].tag.Damage
# data remove block 0 12 -28 Items
# 
# execute as @e[tag=boss] at @s positioned ~ 51 ~ run function comm:about-play/map-setting/reward/boss-reward/potal/tracking
# 
# tag @e[tag=potal-pos_selector,tag=!potal-pos_selector-selected,limit=1,sort=random] add potal-pos_selector-selected
# execute if score creature_chance potal_info >= creature_result potal_info as @e[tag=boss] at @s facing entity @e[tag=potal-pos_selector-selected,limit=1] eyes rotated ~ 0 at @s positioned ~ 72 ~ align xz positioned ^-0.5 ^ ^21.5 run function comm:about-play/map-setting/reward/boss-reward/potal/creature/generate
# #execute if score creature_chance potal_info >= creature_result potal_info as @e[tag=boss] at @s facing entity @e[tag=potal-pos_selector-selected,limit=1] eyes rotated ~ 0 at @s positioned ~ 72 ~ align xz positioned ^-0.5 ^ ^10 run particle minecraft:reverse_portal ~ ~ ~ 1 1 1 0 1
# kill @e[tag=potal-pos_selector-selected]
# 
# tag @e[tag=potal-pos_selector,tag=!potal-pos_selector-selected,limit=1,sort=random] add potal-pos_selector-selected
# execute if score undead_chance potal_info >= undead_result potal_info as @e[tag=boss] at @s facing entity @e[tag=potal-pos_selector-selected,limit=1] eyes rotated ~ 0 at @s positioned ~ 72 ~ align xz positioned ^-0.5 ^ ^21.5 run function comm:about-play/map-setting/reward/boss-reward/potal/undead/generate
# #execute if score undead_chance potal_info >= undead_result potal_info as @e[tag=boss] at @s facing entity @e[tag=potal-pos_selector-selected,limit=1] eyes rotated ~ 0 at @s positioned ~ 72 ~ align xz positioned ^-0.5 ^ ^10 run particle minecraft:reverse_portal ~ ~ ~ 1 1 1 0 1
# kill @e[tag=potal-pos_selector-selected]
# kill @e[tag=potal-pos_selector]
# 
# 
