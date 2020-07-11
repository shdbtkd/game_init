
scoreboard players remove @s active_wait-max 1
scoreboard players operation @s active_wait-tick += @s active_wait-save


scoreboard players set generic_max_cooldown active_wait-max 238000
execute at @e[tag=modify-head] as @s[scores={stage=1..}] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result block ~ 29 ~ Items[{ Slot: 0b, tag:{ activeitem: 1b } }].tag.Damage int 0.001 run scoreboard players operation generic_max_cooldown active_wait-max -= @s active_wait-tick
# execute at @e[tag=modify-head] as @s[scores={stage=1..}] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result block ~ 29 ~ Items[{ Slot: 0b, tag:{ activeitem: 1b } }].tag.Damage int 0.001 run scoreboard players get @s active_wait-tick

execute if score @s active_wait-max matches ..0 at @e[tag=modify-head] as @s[scores={stage=1..}] if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index run data modify block ~ 29 ~ Items[{ Slot: 0b, tag:{ activeitem: 1b } }].tag.Damage set value 0

function comm:game-start/skill/active_item/generic/cooldown/loot
