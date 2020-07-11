# --------------------------------------- #
#   execute this command at every ticks
# --------------------------------------- #


# execute if entity @a[scores={stage=..0}] at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run replaceitem block ~ 15 ~ container.5 stone_button 
# hp #
execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers[{ AttributeName: "generic.max_health" }].Amount int 1 run scoreboard players get @s max-hp
# dmg #
execute unless score @s emmer matches 1.. at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run data modify block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers[{ AttributeName: "generic.attack_damage" }].Amount set value -999
execute unless data entity @s { SelectedItemSlot: 0 } at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run data modify block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers[{ AttributeName: "generic.attack_damage" }].Amount set value -999
execute if data entity @s { SelectedItemSlot: 0 } if score @s emmer matches 1.. at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers[{ AttributeName: "generic.attack_damage" }].Amount int 0.1 run scoreboard players get @s result-att_dmg
# speed #
execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers[{ AttributeName: "generic.movement_speed" }].Amount float 0.005 run scoreboard players get @s movement-speed
# armor #
execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers[{ AttributeName: "generic.armor" }].Amount int 1 run scoreboard players get @s armor-P
# armor T #
execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result block ~ 27 ~ Items[{ Slot: 3b }].tag.AttributeModifiers[{ AttributeName: "generic.armor_toughness" }].Amount int 1 run scoreboard players get @s armor-T