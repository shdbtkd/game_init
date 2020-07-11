# --------------------------------------- #
#   execute this command at every ticks
# --------------------------------------- #

# execute as @a[scores={mine-p=1..}] run scoreboard players remove @s mine-p 1
# execute as @a[scores={mine-c=1..}] run scoreboard players remove @s mine-c 1

execute as @a at @s run function comm:game-start/skill/damage/player_set

execute as @a unless data entity @s Attributes[{ Name:"minecraft:generic.attack_speed", Base: 9999.0d }] run attribute @s minecraft:generic.attack_speed base set 9999
execute as @e[type=arrow] unless score @s owner-UUID_0 matches 0.. unless score @s owner-UUID_0 matches ..0 run function comm:game-start/skill/variable/owner-getter

execute as @a[tag=rd1] at @s run function comm:game-start/skill/rd1skill
execute as @a[tag=rd2] at @s run function comm:game-start/skill/rd2skill
execute as @a[tag=rd3] at @s run function comm:game-start/skill/rd3skill

execute as @a[tag=nd1] at @s run function comm:game-start/skill/nd1skill
execute as @a[tag=nd2] at @s run function comm:game-start/skill/nd2skill
execute as @a[tag=nd3] at @s run function comm:game-start/skill/nd3skill

execute as @a unless score @s head_checker matches 1 run clear @s #dungeons:head_item{ head_item: 1b }

execute as @a at @s run function comm:game-start/skill/active_item/generic/tick
execute as @a if score @s item_drop matches 1.. if score @s active_inven matches 1.. run function comm:game-start/skill/active_item/generic/checker
execute as @a if score @s item_drop matches 1.. if score @s jewelry_inven matches 1.. run function comm:game-start/skill/jewelry_item/generic/checker
execute as @a if score @s jewelry_inven matches 1.. run function comm:game-start/skill/jewelry_item/generic/filter
execute as @a run function comm:game-start/skill/variable/inven_checker

execute as @a if score @s item_drop matches 1.. run scoreboard players reset @s item_drop

execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index if data block ~ 27 ~ Items[{ Slot: 0b }] unless data entity @s Inventory[{ Slot: 100b }] run function comm:game-start/skill/lootarmor
execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index if data block ~ 27 ~ Items[{ Slot: 1b }] unless data entity @s Inventory[{ Slot: 101b }] run function comm:game-start/skill/lootarmor
execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index if data block ~ 27 ~ Items[{ Slot: 2b }] unless data entity @s Inventory[{ Slot: 102b }] run function comm:game-start/skill/lootarmor
execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index if data block ~ 27 ~ Items[{ Slot: 3b }] unless data entity @s Inventory[{ Slot: 103b }] run function comm:game-start/skill/lootarmor

execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run function comm:game-start/skill/loot_to_weapon

execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run function comm:game-start/skill/stats/main

execute as @a run function comm:game-start/items/attribute/set
execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run function comm:game-start/skill/lootarmor
