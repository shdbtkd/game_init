# --------------------------------------- #
#   execute this command at every ticks
# --------------------------------------- #

execute at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result score @s item_container_0 if data block ~ 12 ~ Items[{ tag: { item: 1b } }]
execute if score @s item_container_0 matches 16.. at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result score @s item_container_0 if data block ~ 9 ~ Items[{ tag: { item: 1b } }]
execute if score @s item_container_1 matches 16.. at @e[tag=modify-head] as @a if score @e[distance=..0,limit=1,sort=nearest] class-index = @s class-index store result score @s item_container_0 if data block ~ 6 ~ Items[{ tag: { item: 1b } }]